

/* This is a template that should work to provide you with GUI controls over azimuth, elevation, and distance positioning of multiple synths in the Littlefield audio system.  My example uses simultaneous playback of 5 mono soundfiles using 5 different DiskIn synths -- you can substitute your own synths of any type for these -- let me know if you have trouble figuring out how to do that!

Here is ambisonic decode data for litttlefield sound system (3 not used)
azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39] // angles
elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524] // elev
rhoArray = [1,1,0,0,0.56,0.5,0.8,0.8] // rho (distance)
maxDist = 25;
*/

// First, set the number of output audio Buses and server sampleRate using ServerOptions before booting the Server
(
s.options.numOutputBusChannels_(22);  // channels 14-22 connect thru ADAT output to the Yamaha mixer
s.options.sampleRate_(48000);  // set to clockRate of Yamaha mixer
)
(
///  next, boot server, then load any soundfiles required
s = Server.local.boot;

s.doWhenBooted({
	// cuing soundfiles in Buffers
	~files =
	["/Users/cbmus/Music/cbMusic/vav+5chan/vav080521_111132_1.aiff",
		"/Users/cbmus/Music/cbMusic/vav+5chan/vav080521_111132_2.aiff",
		"/Users/cbmus/Music/cbMusic/vav+5chan/vav080521_111132_5.aiff",
		"/Users/cbmus/Music/cbMusic/vav+5chan/vav080521_111132_3.aiff",
		"/Users/cbmus/Music/cbMusic/vav+5chan/vav080521_111132_4.aiff"
	];
	~bufs = ~files.collect {|chan| Buffer.cueSoundFile(s,chan,0,1,262144) };
});
)
// create a SynthDef like this for every different kind of Synth you want to use.  Here I'm just using 5 Synths of the same type -- use the same first four arguments as the SynthDef below which allow you to set spatial position and amplitude --  'buf'  is specific to sample playback of this SynthDef -- you probably will add your own other arguments to change parameters of your own  SynthDef

(
SynthDef(\ambi_DiskIn_Littlefield,{|pan=0,elev=0, rho=1,amp=0.5,buf|
    var signal, w, x, y, z;  // your SynthDef should use all of these variables
	var azArray,elArray,rhoArray,maxDist=25; // arrays provide speaker azimuth, elevation, and distance data for Littlefield Hall-- the size of the Array must equal the number of speakers, and be in the order they are addressed from the computer
	azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39]; // angles
	elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524]; // elev
	rhoArray = [1,1,0,0.2,0.56,0.5,0.8,0.8]; // rho (distance)
	signal = 	DiskIn.ar(1,buf,1)*amp;  // put your synth function here
	// next, encode signal  into ambisonic channels w, x, y, and z, setting its virtual location using 'pan', 'elev', and 'rho' (distance)
	#w, x, y, z = BFEncode1.ar(signal,pan,elev,rho);
	//finally, decode the ambisonic sginals to the speaker channels
	Out.ar(0+14,BFDecode1.ar1(w, x, y,z,
		azArray,elArray,maxDist,rhoArray*maxDist))
}).add;
)
// Start your synths, and collect references to them in ~synths -- your code will be different based on the SynthDefs you use, and the setting of 'pan', 'elev', and 'rho' coordinates can be single numbers that are your default starting settings
(
~synths = ~bufs.collect  {|b,i| Synth(\ambi_DiskIn_Littlefield,
	[\buf,b,
// these coordinates give virtual location in the space
		\pan,[-0.78,0.78,0,-2.34,2.34].at(i),
		\elev,[0.088,0.088,1.22,0.524,0.524].at(i),
		\rho,1])}
)

//  GUI controls set coordinates and recall their settings based on which 'curSynth'  is chosen -- if you want to save the settings, when you close the window they will be stored in ~ambiDataSets
(
var azSlider, elevSlider, distSlider, ampSlider;
var ambiDataSets,curSynth,curSynthName,f;
// define ControlSpecs that scale values of sliders to appropriate ranges
var azSpec = ControlSpec(pi.neg,pi, 'linear', 0, 0);
var elevSpec = ControlSpec(0,pi, 'lin', 0, 0);
var distSpec = ControlSpec(0,2, 'lin', 0, 1);

ambiDataSets=Array.fill(~synths.size,{Array.with(azSpec.default,elevSpec.default,distSpec.default,0.25)});

f = FlowView.new(windowTitle: "LittleField AmbiCtrls");
f.onClose_({ ~synths.do {|syn| syn.free;
	~ambiDataSets = ambiDataSets.copy }
});

curSynthName = EZNumber(f,200@25,"curSynth is ",[1,~synths.size,1,1].asSpec,initVal: 1,labelWidth:120);
f.startRow;
~synths.do {|syn,i|  Button(f,60@40)
	.states_([["synth"++(i+1).asString,Color.white,Color.black]])
	.action_({ curSynth=syn; curSynthName.value_(i+1);
		azSlider.valueAction_(ambiDataSets[i] [0]);
		elevSlider.valueAction_(ambiDataSets[i] [1]);
		distSlider.valueAction_(ambiDataSets[i] [2]);
		ampSlider.valueAction_(ambiDataSets[i] [3])
	})
.value_(0)};

f.startRow;
azSlider=EZSlider(f,300@25,"azimuth",azSpec,{arg sl;
	curSynth.set(\pan, sl.value);
	ambiDataSets[curSynthName.value-1].put(0,sl.value);
	ambiDataSets.postln
},0);
f.startRow;
elevSlider= EZSlider(f,300@25,"elevation",elevSpec,{arg sl;
	curSynth.set(\elev, sl.value;
	ambiDataSets[curSynthName.value-1].put(1,sl.value);
		ambiDataSets.postln
) },0);
f.startRow;
distSlider= EZSlider(f,300@25,"distance",distSpec,{arg sl;
	curSynth.set(\rho, sl.value);
	ambiDataSets[curSynthName.value-1].put(2,sl.value);
	ambiDataSets.postln
},0);
ampSlider= EZSlider(f,300@25,"amplitude",\amp.asSpec, {arg sl;
	curSynth.set(\amp, sl.value);
	ambiDataSets[curSynthName.value-1].put(3,sl.value);
	ambiDataSets.postln
},0);
)