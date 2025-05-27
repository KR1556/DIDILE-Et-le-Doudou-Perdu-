press_skip = input_check_pressed("accept");

if (press_skip)
{
	room_goto_next();
	audio_stop_all();
	//layer_destroy("Intro_Video");
}