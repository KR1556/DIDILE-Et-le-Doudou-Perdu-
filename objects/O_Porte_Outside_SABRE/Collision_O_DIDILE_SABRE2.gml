
press_Outside_SABRE = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Outside_SABRE)
{
	layer_sequence_create("Maison", 2521, 977, Anim_Porte_4);
	audio_stop_sound(Snd_Footsteps);
	
}

