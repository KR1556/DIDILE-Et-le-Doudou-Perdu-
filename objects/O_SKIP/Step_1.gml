press_skip = input_check_pressed("accept");

if (press_skip)
{
	room_goto(ECRAN_TITRE);
	audio_stop_all();
}