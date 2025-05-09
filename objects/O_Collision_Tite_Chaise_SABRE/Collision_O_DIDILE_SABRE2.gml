

press_Tite_Chaise_SABRE = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Tite_Chaise_SABRE)
{
	audio_stop_sound(Snd_Jump);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Trempoline);
	layer_sequence_create("Tite_Chaise_SABRE", 37, 332, Anim_TITE_CHAISE_SABRE);
}
