
function Desactive_Poule()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Poule_Ressort_Jeux);
}


function Boing()
{
	audio_play_sound(Snd_Boing, 100, false);
}



function Son_Descend()
{
	audio_play_sound(Snd_Jump, 100, false);
}

function Sortie()
{
	audio_play_sound(Snd_Jump_3, 100, false);
	instance_create_layer(1230, 115, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_Poule_Ressort_Jeux);
	instance_activate_object(O_CAMERA_SABRE);

	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}

