
press_poule = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_poule)
{
	audio_play_sound(Snd_Jump, 100, false);

	audio_stop_sound(Snd_Footsteps);
	layer_sequence_create("JEUX", 1182, 103, Anim_POULE_JEUX);

	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
	
}
