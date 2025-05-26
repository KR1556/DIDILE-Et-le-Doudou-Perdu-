

function Desactive_Didile_Cabine_Enter()
{
	instance_deactivate_object(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Porte_Cabine_G_Close);
	audio_play_sound(Snd_Footsteps, 100, false);
}

function Son_Stop_Cabine_Footsteps()
{
	audio_stop_sound(Snd_Footsteps);
}

function Son_Door_Cabine_Close()
{
	audio_play_sound(Snd_Door_Phare_CLOSE, 100, false);
}

function Active_Didile_Cabine_Enter()
{
	instance_activate_object(O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Porte_Cabine_G_Close);
	layer_sequence_destroy(self.elementID);
}