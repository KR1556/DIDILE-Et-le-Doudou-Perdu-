
press_Secret_Door = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Secret_Door)
{

	layer_sequence_create("BIBLIO", 60, 261, Anim_Porte_Secret_Phare);
	audio_stop_sound(Snd_Footsteps);
}