
function desactive_Didile_Cabine_Exit()
{
	instance_destroy(O_Porte_Cabine_G_Close);
	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_CAMERA_SABRE);
}

function Son_Porte_Cabine_Open()
{
	audio_play_sound(Snd_Door_Phare_OPEN, 100, false);
}

function Son_Cabine_Footsteps()
{
	audio_play_sound(Snd_Footsteps, 100, false);
}

function Exit_Cabine()
{
	room_goto(START_SABRE);
	audio_play_sound(Snd_Door_Phare_CLOSE, 100, false);
	audio_stop_sound(Snd_Footsteps);
	layer_sequence_destroy(self.elementID);
}