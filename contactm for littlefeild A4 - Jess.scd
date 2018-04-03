(
(
s.options.numOutputBusChannels_(22);  // channels 14-22 connect thru ADAT output to the Yamaha mixer
s.options.sampleRate_(48000);  // set to clockRate of Yamaha mixer
)
(
//////////////////////////SYNTHS

	SynthDef("playbuf1",   //plays the recording of the synth bus with the below Pbind and also sends some of its signal back into the effects
	{ arg
		buffer=0,
		rate=1,
		trigger=1,
		startPos=0,
		gate = 1,
		loop=1,
		envlen =1,
		pan = 0,
		amp = 1,
		lpf = 6600,
		out =1,
		effBus,
		eff1Amp = 0,eff2Amp = 0,eff3Amp = 0,eff4Amp = 0,
		fftBus,
		fft1Amp = 0,fft2Amp = 0,fft3Amp = 0,fft4Amp = 0;
		var sound =
		HPF.ar(LPF.ar(Pan2.ar(
		PlayBuf.ar(1,buffer, BufRateScale.kr(buffer)*rate, trigger,
         BufFrames.ir(buffer)*startPos, loop),0.0, amp*(EnvGen.ar(Env([0, 1, 0], [0.5, 0.5]), gate, 1, 0, envlen, 2))), lpf, 1), 0050, 1);
		Out.ar(effBus, [sound*eff1Amp, sound*eff2Amp, sound*eff3Amp, sound*eff4Amp]);
		Out.ar(fftBus, [sound*fft1Amp, sound*fft2Amp, sound*fft3Amp, sound*fft4Amp]);
		Out.ar(31, Limiter.ar(sound*amp));
		Out.ar(out, Limiter.ar(sound*amp));
		}).store;


	SynthDef("playbufpitch",   //plays the recording of the synth bus with the below Pbind and also sends some of its signal back into the effects
	{ arg
		buffer=0,
		rate=1,
		trigger=1,
		startPos=0,
		gate = 1,
		loop=1,
		envlen =1,
		pan = 0,
		amp = 1,
		lpf = 6600,
		out = 1,
		effBus,
		eff1Amp = 0,eff2Amp = 0,eff3Amp = 0,eff4Amp = 0,
		fftBus,
		fft1Amp = 0,fft2Amp = 0,fft3Amp = 0,fft4Amp = 0;
		var sound, freq, hasFreq, pitcharray,
		soundforpitch =  LeakDC.ar(Pan2.ar(
		PlayBuf.ar(1,buffer, BufRateScale.kr(buffer)*rate, trigger,
				BufFrames.ir(buffer)*startPos, loop),0.0, amp*(EnvGen.ar(Env([0, 1, 0], [0.05, 1.5]), 1, 1, 0, 1, 2))));
		# freq, hasFreq = Pitch.kr(soundforpitch, 0, 60, 900, 100);
		freq.poll;
		//sound = LPF.ar(Saw.ar(freq/1)*SinOsc.ar(freq, 0, amp*(EnvGen.ar(Env([0, 1, 0], [0.1, 0.6]), gate, 1, 0, envlen, 2))), lpf);
		sound = LPF.ar(SinOsc.ar(freq, 0, amp*(EnvGen.ar(Env([0, 1, 0], [0.1, 0.6]), 1, 1, 0, envlen, 2))), lpf);

		Out.ar(effBus, [sound*eff1Amp, sound*eff2Amp, sound*eff3Amp, sound*eff4Amp]);
		Out.ar(fftBus, [sound*fft1Amp, sound*fft2Amp, sound*fft3Amp, sound*fft4Amp]);
		Out.ar(31, Limiter.ar(sound*amp));
		Out.ar(out, Limiter.ar(sound*amp));
		}).store;


	SynthDef("playbuf2",   //plays the recording of the synth bus with the below Pbind and also sending siglad ONLY to effects has to be received by somthing to be heard
	{ arg
		buffer,
		rate=1,
		trigger=1,
		startPos=0,
		loop=1,
		envlen =1,
		pan = 0,
		amp = 1,
		lpf = 6600,
		effBus,
		eff1Amp = 0,eff2Amp = 0,eff3Amp = 0,eff4Amp = 0,
		fftBus,
		fft1Amp = 0,fft2Amp = 0,fft3Amp = 0,fft4Amp = 0;
		var sound =
		HPF.ar(LPF.ar(Pan2.ar(
				PlayBuf.ar(1,buffer, BufRateScale.kr(buffer)*rate,trigger,
					BufFrames.ir(buffer)*startPos, loop),0.0, amp*(EnvGen.ar(Env([0, 1, 0], [0.5, 0.5]), 1, 1, 0, envlen, 2))), lpf, 1), 0050, 1);
		Out.ar(effBus, [sound*eff1Amp, sound*eff2Amp, sound*eff3Amp, sound*eff4Amp]);
		Out.ar(fftBus, [sound*fft1Amp, sound*fft2Amp, sound*fft3Amp, sound*fft4Amp]);
		}).store;

/////////////////////////ORDERING

~effGroup = Group.tail(1);
~effBus = (r1: Bus.audio(s,1), fre2: Bus.audio(s,1), ps3: Bus.audio(s,1));

~fftGroup = Group.tail(1);
~fftBus = (fft1: Bus.audio(s,1), fft2: Bus.audio(s,1), fft3: Bus.audio(s,1), fft4: Bus.audio(s,1));
/////////////////////////FXXX


SynthDef(\freeze, {arg      // cant get this to work with out being VERY LOUD
		inBus=16, fftBus=20,effBus=21,
	amp= 1,
	fre;
    var in, chain;
    in = In.ar(1);
	chain = FFT(LocalBuf(2048), SinOsc.kr(10));
    chain = PV_MagFreeze(chain, fre);
	Out.ar(fftBus, 10*IFFT(chain));
}).store;

Synth("freeze", [\fftbus,~fftBus[\fft4].index]).run;




SynthDef(\mafsLittlefield,{|pan=0,elev=0, rho=1,amp=1,threshold= 2,
		fftbus = 17,
		wipe = 0,
		width = 0.2|
    var signal, chain, w, x, y, z;
	var azArray,elArray,rhoArray,maxDist=25;
	azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39]; // angles
	elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524]; // elev
	rhoArray = [1,1,0,0.2,0.56,0.5,0.8,0.8]; // rho (distance)
			chain = FFT(LocalBuf(2048), In.ar(fftbus), 0.5);
		chain = PV_MagSmooth(chain, SinOsc.ar(0.452, 0, 0.5, 0.5));
	IFFT(chain);
	signal = amp*LeakDC.ar(Limiter.ar(IFFT(chain), 0.16));
	#w, x, y, z = BFEncode1.ar(signal,pan,elev,rho);
	Out.ar(0+14,BFDecode1.ar1(w, x, y,z,
		azArray,elArray,maxDist,rhoArray*maxDist))
}).add;






