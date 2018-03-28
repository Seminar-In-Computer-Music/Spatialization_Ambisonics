
/*
Spatialization -

SuperCollider defaults to having its first 8 audio Bus channels available
to be automatically used as sound outputs, but this depends of course on having hardware that supports multiple channel outputs.  (You can change the number of output audio Buses using ServerOptions.) But it also means that you can use any kind of algorithmic controls to place any sound on any channel simply by routing it via Out.ar(n,signal), where n is an integer from 0-7.
*/
(
s.options.numOutputBusChannels_(8);  // run this first just in case the default has been changed
)
(
/// basic setup
s = Server.local.boot;

s.doWhenBooted({
	SynthDef( \nicepoc, { |out=0,freq=440,amp=0.1,dur=0.3|
		Out.ar( out, SinOsc.ar( freq, mul: amp )*EnvGen.kr( Env.perc(0.05,1), timeScale: dur, doneAction:2 ) )
	}).add;
});
)

// mono, 1 channel:
// hybrid connects 0-1 (frL-R), 2-3 (ctr-sub), 4-5 (rearL-R)
/* Channel order
The order of channels in a 5.1 file is different across file formats. The order in WAV files is (not complete) Front Left, Front Right, Center, Low-frequency effects, Surround Left, Surround Right */

(
Pdef(\multiMono,Pbind(
	 \instrument, \nicepoc,
//	\degree, Pseq([0, [3,4], 5, 6, [7,7.5]],inf),
	\degree,Pfunc({ 12.rand }),
	\octave,3,
	\dur, Pdefn(\myDur,0.4),
	\out,Pdefn(\myOut,[2,3])
))
)
Pdef(\multiMono).play
Pdefn(\myOut,4.rand.postln)  // change output channels
Pdefn(\myDur,0.1)
Pdef(\multiMono).stop

// multiple mono:
// if the next event is a two note chord,  the second note is played on a different chan
//a prototype for channel switching within a Pbind
(
Pdef(\multiStereo,
	Pbind(
		\degree, Pxrand([0, [3,4], 5, [6,6.1], 2,[7,8]],inf),
		\dur, Pdefn(\myDur,0.4),
		\out,Pfunc({|ev|
			if( ev[\degree].size>1,
				{[0,1]},0 )
			//	{[rrand(0,1),rrand(2,3)].postln},0 )   //
		}),
		\instrument, \nicepoc
))
)
Pdef(\multiStereo).play
Pdef(\multiStereo).set(\tempo,2)
Pdef(\multiStereo).stop

(
Pdef(\multiQuad,
	Pbind(
		 \degree, Pseq([0, 3, 5, 6, 7],inf),
		// \degree, Pxrand([0, 3, 5, 6, 7],inf),
		\dur, Pdefn(\myDur,0.4),
		 \out,Pdef(\myOut,Pseq([0,1,2,3],inf)),
		// \out,Pdef(\myOut,Pxrand([0,1,2,3],inf)),
     \instrument, \nicepoc
))
)
Pdef(\multiQuad).play
Pdef(\multiQuad).stop
Pdef(\multiQuad).set(\tempo,2)

// Use Envelopes to control mono signals in multichannel array
(
Ndef(\multiEnvQuad,{|t1=1,t2=1.2,t3=1.5,t4=2|
	var env = Env.circle([0,1,0],[1,1],[2,-2]);
	var envgen = EnvGen.kr(env,timeScale:[t1,t2,t3,t4])*0.1;
	LFPar.ar([110,220,330,440],0,envgen)
})
)
Ndef(\multiEnvQuad).play
Ndef(\multiEnvQuad).set(\t1,0.1);
Ndef(\multiEnvQuad).set(\t2,0.11);
Ndef(\multiEnvQuad).set(\t3,0.12);
Ndef(\multiEnvQuad).set(\t4,0.13);
Ndef(\multiEnvQuad).stop
Ndef(\multiEnvQuad).end
Ndef.clear

// Panning -- moving sound smoothly between two or more speakers

// the perceived loudness of a sound played on a single speaker is greater than the perceived loudness of the same sound played at half the original amplitude on two speakers simultaneously (linear panning)

// LinPan2 -- (in, pos: 0, level: 1)
play({ LinPan2.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1)) });

//  A signal's apparent power is proportional to the signal squared, which explains why panning is usually done with constant power rather than linear amplitude -- the fade-in resembles the first quarter period of a sine function and the fade out resembles the first quarter period of a cosine function

