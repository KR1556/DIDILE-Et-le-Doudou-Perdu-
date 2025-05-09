
press_Outside = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Outside)
{
	layer_sequence_create("Maison", 2521, 977, Anim_Porte);
	audio_stop_sound(Snd_Footsteps);
	
}
