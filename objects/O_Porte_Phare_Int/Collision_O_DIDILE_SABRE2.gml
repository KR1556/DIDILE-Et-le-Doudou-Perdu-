

press_Porte_Phare_Int = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Porte_Phare_Int)
{
	layer_sequence_create("PHARE", 645, 259, Anim_Porte_Phare_INT_SABRE);
	audio_stop_sound(Snd_Footsteps);
}

