
function Son_Porte_OPEN_MILIEU()
{
	audio_play_sound(Snd_Door_Phare, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Rebond_Sabre2);
}


function Porte_Destroy_Milieu()
{
	room_goto(PHARE_MILIEU);

	instance_create_layer(320, 272, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Rebond_Sabre2);
	audio_stop_sound(Snd_Jump_3);
	
	layer_sequence_destroy(self.elementID);
}