/////////////////////////Buffers

k = Buffer.alloc(s,s.sampleRate*1.0,1);
p = Buffer.alloc(s,s.sampleRate*1.0,1);
b = Buffer.read(s, "/Users/jesstambellini/Desktop/sounds/ADVORCHT19.wav");

SynthDef(\recSoundIn, {RecordBuf.ar(LeakDC.ar(SoundIn.ar(0)), k,loop: 2)}).add;  //needs to be added after
SynthDef(\recSoundInb, {RecordBuf.ar(In.ar(31), p,loop: 2)}).add; //needs to be added after

~synths = Synth(\mafsLittlefield,     //needs to be added after
	[\fftbus,~fftBus[\fft1].index,
		\pan, -0.78,
		\elev, 0.088,
		\rho,1]);

Synth.tail(~effGroup, \recSoundIn);
Synth.tail(~effGroup, \recSoundInb);


 )
/////////////////////////Midi stuff
k.plot

p.plot


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




///////////////////////////////testing  try controlling two parameters each maybe PITCH or RATE and AMP then have a saw sin and normal

//need to add out parts to all of these
(

q =Pbind(\instrument, \playbuf1,
	\amp, 1,
			\rate, Pfunc({LinLin.kr(14, 0, 127, 0.002, 3.5)}),
				\lpf, Pfunc({LinLin.kr(23, 0, 127, 0, 6000)}),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, Pfunc({LinLin.kr(127, 0, 127, 0.0, 10.2)}),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.1, 0.27, inf),
	\out, Prand([14, 15, 17, 18, 19, 20, 21, 22], inf),
		//\out, Pwhite(15, 22, inf),
		\envlen, Pfunc({LinLin.kr(24, 0, 127, 0.02, 2)}));

