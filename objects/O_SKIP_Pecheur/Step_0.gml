press_skip_Pecheur = input_check_pressed("accept"); // gp_face1

if (press_skip_Pecheur)
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	
	instance_destroy(O_SKIP_Pecheur);
	layer_destroy("Dialogue_Pecheur");
	
	if (animation_finished)
	{
		instance_destroy();
	}
}