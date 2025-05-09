
press_escalade_G = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_escalade_G)
{
	
	audio_stop_sound(Snd_Jump);

	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
	
	layer_sequence_create("ESCALADE", 679, 80, Anim_ESCALADE);
}
