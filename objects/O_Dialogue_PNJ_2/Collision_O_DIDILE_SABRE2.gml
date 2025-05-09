
if place_meeting(x, y, O_DIDILE_SABRE2)
{
	layer_sequence_create("Dialogue_Sabre", 370, 255, Anim_Dialogue_2);
	instance_deactivate_object(O_Rebond_Trempoline);
	audio_stop_sound(Snd_Footsteps);
}

if (animation_finished)
{
	instance_destroy();
}
