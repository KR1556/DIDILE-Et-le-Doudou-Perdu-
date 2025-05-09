
press_navette = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_navette)
{
	audio_play_sound(Snd_Jump, 100, false);
	audio_stop_sound(Snd_Footsteps);
	layer_sequence_create("NAVETTE", 1485, 102, Anim_NAVETTE);

	instance_deactivate_object(O_Rebond_Sabre2);
	instance_deactivate_object(O_Rebond_Trempoline);
	
}
