
function Son_Porte_OPEN_PHARE_SABRE()
{
	audio_play_sound(Snd_Door_Phare, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	audio_stop_sound(Snd_Jump_3);
	
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
}



function Porte_Destroy_SABRE_1()
{

		room_goto(PHARE_0);
		instance_create_layer(1347, 1012, "DIDILE", O_DIDILE_SABRE2);
		instance_activate_object(O_CAMERA_SABRE);
		audio_stop_sound(Snd_Jump_3);
	
		layer_sequence_destroy(self.elementID);
}