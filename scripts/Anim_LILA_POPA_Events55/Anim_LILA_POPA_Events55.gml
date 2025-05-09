

function Detruire_LILA_TELEPH_2()
{
	instance_destroy(O_POPA_TELEPH);
	layer_destroy("LILA_TELEPH_2");
}

function Son_Lila_Footsteps()
{
	audio_play_sound(Snd_Footsteps_Teleph, 100, false);
}


function Fin_Lila_Footsteps()
{
	audio_stop_sound(Snd_Footsteps_Teleph);
}
