
press_Porte_Phare_SABRE = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Porte_Phare_SABRE)
{	
	layer_sequence_create("PHARE", 1346, 997, Anim_Porte_Phare_EXT_SABRE);
	audio_stop_sound(Snd_Footsteps);
	

}

