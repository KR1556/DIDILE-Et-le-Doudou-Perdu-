

function Son_Porte_OPEN_Outside_SABRE()
{
	audio_play_sound(Snd_Door, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	instance_deactivate_object(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Rebond_Trempoline);
}





function Porte_Destroy_Outside_SABRE()
{
	room_goto(Hutte_SABRE_TRANSITION);
	instance_activate_object(O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Rebond_Trempoline);
	layer_sequence_destroy(self.elementID);
}