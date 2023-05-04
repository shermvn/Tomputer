(
s.options.outDevice_("Dante Virtual Soundcard"); //switch to
s.options.numBuffers = 1024 * 256;
s.options.memSize = 8192 * 32;
s.options.maxNodes = 1024 * 34;
s.options.numOutputBusChannels = 10; // switch to 10
s.options.numInputBusChannels = 0;
s.waitForBoot{
	~dirt = SuperDirt(10,s); // switch to 10
	~dirt.loadSoundFiles;
	s.sync;
	~dirt.start(57120, 0 ! 12)}

);

s.Record(numChannels:10);
s.stopRecording;