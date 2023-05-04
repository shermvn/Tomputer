# Tomputer
- Developed a livecoding performance that evokes the energy of communal drumming. I started with translating rhythms I was hearing in my head to code. This was done with stereo. As I was building 10 channels of rhythm, I started to feel like it was get crowded. From here, I started testing multichannel in B54. To prep for this, i spoke to Rachel Rome, who shared to be the code to run supercollider to multichannel output.
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

I had problem initializing it with my airpods. During my first testing session, i focused on spatializing my audio around the room. I am using Dante to interface with Supercollider. I am using pan values to place the audio: 1 = 1, 2= 0.1, 3= 0.2.... 9 0.8. Playing with the textures in the space led me to creating more code. Next Session, the audio felt a little stale in the room so I was remember a anecodte from a conversation i had with Kayla Casseetta after the Multichannel faculty concert. She was mentioning how she feels that multichannel in max is better than envelop due to the reverb that max,spat, uses on the bus. It simulates a "room in a room". I decided to add reverb to all of the "tracks". This immensely glues the sounds together. From this point i started to develop sections of the piece based on my previous code. Led me down a rabbit hole. from here, i started to use osc to affect panning and pitch. I also decided to look at the Tidal Reference. Now I am in the process of cleaning up the code and working on the arch of the piece. Below is part of my code:

once $ s "[mt mt ~][mt mt ~][~][~]" # gain 0.7 # speed 2 #pan 0.2 #octer 1 #room 0.2 #sz 0.5 
once $ s "[ ~][~][lt lt ~][lt lt ~]" # gain 0.7 # speed 2 #pan 0.8 #room 0.1 #sz 0.5
once $ s "[[lt lt]*3] ~ ~ ~" # gain 0.7 # speed 1 #pan (sine*4) #room 0.1 #sz 0.5

-- Droney
d4 $ s "lt*16" # gain 0.5 # speed 0.1 #pan ((sine*0.2)+0.8) #room 0.5 #sz 0.7
d4 $ s "lt*16" # gain 0.4 # speed 0.1 #pan ((sine*0.2)+0.5) #room 1 #sz 0.7
d4 $ s "lt*16" # gain 0.5 # speed 0.1 #pan ((sine*0.2)+0.2) #room 0.5 #sz 0.7

--Call and Response
d2 $ s "[mt mt ~][mt mt ~][~][~]" # gain 0.7 # speed 2 #pan 0.1 #octer 1 #room 0.2 #sz 0.5 
d3 $ s "[ ~][~][lt lt ~][lt lt ~]" # gain 0.7 # speed 2 #pan 1 #room 0.1 #sz 0.5
d5 $ s "[ ~][~][mt mt ~][mt ~ mt]" # gain 0.7 # speed 1 #pan 8 #room 0.1 #sz 0.5
d5 $ s "[ ~][~][ ~][mt mt lt]" # gain 0.7 # speed 1 #pan sine #room 0.1 #sz 0.5
d7 $ s "[~ ht ~ ht]" # gain 1 # speed 9 #pan 0.9 #room 0.1 #sz 0.5



One thing I wish I could use in my perfromance is solo and mute. It seems like there are some bugs. I also plan to run visuals from my laptop, not livecode, as i will be using dante's laptop for audio


# Disregard
## Tomputer
### 05012023
- new patterns
- more effects
- Worked in B54
- using functions on pans
- Where do I start and where do I end?
- starting to iron out sections
- room added a lot
- positioning and dry vs wet
