
function Detruire_Didile_Camera()
{
	instance_deactivate_object(O_Tuyaux_Close);
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Didile_Music);
	audio_play_sound(Snd_Aquarium, 100, true);
	audio_play_sound(Snd_Ladder, 100, true);
	audio_play_sound(Snd_Goutte_Secret, 100, true, 0.5);
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	
}

function Son_Sas()
{
	audio_play_sound(Snd_Porte_Metal, 100, false);
}

function Apparition_Didile()
{
	instance_activate_object(O_Tuyaux_Close);
	instance_create_layer(1026, 972, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	audio_play_sound(Snd_Jump_3, 100, false)
	audio_stop_sound(Snd_Ladder);
	
	layer_sequence_destroy(self.elementID);
}
