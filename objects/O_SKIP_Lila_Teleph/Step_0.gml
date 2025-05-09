press_skip_Lila_Teleph = input_check_pressed("accept"); // gp_face1

if (press_skip_Lila_Teleph)
{
	layer_destroy("LILA_TELEPH");
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	
	instance_destroy(O_SKIP_Lila_Teleph);
	layer_sequence_create("LILA_TELEPH_2", 2725, 117, Anim_LILA_Teleph_2);
	
	if animation_finished
	{
		instance_destroy();
	}
}
