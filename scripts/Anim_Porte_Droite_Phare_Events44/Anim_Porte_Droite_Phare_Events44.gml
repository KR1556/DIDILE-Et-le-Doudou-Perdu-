


function Detruire_Porte_Droite_Phare()
{
	instance_deactivate_object(O_Porte_CLOSE_D);

	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_CAMERA_SABRE);
}


function Son_Porte_Open_Phare_DROITE()
{
	audio_stop_sound(Snd_Sabre);
	audio_play_sound(Snd_Door_Phare, 100, false);
}


function Son_Walk_Porte_Droite()
{
	audio_play_sound(Snd_Footsteps, 100, true);
}


function Fin_Porte_Droite()
{
	audio_stop_sound(Snd_Footsteps);
	instance_activate_object(O_Porte_CLOSE_D);
	room_goto(PHARE_1);
	
	layer_sequence_destroy(self.elementID);
}

