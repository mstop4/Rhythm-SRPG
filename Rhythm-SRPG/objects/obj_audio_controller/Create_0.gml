// Optional: Check to see if FMODGMS has loaded properly
if (FMODGMS_Util_Handshake() != "FMODGMS is working.")
    exit;
	
// Create the system
FMODGMS_Sys_Create();

// Initialize the system
FMODGMS_Sys_Initialize(32);

FMODGMS_Snd_Set_DecodeBufferSize(3000);

// Load sound
sound = FMODGMS_Snd_LoadSound(working_directory + "M64CRED.IT");

// Create a channel
channel = FMODGMS_Chan_CreateChannel();

// Play sound
FMODGMS_Snd_PlaySound(sound,channel);
