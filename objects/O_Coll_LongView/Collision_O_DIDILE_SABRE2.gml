
press_LongView = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_LongView)
{
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Didile_Music);	
	audio_play_sound(Snd_Loot, 100, false);
	
	room_goto(PAYSAGE_PHARE);
}
