
press_Loot_Sabre = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Loot_Sabre)
{
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_CAMERA);
	layer_sequence_create("Anim_Coffre", 224, 98, Anim_Coffre_Sabre);
}
