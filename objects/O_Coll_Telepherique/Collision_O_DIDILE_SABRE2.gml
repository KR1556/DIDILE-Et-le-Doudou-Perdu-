press_Teleph = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Teleph)
{
	instance_destroy(O_DIDILE_SABRE2);
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Sabre);
	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
	layer_sequence_create("Telepherique", 3345, 165, Anim_TELEPHERIQUE);
	instance_activate_object(O_CAMERA_ANIM);
}