// Pan2 -- equal apparent power (in, pos: 0, level: 1)
play({ Pan2.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1)) });

// Balance2 *ar (left, right, pos: 0, level: 1)
// fade left sig with negative 'pos', fade right sig with positive 'pos'
{Balance2.ar(LFSaw.ar(44),Pulse.ar(33),MouseX.kr(-1,1), 0.1) }.play;

( // equal power rotation of a two signals (x and y)  via lfo or MouseX
{ // Rotate2.ar (x, y, pos: 0)   pos = angle to rotate around the circle from -1 to +1
    var x, y;
    x = WhiteNoise.ar(0.05);
    y = LFTri.ar(800) * LFPulse.kr(3,0,0.3,0.1);
	Rotate2.ar(x, y, LFSaw.kr(MouseX.kr(0.01,10,1)));
   // Rotate2.ar(x, y, MouseX.kr(0,2));
}.play;
)

// Pan4 *ar (in, xpos: 0, ypos: 0, level: 1)
// Pan4 is a quadraphonic  panner which pans between left-right (xpos argument)  and front-back (ypos argument) -- Use this to place a sound in a rectangular listening space with the same stereo image from the back as in the front -- front-back control sets desired balance of power of front to back

play({ Pan4.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1), MouseY.kr(1,-1)) });

/*
Azimuth Panning - PanAz enables panning around the perimeter of any number of speakers and control over the width of the panning envelope --

PanAz.ar (numChans, in, pos: 0, level: 1, width: 2, orientation: 0.5)
width = The width of the panning envelope. Nominally this is 2.0 which pans between pairs of adjacent speakers. Values greater than two will spread the pan over greater numbers of speakers. Width values less than one will leave silent gaps between speakers.
*/

(  // PanAz  assumes equal angles of the speakers
Ndef(\panAz_test,
	{|dir=1,width=2,orientation=0.5|
		var a,b,c,d;
    var p = PinkNoise.ar; // source
	#a,b,c,d = PanAz.ar(4,p, LFSaw.kr(MouseX.kr(0.1,10,1)*dir),0.1,width,orientation);
	[a,b,d,c]  // reverse rear channels because "normal" config of rear speakers are in parallel with fronts (and so not set up for circular panning!)
});
)
Ndef(\panAz_test).play
Ndef(\panAz_test).set(\dir,-1)   // reverse direction
Ndef(\panAz_test).set(\width,1)
Ndef(\panAz_test).stop   // stop monitoring
Ndef(\panAz_test).isPlaying  // still playing, but not monitored
Ndef(\panAz_test).end    // stop playing and release synth
Ndef(\panAz_test).isPlaying // now it's not playing
Ndef.clear // clear all Ndefs

// Ambisonic B-format

//In first-order Ambisonics, sound information is encoded into four channels: W, X, Y and Z. This is called Ambisonic B-format. The W channel is the non-directional mono component of the signal, corresponding to the output of an omnidirectional microphone. The X, Y and Z channels are the directional components in three dimensions. They correspond to the outputs of three figure-of-eight microphones, facing forward, to the left, and upward respectively.

/*
PanB2  encodes a mono signal to 2D ambisonic B-format
PanB2 (in, azimuth: 0, gain: 1)
azimuth	= Position around the circle from -1 to +1. -1 is behind, -0.5 is left, 0 is forward, +0.5 is right, +1 is behind.
*/
(  // PanB  assumes equal angles and distances of the speakers
Ndef(\panB2_test,{
    var w, x, y, p, a, b, c, d;
    p = PinkNoise.ar; // source
    // B-format encode
   // #w, x, y = PanB2.ar(p, MouseX.kr(-1,1), 0.1);
	#w, x, y = PanB2.ar(p, LFSaw.kr(MouseX.kr(0.1,10,1),1), 0.1);
    // B-format decode to quad
    #a, b, c, d = DecodeB2.ar(4, w, x, y);  // decode stereo B-format signal to 4 channels
	[a, b,d, c] // reorder to my speaker arrangement: Lf Rf Lr Rr
});
)
Ndef(\panB2_test).play
Ndef(\panB2_test).stop
Ndef(\panB2_test).end
Ndef.clear

/* Rotate2 -- rotating an ambisonic B-format sound field around an axis
*ar (x, y, pos: 0).   x and y are the 2 dimensions of ambisonic signal
pos = angle to rotate around the circle from -1 to +1. -1 is 180 degrees
*/

