
press_Porte_Milieu_Int = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Porte_Milieu_Int)
{
	 
	layer_sequence_create("PHARE", 308, 259, Anim_Porte_Milieu_INT);
	audio_stop_sound(Snd_Footsteps);

}

