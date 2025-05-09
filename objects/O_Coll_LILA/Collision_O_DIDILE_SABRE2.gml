
if (place_meeting(x, y, O_DIDILE_SABRE2))
{
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	layer_sequence_create("LILA_TELEPH", 2759, 129, Anim_LILA_Teleph);
}
