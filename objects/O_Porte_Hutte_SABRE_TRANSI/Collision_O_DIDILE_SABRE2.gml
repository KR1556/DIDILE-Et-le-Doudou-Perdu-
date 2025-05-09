
press_Hutte_SABRE_TRANSI = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Hutte_SABRE_TRANSI)
{
	layer_sequence_create("Porte", 273, 299, Anim_Porte_3_BIS);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Rebond_Sabre2);
}

