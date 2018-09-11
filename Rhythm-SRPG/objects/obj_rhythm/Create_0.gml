/*notes = ds_list_create();
ds_list_add(notes,0);
ds_list_add(notes,8);
ds_list_add(notes,16);
ds_list_add(notes,24);
ds_list_add(notes,32);
ds_list_add(notes,40);
ds_list_add(notes,48);
ds_list_add(notes,56);

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
cur_step = 0;
next_row_to_hit = -1;
is_new_order = false;
result_text = "";
just_hit = false;
flubbed = false;
force_next_note = false;

/*for (var i=0; i<64; i++)
	show_debug_message(string(i) + " - " + string(wrap2(i,0,64)));*/