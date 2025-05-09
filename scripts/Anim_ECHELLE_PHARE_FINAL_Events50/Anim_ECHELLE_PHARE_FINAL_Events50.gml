
function Son_Echelle_Phare_Final()
{
	audio_play_sound(Snd_Ladder, 100, true);
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
}

function Stop_sons_Echelle_Saut()
{
	audio_stop_sound(Snd_Ladder);
	audio_play_sound(Snd_Jump, 100, false);
}

function Son_Jump3_Phare_Final()
{	
	instance_create_layer(1380, 656, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);	
	layer_sequence_destroy(self.elementID);
}

function Active_Son_Jump_3_Phare_Final()
{
	audio_play_sound(Snd_Jump_3, 100, false);
}