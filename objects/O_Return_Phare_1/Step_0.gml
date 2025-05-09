
press_return_Phare_1 = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if(press_return_Phare_1)
{
	audio_stop_sound(Snd_LongView);
	audio_stop_sound(Snd_Mer_LongView);
	audio_play_sound(Snd_Loot, 100, false);
	
	room_goto(PHARE_1_TRANSI_LONGVIEW);
}
