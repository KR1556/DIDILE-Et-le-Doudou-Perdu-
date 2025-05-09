

function Desactive_Tite_Chaise_SABRE()
{
	
	instance_deactivate_object(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_TiteChaise);
	audio_play_sound(Snd_Footsteps, 100, false);
	audio_play_sound(Snd_Loot, 100, false);

}

function Footsteps_Stop()
{
	audio_stop_sound(Snd_Footsteps);
	audio_play_sound(Snd_Sabre1, 100, false);
}

function Fin_Tite_Chaise_SABRE()
{
	
	instance_create_layer(61, 299, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_TiteChaise);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Trempoline);
	layer_sequence_destroy(self.elementID);

}
