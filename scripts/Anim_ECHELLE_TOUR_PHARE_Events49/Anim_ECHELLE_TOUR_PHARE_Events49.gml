
function Son_Echelle_Tour_Phare()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);	
	audio_play_sound(Snd_Ladder, 100, true);
}

function Sons_Echelle_Saut()
{
	audio_stop_sound(Snd_Ladder);
	audio_play_sound(Snd_Jump, 100, false);
}

function Active_Son_Jump_3()
{
	audio_play_sound(Snd_Jump_3, 100, false);
}

function Fin_Echelle_Tour_Phare()
{
	instance_create_layer(260, 303, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	layer_sequence_destroy(self.elementID);
}