w = Pbind(\instrument, \playbuf1,
	\amp, 1,
			\rate, Pfunc({LinLin.kr(14, 0, 127, 0.002, 3.5)}),
				\lpf, Pfunc({LinLin.kr(23, 0, 127, 0, 6000)}),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, Pfunc({LinLin.kr(127, 0, 127, 0.0, 10.2)}),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.1, 0.27, inf),
	\out, Pseq([14, 15, 17, 18, 19, 20, 21, 22], inf),
	//\out, Pwhite(15, 22, inf),
		\envlen, Pfunc({LinLin.kr(24, 0, 127, 0.02, 2)}));

e = Pbind(\instrument, \playbufpitch,
	\amp, 1,
			\rate, LinLin.kr(23, 0, 127, 0.002, 3.5),
				\lpf, LinLin.kr(23, 0, 127, 0, 6000),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, LinLin.kr(42, 0, 127, 0.0, 10.2),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.20.rand, 1.1.rand, inf),
	\out, Prand([14, 15, 17, 18, 19, 20, 21, 22], inf),
		//\out, Pwhite(15, 22, inf),
		\envlen, LinLin.kr(100, 0, 127, 0.02, 3));

r = Pbind(\instrument, \playbufpitch,
	\amp, 1,
			\rate, LinLin.kr(23, 0, 127, 0.002, 3.5),
				\lpf, LinLin.kr(23, 0, 127, 0, 6000),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, LinLin.kr(42, 0, 127, 0.0, 10.2),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.20.rand, 1.1.rand, inf),
	\out, Pwhite([14, 15, 17, 18, 19, 20, 21, 22], inf),
		//\out, Pwhite(15, 22, inf),
		\envlen, LinLin.kr(100, 0, 127, 0.02, 3));

///////////////////////////////

t = Pbind(\instrument, \playbufpitch,
	\amp, 1,
			\rate, Pfunc({LinLin.kr(23, 0, 127, 0.002, 3.5)}),
				\lpf, Pfunc({LinLin.kr(23, 0, 127, 0, 6000)}),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, Pfunc({LinLin.kr(42, 0, 127, 0.0, 10.2)}),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.20.rand, 1.1.rand, inf),
	\out, Pwhite([14, 15, 17, 18, 19, 20, 21, 22], inf),
		\envlen, LinLin.kr(100, 0, 127, 0.02, 2));

y = Pbind(\instrument, \playbufpitch,
	\amp, 1,
			\rate, LinLin.kr(23, 0, 127, 0.002, 3.5),
				\lpf, LinLin.kr(23, 0, 127, 0, 6000),
		\gate, 1,
	\buffer, k,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, LinLin.kr(42, 0, 127, 0.0, 10.2),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.20.rand, 1.1.rand, inf),
		\out, Pwhite([22, 21, 20, 19, 18, 17, 15, 14], inf),
		\envlen, LinLin.kr(100, 0, 127, 0.02, 3));

u  = Pbind(\instrument, \playbuf1,
	\amp, 1,
			\rate, Pfunc({LinLin.kr(04, 0, 127, 0.002, 3.5)}),
				\lpf, Pfunc({LinLin.kr(23, 0, 127, 0, 6000)}),
		\gate, 1,
	\buffer, p,
\fftBus, ~fftBus[\fft1].index,
		\fft1Amp, Pfunc({LinLin.kr(12, 0, 127, 0.0, 10.2)}),                        //mafs
	\startPos, Pseq([LinLin.kr(Pfunc({23}), 0, 127, 0.0, 1.0)*44100, LinLin.kr(76, 0, 127, 0.0, 1.0)*44100]),
	\dur, Pwhite(0.1, 0.7, inf),
		\out, Pwhite(15, 22, inf),
		\envlen, Pfunc({LinLin.kr(54, 0, 127, 0.02, 2)}));

)


q.play
q.stop

w.play
w.stop

e.play
e.stop

r.play
r.stop

t.play
t.stop

y.play
y.stop

u.play
u.stop

