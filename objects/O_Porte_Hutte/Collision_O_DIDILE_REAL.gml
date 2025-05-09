
press_Hutte = gamepad_button_check_pressed(0, gp_face2);

if (press_Hutte)
{
	layer_sequence_create("Porte", 273, 298, Anim_Porte_2);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_DIDILE_REAL);
	instance_deactivate_object(O_CAMERA);
	instance_deactivate_object(O_Rebond);
}
