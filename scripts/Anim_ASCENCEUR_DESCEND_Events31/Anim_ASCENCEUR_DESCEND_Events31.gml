

function Debut_Ascenceur_Descend()
{
	instance_deactivate_object(O_Moteur);
	instance_deactivate_object(O_Chaines);
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_Ascenceur_HAUT);
	audio_stop_sound(Snd_Jump);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_CAMERA_SABRE);

	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
}



function Debut_Moteur_Chaines_Descend()
{
	audio_play_sound(Snd_Door_CLOSE, 100, false);
	audio_play_sound(Snd_Moteur, 100, true);
	audio_play_sound(Snd_Ascenseur, 100, true);
}



function Son_Ding_Ascenceur_Descend()
{
	audio_play_sound(Snd_Ding_Ascenceur, 100, false);
}



function Stop_Ascenceur_Descend()
{
	audio_stop_sound(Snd_Moteur);
	audio_stop_sound(Snd_Ascenseur);
	audio_play_sound(Snd_Door_OPEN, 100, false);
}



function fin_Ascenceur_Descend()
{
	instance_create_layer(98, 257, "ASCENCEUR", O_Ascenceur_BAS);
	instance_create_layer(74, 300, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Chaines);
	instance_activate_object(O_Moteur);
	
	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}