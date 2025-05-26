
function Detruit_Didile_Enter_Cabine()
{
	instance_deactivate_object(O_Porte__ETAGE_1_G_CLOSE);
	instance_deactivate_object(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	audio_play_sound(Snd_Door_Phare_OPEN, 100, false);
}

function Footsteps_On_Cabine()
{
	audio_play_sound(Snd_Footsteps, 100, false);
}

function End_Enter_Cabine()
{
	room_goto(CABINE);
	audio_stop_sound(Snd_Footsteps);
	layer_sequence_destroy(self.elementID);
	instance_activate_object(O_DIDILE_SABRE2);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Porte__ETAGE_1_G_CLOSE);
}
