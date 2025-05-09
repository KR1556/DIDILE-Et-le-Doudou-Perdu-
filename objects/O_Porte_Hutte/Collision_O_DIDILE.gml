
press_Hutte = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Hutte)
{
	layer_sequence_create("Porte", 273, 299, Anim_Porte_2);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_DIDILE);
	instance_deactivate_object(O_CAMERA);
	instance_deactivate_object(O_Rebond);
}
