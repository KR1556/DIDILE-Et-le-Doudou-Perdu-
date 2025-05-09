
press_toboggan = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_toboggan)
{

	audio_stop_sound(Snd_Footsteps);
	instance_activate_object(O_CAMERA_ANIM_TOBOGGAN);

	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
	
	layer_sequence_create("TOBOGGAN", 944, 81, Anim_TOBOGGAN);
}
