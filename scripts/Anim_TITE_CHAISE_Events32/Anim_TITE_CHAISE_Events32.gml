

function Desactive_Tite_Chaise()
{
	instance_deactivate_object(O_DIDILE);
	instance_deactivate_object(O_CAMERA);
	instance_deactivate_object(O_TiteChaise);
	audio_play_sound(Snd_Footsteps, 100, false);
	audio_play_sound(Snd_Loot, 100, false);
}

function Footsteps_Arret()
{
	audio_stop_sound(Snd_Footsteps);
}

function Fin_Tite_Chaise()
{
		instance_create_layer(61, 299, "DIDILE", O_DIDILE);
		instance_activate_object(O_TiteChaise);
		instance_activate_object(O_CAMERA);
		instance_activate_object(O_Rebond);
		instance_activate_object(O_Trempoline);
		layer_sequence_destroy(self.elementID);
}
