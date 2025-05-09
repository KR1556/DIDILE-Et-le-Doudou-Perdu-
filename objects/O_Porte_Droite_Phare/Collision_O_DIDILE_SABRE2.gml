
press_Door_Droite = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Door_Droite)
{

	layer_sequence_create("PORTE_DROITE", 1227, 262.5, Anim_Porte_Droite_Phare);
	audio_stop_sound(Snd_Footsteps);
}