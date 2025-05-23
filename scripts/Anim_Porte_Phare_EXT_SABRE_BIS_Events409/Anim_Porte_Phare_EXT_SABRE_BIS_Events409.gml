
function Son_Porte_Open_Phare_Sabre_BIS()
{
	audio_play_sound(Snd_Door_Phare, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	audio_stop_sound(Snd_Jump_3);
	
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
}

function Porte_destroy_Sabre_1_BIS()
{
		room_goto(PHARE_TRANSITION_BIS);
		instance_create_layer(1347, 1012, "DIDILE", O_DIDILE_SABRE2);
		instance_activate_object(O_CAMERA_SABRE);
		audio_stop_sound(Snd_Jump_3);
	
		layer_sequence_destroy(self.elementID);
}