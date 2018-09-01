for (var i=0; i<32; i++) {
	note[i] = false;
}

// Optional: Check to see if FMODGMS has loaded properly
if (FMODGMS_Util_Handshake() == "FMODGMS is working.")
    show_message_async("Success! FMODGMS has been loaded.");
else {
    show_message_async("Error! FMODGMS was not loaded prorperly.");
    exit;
}

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

cur_order = 0;
cur_row = 0;