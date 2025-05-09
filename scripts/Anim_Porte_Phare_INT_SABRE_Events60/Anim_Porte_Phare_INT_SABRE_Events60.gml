

function Son_Porte_OPEN_PHARE_INT_SABRE()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Rebond_Sabre2);
	audio_play_sound(Snd_Door_Phare, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	audio_stop_sound(Snd_Jump_3);
	instance_deactivate_object(O_Porte_Phare_EXT_Closed);
}

function Porte_Destroy_SABRE_2()
{
	room_goto(START_SABRE);
		
	instance_activate_object(O_Porte_Phare_EXT_Closed);
	audio_stop_sound(Snd_Jump_3);
	
	layer_sequence_destroy(self.elementID);
}
