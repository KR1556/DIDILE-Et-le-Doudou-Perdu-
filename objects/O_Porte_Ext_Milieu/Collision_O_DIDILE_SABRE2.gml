
press_Porte_Ext_Milieu = input_check_pressed("cancel"); // gamepad_button_check_pressed(0, gp_face2);

if (press_Porte_Ext_Milieu)
{
	layer_sequence_create("PORTES", 1346, 705, Anim_Porte_Etage_Milieu);
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Sabre);
}
