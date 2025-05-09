
if place_meeting(x, y, O_DIDILE)
{
	layer_sequence_create("Dialogue_Kiosque", 476, 227, Anim_Dialogue_1);
	audio_stop_sound(Snd_Footsteps);
	instance_activate_object(O_Coll_Key);
	instance_destroy(O_Deactivate_Porte_Touche);
}

if (animation_finished)
{
	instance_destroy();
}