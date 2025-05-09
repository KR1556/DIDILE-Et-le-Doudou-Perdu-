
press_AppuieSurStart = input_check_pressed("accept"); // gp_face1

if (press_AppuieSurStart)
	{
		audio_play_sound(Snd_Loot, 100, false);
		room_goto(Outside);
	}