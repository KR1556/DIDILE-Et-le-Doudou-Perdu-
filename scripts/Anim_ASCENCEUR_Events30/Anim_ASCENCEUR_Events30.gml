
function Debut_Ascenceur()
{
	instance_deactivate_object(O_Moteur);
	instance_deactivate_object(O_Chaines);
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_Ascenceur_BAS);
	audio_stop_sound(Snd_Jump);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_CAMERA_SABRE);
	
	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
}


function Debut_Moteur_Chaines()
{

	audio_play_sound(Snd_Door_CLOSE, 100, false);
	audio_play_sound(Snd_Moteur, 100, true);
	audio_play_sound(Snd_Ascenseur, 100, true);
}


function Son_Ding_Ascenceur()
{
	audio_play_sound(Snd_Ding_Ascenceur, 100, false);
}


function Stop_Ascenceur()
{

	audio_stop_sound(Snd_Moteur);
	audio_stop_sound(Snd_Ascenseur);
	audio_play_sound(Snd_Door_OPEN, 100, false);

	
}


function Fin_Ascenceur_MONTE()
{
	instance_create_layer(98, 67, "ASCENCEUR", O_Ascenceur_HAUT);
	instance_create_layer(74, 111, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object( O_CAMERA_SABRE);
	instance_activate_object(O_Chaines);
	instance_activate_object(O_Moteur);

	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}