(
Ndef(\rotate,{
    var w, x, y, p, q, a, b, c, d;
    p = WhiteNoise.ar(0.05); // source
    q = LFSaw.ar(200,0,0.03)+LFSaw.ar(200.37,0,0.03)+LFSaw.ar(201,0,0.03);
    // B-format encode 2 signals at opposite sides of the circle
    #w, x, y = PanB2.ar(p, -0.5) + PanB2.ar(q, 0.5);
//    #x, y = Rotate2.ar(x, y, MouseX.kr(-1,1));
	#x, y = Rotate2.ar(x, y, LFSaw.kr(0.2,pi));
    // B-format decode to quad
    #a, b, c, d = DecodeB2.ar(4, w, x, y);
    [a, b, d, c] // reorder to my speaker arrangement: Lf Rf Lr Rr
});
)
Ndef(\rotate).play
Ndef(\rotate).stop
Ndef(\rotate).end

(  // and  a variation, with position of sources phasing
Ndef(\rotate,{ arg spd=1;
    var w, x, y, p, q, a, b, c, d,env;
	env=Lag.ar(Pulse.ar(spd,0.5),spd.reciprocal*0.25);
    p = WhiteNoise.ar(0.05); // source
    q = LFSaw.ar(200,0,0.03)+LFSaw.ar(200.37,0,0.03)+LFSaw.ar(201,0,0.03);
    // B-format encode 2 signals at opposite sides of the circle
	#w, x, y = PanB2.ar(p*env, SinOsc.ar(spd/10)) + PanB2.ar(q*env, 0.5);
//    #x, y = Rotate2.ar(x, y, MouseX.kr(-1,1));
	#x, y = Rotate2.ar(x, y, LFSaw.kr(MouseX.kr(0.1,10,1),pi));
    // B-format decode to quad
    #a, b, c, d = DecodeB2.ar(4, w, x, y);
    [a, b, d, c] // reorder to my speaker arrangement: Lf Rf Lr Rr
});
)
Ndef(\rotate).play
Ndef(\rotate).set(\spd,4)
Ndef(\rotate).stop
Ndef(\rotate).end

/*
The BFEncode1 and BFDecode1 classes used below are Josh_UGens found in the downloadable sc3-plugins extensions.  Some have informative help-files that are only in the old html format, so you may need to open them manually in a browser rather than here.  Download, uncompress, and move the folder into your Extensions folder (you may need to create this if you haven't dont that yet) here:
"/Users/yourName/Library/Application Support/Supercollider/Extensions/"
Then recompile SuperCollider and you'll be able to run the code below.  BFEncode1 and BFDecode1 enable 3D ambisonic encoding and decoding that includes spatialization of elevation and distance, as well as azimuth.

BFEncode1.ar(in, azimuth, elevation, rho, wComp) -- Encodes virtual position of 'in' in three dimensions as a B-format signal in four channels, typically labeled as w, x, y, and z.

azimuth -  the angle in radians from 0pi at front and in the center of the listener. positive-pi specify positions right of center and negative-pi values specify left of center.  Can be an array of angles.
elevation - the angle in radians from 0pi center of the speaker, with positive angles above and negative angles below the listener level.  Can be an array of angles.
rho -  the speaker distance in relation to a radius from the center, where 1 is at the radius, <1 within the radius, >1 is outside the radius
wComp - chooses how the W channel is scaled. If 0, a scaler of 0.707 is used. If 1, W is varied according to the scaling of the X, Y and Z channels. 1 is the default.

BFDecode1.ar(w, x, y, z, azimuth: 0, elevation: 0, wComp: 0, mul: 1, add: 0)
decodes B-format w,x,y,z channels to any number of outputs corresponding to azimuth and elevation arrays. For example, here are azimuth and elevation arrays for an 8 channel cube:

azimuth =  [-0.25pi, 0.25pi, 0.75pi, 1.25pi,-0.25pi, 0.25pi, 0.75pi, 1.25pi]
elevation =  [0.25pi,0.25pi,0.25pi,0.25pi,-0.25pi,-0.25pi,-0.25pi,-0.25pi]

BFDecode1.ar1(w, x, y, z, azimuth: 0, elevation: 0, maxDist: 10, distance: 10, wComp: 0, mul: 1, add: 0, scaleflag: 1)
decodes for a speaker array with different distances of speakers; maxDist and distance are both in meters, and set delay sizes to correspond with the distances
*/

