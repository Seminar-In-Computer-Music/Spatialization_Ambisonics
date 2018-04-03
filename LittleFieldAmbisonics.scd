/*
I want to modify the "scratchMe" SynthDef to work with the littlefield sound system synth. Not sure if I'm headed in the right direction.


*/


Buffer.read(s,Platform.resourceDir +/+ "sounds/a11wlk01.wav",action: {|buf| { buf }.defer });

(  //
SynthDef("scratchMe",{ arg buffer;
	Out.ar(0,
		Pan2.ar(BufRd.ar(1, buffer,
			K2A.ar(BufFrames.ir(buffer)  // this is the phase argument
				*MouseX.kr(0.0,1.0)).lag(MouseY.kr(0.0,1.0))),
		0.0)	// center pan
	)
}).add;
)




// ambisonic encode data for litttlefield sound system (3 not used)
azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39] // angles
elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524] // elev
maxDist = 25;
rhoArray = [1,1,0,0,0.56,0.5,0.8,0.8] // rho (distance)
(
SynthDef(\loui_littlefield,{|spd=0.2,maxDist=25,buffer|
    var src, w, x, y, z;
	var azArray,elArray,rhoArray,distArray; // array gives speaker azimuth and elevation positions in angles, size of Array must equal number of speakers
	var elev=MouseY.kr(-0.25,0.25);
	var rho=MouseX.kr(0,1);
	azArray = [-0.454,0.454,0,0,-1.047,1.047,-2.39,2.39];
	elArray = [0.088,0.088,0,1.22,0.35,0.35,0.524,0.524];
	distArray = [1,1,0,0,0.56,0.5,0.8,0.8];
    src = Pan2.ar(BufRd.ar(1, buffer,K2A.ar(BufFrames.ir(buffer)  *MouseX.kr(0.0,1.0)).lag(MouseY.kr(0.0,1.0))),0.0);
	// encode sig into ambisonic channels
	#w, x, y, z = BFEncode1.ar(src,
		LFSaw.kr(spd,Rand(0,2))*pi,elev*pi);
	//decode ambisonics into speaker channels
    BFDecode1.ar1(w, x, y, z,
		azArray, elArray,maxDist,distArray)
});
)

Synth(\loui_littlefield,[\buffer,b]);// source




