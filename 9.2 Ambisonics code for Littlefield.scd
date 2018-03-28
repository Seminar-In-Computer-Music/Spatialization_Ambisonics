// The code below is adapted for use with the RME audio interface's ADAT (lightpipe) digital outputs.  Use it as a template for adapting your own ambisonic code to play through the Littlefield sound system.

//  First, connect your computer to the RME with a Fireware or USB cable so that you can play 8 channels of digital audio directly to the Yamaha digital mixer.  In SuperCollider these 8 channels are located from 14 thru 22.   So, instead of starting playback at Bus 0, you will start at 14.  Your Server sample-rate must be set to 48k (the Yamaha is the clock master and runs only at this rate.)

// Change the number of output audio Buses and its sampleRate using ServerOptions before booting the Server
(
s.options.numOutputBusChannels_(22);  // channels 14-22 connect thru ADAT output to the Yamaha mixer
s.options.sampleRate_(48000);
)
(
///  next, boot and compile the test SynthDef
s = Server.local.boot;

s.doWhenBooted({
	SynthDef( \nicepoc, { |out=0,freq=440,amp=0.1,dur=0.3|
		Out.ar( out, SinOsc.ar( freq, mul: amp )*EnvGen.kr( Env.perc(0.05,1), timeScale: dur, doneAction:2 ) )
	}).add;
});

)

// mono, 1 channel:
(
Pdef(\multiMono,Pbind(
	 \instrument, \nicepoc,
	\degree, Pseq([0, [3,4], 5, 6, [7,7.5]],inf),
	\dur, Pdefn(\myDur,0.4),
	\out,Pdefn(\myOut,14)
))
)
Pdef(\multiMono).play
Pdef(\multiMono).stop
Pdefn(\myOut,(8.rand+14).postln)  // change output channels
Pdefn(\myDur,0.1)

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
			//	{[14,15]},14 )
				{[rrand(14,15),rrand(20,21)].postln},14 )   //
		}),
		\instrument, \nicepoc
))
)

Pdef(\multiStereo).play
Pdef(\multiStereo).stop
Pdef(\multiStereo).set(\tempo,4)

(
Pdef(\multiQuad,
	Pbind(
		 \degree, Pseq([0, 3, 5, 6, 7],inf),
		\dur, Pdefn(\myDur,0.4),
		 \out,Pdef(\myOut,Pseq([14,15,20,21],inf)),
     \instrument, \nicepoc
))
)
Pdef(\multiQuad).play
Pdef(\multiQuad).stop
Pdef(\multiQuad).set(\tempo,2)

// Panning -- moving sound smoothly between two or more speakers

// the perceived loudness of a sound played on a single speaker is greater than the perceived loudness of the same sound played at half the original amplitude on two speakers simultaneously (linear panning)

// LinPan2 -- (in, pos: 0, level: 1)
play({ Out.ar(14,LinPan2.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1))) });

//  A signal's apparent power is proportional to the signal squared, which explains why panning is usually done with constant power rather than linear amplitude -- the fade-in resembles the first quarter period of a sine function and the fade out resembles the first quarter period of a cosine function

// Pan2 -- equal apparent power (in, pos: 0, level: 1)
play({ Out.ar(14,Pan2.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1)) )});

// Balance2 *ar (left, right, pos: 0, level: 1)
// fade left sig with negative 'pos', fade right sig with positive 'pos'
{Out.ar(14,Balance2.ar(LFSaw.ar(44),Pulse.ar(33),MouseX.kr(-1,1), 0.1) )}.play;

( // equal power rotation of a two signals (x and y)  via lfo or MouseX
{ // Rotate2.ar (x, y, pos: 0)   pos = angle to rotate around the circle from -1 to +1
    var x, y;
    x = WhiteNoise.ar(0.05);
    y = LFTri.ar(800) * LFPulse.kr(3,0,0.3,0.1);
	// #x, y = Rotate2.ar(x, y, LFSaw.kr(MouseX.kr(0.01,10,1)));
    #x, y = Rotate2.ar(x, y, MouseX.kr(0,2));
	Out.ar(14,[x,y])
}.play;
)

// Pan4 *ar (in, xpos: 0, ypos: 0, level: 1)
// Pan4 is a quadraphonic  panner which pans between left-right (xpos argument)  and front-back (ypos argument) -- Use this to place a sound in a rectangular listening space with the same stereo image from the back as in the front -- front-back control sets desired balance of power of front to back

play({ Out.ar(14,Pan4.ar(PinkNoise.ar(0.4), FSinOsc.kr(0.1), MouseY.kr(1,-1))) });

/*
Azimuth Panning - PanAz enables panning around the perimeter of any number of speakers and control over the width of the panning envelope --

PanAz.ar (numChans, in, pos: 0, level: 1, width: 2, orientation: 0.5)
width = The width of the panning envelope. Nominally this is 2.0 which pans between pairs of adjacent speakers. Values greater than two will spread the pan over greater numbers of speakers. Width values less than one will leave silent gaps between speakers.
*/

(  // PanAz  assumes equal angles of the speakers
Ndef(\panAz_test,
	{|dir=1,width=2,orientation=0.5|
		var p = PinkNoise.ar; // source
		PanAz.ar(4,p, LFSaw.kr(MouseX.kr(0.1,10,1)*dir),0.1,width,orientation);
});
)
Ndef(\panAz_test).play(14)  // the first argument of 'play' sets the starting output Bus number of playback
Ndef(\panAz_test).set(\dir,-1)
Ndef(\panAz_test).set(\width,2)
Ndef(\panAz_test).stop   // stop monitoring
Ndef(\panAz_test).isPlaying  // still playing, but not monitored
Ndef(\panAz_test).end    // stop playing and release synth
Ndef(\panAz_test).isPlaying // now it's not playing
Ndef.clear // clear all Ndefs

// with 6 channels
(  // PanAz  assumes equal angles of the speakers
Ndef(\panAz_test,
	{|dir=1,width=2,orientation=0.5|
		var p = PinkNoise.ar; // source
		PanAz.ar(6,p, LFSaw.kr(MouseX.kr(0.1,10,1)*dir),0.1,width,orientation);
});
)
Ndef(\panAz_test).play(14)

// ambisonic encode data for litttlefield sound system (3 not used)
azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39] // angles
elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524] // elev
maxDist = 25;
rhoArray = [1,1,0,0,0.56,0.5,0.8,0.8] // rho (distance)
(
Ndef(\littlefield,{|spd=0.2,maxDist=25|
    var src, w, x, y, z;
	var azArray,elArray,rhoArray; // array gives speaker azimuth and elevation positions in angles, size of Array must equal number of speakers
	var elev=MouseY.kr(-0.25,0.25);
	var rho=MouseX.kr(0,1);
	azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39];
	elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524];
	rhoArray = [1,1,0,0,0.56,0.5,0.8,0.8];
    src = PinkNoise.ar(1) * LFSaw.kr(8, pi, -0.2, 0.2); // source
	// encode sig into ambisonic channels
	#w, x, y, z = BFEncode1.ar(src,
		LFSaw.kr(spd,Rand(0,2))*pi,elev*pi);
	//decode ambisonics into speaker channels
	// BFDecode1.ar1(w, x, y, z, azimuth, elevation, maxDist, distance)
    BFDecode1.ar1(w, x, y, z,
		azArray, elArray,maxDist,rhoArray)
});
)
Ndef(\littlefield).play(14);
Ndef(\littlefield).set(\spd,0.8);
Ndef(\littlefield).end;

