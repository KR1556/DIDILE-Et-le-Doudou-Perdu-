if (place_meeting(x, y, O_DIDILE_SABRE2))
{
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Sabre);
	
	room_goto(PHARE_TRANSITION);	
}