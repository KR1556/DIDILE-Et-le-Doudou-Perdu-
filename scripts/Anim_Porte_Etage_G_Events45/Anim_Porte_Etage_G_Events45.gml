
function Detruire_DIDILE_Porte_G()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
}


function Son_Walk_Porte_ETAGE_G()
{
	audio_play_sound(Snd_Footsteps, 100, true);
	audio_play_sound(Snd_Door_Phare_OPEN, 100, false);
	
}


function Fin_Anim_Porte_G()
{
	audio_stop_sound(Snd_Jump_3);
	audio_stop_sound(Snd_Footsteps);
	instance_create_layer(1131, 706, "PORTES", O_Porte_ETAGE_1_G_OPEN);
	instance_create_layer(1175, 713, "DIDILE", O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	
	layer_sequence_destroy(self.elementID);
	
}

