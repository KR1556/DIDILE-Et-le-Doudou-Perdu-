
if (place_meeting(x, y, O_DIDILE))
{
	layer_sequence_create("Dialogue_Pecheur", 1877, 985, Anim_Dialogue_Pecheur);
	audio_stop_sound(Snd_Footsteps);
}

if (animation_finished)
{
	instance_destroy();
}
