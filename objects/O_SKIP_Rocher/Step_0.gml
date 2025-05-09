press_skip_Rocher = input_check_pressed("accept"); // gp_face1

if (press_skip_Rocher)
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	
	instance_destroy(O_SKIP_Rocher);
	layer_destroy("Dialogue_Kiosque");
	
	if (animation_finished)
	{
		instance_destroy();
	}
}