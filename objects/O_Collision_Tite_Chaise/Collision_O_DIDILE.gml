
press_Tite_Chaise = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Tite_Chaise)
{
	audio_stop_sound(Snd_Jump);
	audio_stop_sound(Snd_Footsteps);
	instance_deactivate_object(O_Rebond);
	instance_deactivate_object(O_Trempoline);
	layer_sequence_create("Coll_TiteChaise", 37, 332, Anim_TITE_CHAISE);
}