( // this one is for stereo or quad, with no elevation
Ndef(\ambiNoise, {|spd=0.2|
	var src, w, x, y, z, a, b, c, d;
	var azArray,elArray,rho; // array gives speaker azimuth and elevation positions in angles, size of Array must equal number of speakers
	var elev=0; //  0 if speakers are on same plane
	// azArray = [0.5pi,-0.5pi]; // azimuth for 2 XY channels
	azArray = [-0.25pi, 0.25pi, 0.75pi, 1.25pi]; // ex. azimuth for 4 channels
	// elArray = [0,0];  // elevation for two channels
	elArray = [0,0,0,0]*0.5pi;  // elev for 4 chans, vals should range from -0.25 to 0.25
	rho = MouseY.kr(0,2);
	src = PinkNoise.ar(0.5) * LFSaw.kr(8, pi, -0.2, 0.2); // source

	// encode sig into ambisonic channels
	// BFEncode1.ar(in, azimuth, elevation, rho, gain, wComp)
	#w,x,y,z = BFEncode1.ar(src,LFSaw.kr(spd,Rand(0,2))*pi,elev,rho);

	//decode ambisonics into speaker channels
	// BFDecode1.ar(w, x, y, z, azimuth, elevation, wComp)
	#a, b, c, d = BFDecode1.ar(w, x, y, z, azArray, elArray);
	[a,b,d,c]  // reorder the rear speakers
});
)
Ndef(\ambiNoise).play
Ndef(\ambiNoise).stop
Ndef(\ambiNoise).end
Ndef.clear


/* next version uses BFEncode2.ar which sets left-right and front-back azimuth positions using -1 to 1 values, instead of in radians

BFEncode2.ar(in, point_x, point_y, elevation, gain)

point_x - a point in the x axis, from -1 to 1 (left to right)
point_y - a point in the y axis, from -1 to 1 (back to front)
elevation -  in radians, -0.5pi to +0.5pi
gain - a control rate level input.

x, y positions-
	0 -1 behind
	0 1 in front
	-1 0 right
	1 0 left

BFDecode1.ar1(w, x, y, z, azimuth, elevation, maxDist, distance)
azimuth and elevation -- as before
maxDist - the distance (in meters) to the furthest speaker from center - (this allocates the delay size)
distance - the distance (in meters) to each speaker.

*/


// ambisonic encode data for litttlefield sound system (3 not used)
azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39] // angles
elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524] // elev
maxDist = 25;
rhoArray = [1,1,0,0,0.56,0.5,0.8,0.8] // rho (distance)
(
Ndef(\littlefield,{|spd=0.2,maxDist=25|
    var src, w, x, y, z;
	var azArray,elArray,rhoArray,distArray; // array gives speaker azimuth and elevation positions in angles, size of Array must equal number of speakers
	var elev=MouseY.kr(-0.25,0.25);
	var rho=MouseX.kr(0,1);
	azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39];
	elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524];
	distArray = [1,1,0,0,0.56,0.5,0.8,0.8];
    src = PinkNoise.ar(1) * LFSaw.kr(8, pi, -0.2, 0.2); // source
	// encode sig into ambisonic channels
	#w, x, y, z = BFEncode1.ar(src,
		LFSaw.kr(spd,Rand(0,2))*pi,elev*pi);
	//decode ambisonics into speaker channels
    BFDecode1.ar1(w, x, y, z,
		azArray, elArray,maxDist,distArray)
});
)
Ndef(\littlefield).play;
Ndef(\littlefield).set(\spd,0.4);
Ndef(\littlefield).end;

// ambisonic encode data for 5.1
azArray = [-0.166,0,0.166,-0.611,0.611]
elArray = 0;
rhoArray = 1;
(
Ndef(\ambi5_1,{|spd=0.2,maxDist=25|
    var src, w, x, y, z;
	var azArray,elArray,rhoArray; // array gives speaker azimuth and elevation positions in angles, size of Array must equal number of speakers
	var elev=MouseY.kr(-0.25,0.25);
	var rho=MouseX.kr(0,10);
	azArray = [-0.166,0,0.166,-0.611,0.611];
	elArray = 0;
	rhoArray = 1;
    src = PinkNoise.ar(1) * LFSaw.kr(8, pi, -0.2, 0.2); // source
	// encode sig into ambisonic channels
	#w, x, y, z = BFEncode1.ar(src,
		LFSaw.kr(spd,Rand(0,2))*pi,elev*pi,rho.poll);
	//decode ambisonics into speaker channels
    BFDecode1.ar(w, x, y, z,
		azArray, elArray)
})
)
Ndef(\ambi5_1).play;
Ndef(\ambi5_1).set(\spd,0.1)
Ndef(\ambi5_1).end;




