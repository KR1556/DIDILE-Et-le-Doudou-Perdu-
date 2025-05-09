if (variable_global_exists("visited_rooms"))
{
	if (ds_map_exists(global.visited_rooms, "PHARE_TRANSITION"))
	{
		instance_destroy(O_Music_Pirates);
		audio_stop_sound(Snd_Music_Pirates);
		audio_stop_sound(Snd_Baleine_1);
		instance_destroy(O_Son_Baleine);
	}
}
