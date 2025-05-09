
press_ascenceur_MONTE = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_ascenceur_MONTE)
{
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Jump);
	
	layer_sequence_create("ASCENCEUR", 98, 257, Anim_ASCENCEUR);
}
