

function son_footsteps_teleph()
{
	audio_play_sound(Snd_Footsteps_Teleph, 100, true);
}


function Fin_LILA_Teleph_2()
{
	audio_stop_sound(Snd_Footsteps_Teleph);
	layer_sequence_create("LILA_POPA", 3134, 93, Anim_LILA_POPA);
	
}
