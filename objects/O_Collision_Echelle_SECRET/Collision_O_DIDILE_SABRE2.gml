if (place_meeting(x, y, O_DIDILE_SABRE2))
{
	layer_sequence_create("TRAPPE_EXIT", 698, 932, Anim_Tunnel_Secret_EXIT);
	
	audio_stop_sound(Snd_Ladder);
	audio_stop_sound(Snd_Footsteps);
		
	instance_destroy(O_CAMERA_SABRE);
	
}
