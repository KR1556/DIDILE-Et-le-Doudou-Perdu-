

function Detruire_LILA_POPA()
{
	
	audio_play_sound(Snd_Sabre, 2, true);
	
	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_Roc);
	instance_destroy(O_Bras_Tele);
	instance_destroy(O_Telepherique);
	instance_deactivate_object(O_CAMERA_SABRE);
	audio_play_sound(Snd_Jump, 10, false);
	
}


function Son_Teleph()
{
	audio_play_sound(Snd_Tyrolienne, 90, false);
	
}


function Son_Sabre_Break()
{
	audio_play_sound(Snd_Sabre1, 100, false, 3);
	audio_stop_sound(Snd_Sabre);
}

function Son_Roc_Casse()
{
	audio_play_sound(Snd_Stone_2, 5, false);
	instance_destroy(O_Pelleteuse);
}


function Fin_Jeu()
{
	game_end();
}
