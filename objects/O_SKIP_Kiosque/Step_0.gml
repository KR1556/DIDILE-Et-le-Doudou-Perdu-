press_skip_Kiosque = input_check_pressed("accept"); // gp_face1

if (press_skip_Kiosque)
{
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
		
	instance_destroy(O_SKIP_Kiosque);
	instance_activate_object(O_Rebond_Trempoline);
	layer_destroy("Dialogue_Sabre");
	
	if animation_finished
	{
		instance_destroy();
	}
}
