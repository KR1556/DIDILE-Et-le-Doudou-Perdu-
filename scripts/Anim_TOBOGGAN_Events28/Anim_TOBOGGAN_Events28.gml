
function Cut_Son_Jump()
{
	instance_deactivate_object(O_Toboggan);
	audio_play_sound(Snd_Footsteps, 100, false);
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
}



function Cut_Son_Footsteps()
{
	audio_stop_sound(Snd_Footsteps);
}


function Son_Chute()
{
	audio_play_sound(Snd_Chute, 100, false);
}




function Fin_Toboggan()
{
	instance_create_layer(1105, 115, "DIDILE", O_DIDILE_SABRE2);
	
	audio_play_sound(Snd_Jump_3, 100, false);
	instance_activate_object(O_Toboggan);
	instance_activate_object(O_CAMERA_SABRE);

	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}


