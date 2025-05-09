

function Desactive_Escalade()
{
	
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Mur_Escalade);
	audio_stop_sound(Snd_Sabre);
	audio_play_sound(Snd_Sabre1, 100, false);
	audio_stop_sound(Snd_Footsteps);
	audio_play_sound(Snd_Ladder, 100, true);
}


function Son_Sabre1_Sol()
{
	audio_play_sound(Snd_Sabre, 2, true);
}


function Son_Descend_Escalade()
{
	audio_stop_sound(Snd_Ladder);
	
	audio_play_sound(Snd_Jump, 100, false);

}


function Fin_Escalade_G()
{
	instance_create_layer(759, 115, "DIDILE", O_DIDILE_SABRE2);
	
	audio_play_sound(Snd_Jump_3, 100, false);
	instance_activate_object(O_Mur_Escalade);
	instance_activate_object(O_CAMERA_SABRE);

	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}
