

function Son_Door_Phare_OPEN()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	
	audio_play_sound(Snd_Door_Phare_OPEN, 100, false);
	audio_play_sound(Snd_Footsteps, 100, true);
	instance_deactivate_object(O_Porte_CLOSE_D);
}

function Fin_Sons()
{
	audio_stop_sound(Snd_Footsteps);
	audio_play_sound(Snd_Door_Phare_CLOSE, 100, false);
}

function Fin_Porte_TRANSI()
{
	instance_activate_object(O_Porte_CLOSE_D);
	instance_create_layer(1206, 272, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	
	layer_sequence_destroy(self.elementID);
}