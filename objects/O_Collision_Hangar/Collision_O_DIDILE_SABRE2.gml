
press_Hangar = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Hangar)
{
	audio_play_sound(Snd_Interrupteur_Indus, 100, false);
	
	layer_sequence_create("NAVETTE", 1460, 70, Anim_Hangar);
}