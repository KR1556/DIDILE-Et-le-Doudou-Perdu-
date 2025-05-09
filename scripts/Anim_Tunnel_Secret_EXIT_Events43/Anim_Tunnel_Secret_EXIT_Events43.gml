


function Debut_Anim_Secret_Exit()
{
	audio_play_sound(Snd_Ladder, 100, true);

	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_CAMERA_SABRE);
}


function Son_Trappe_OPEN()
{
	audio_play_sound(Snd_Trappe_OPEN, 100, false);
}


function Son_Jump_Trappe()
{
	audio_stop_sound(Snd_Ladder);
	audio_play_sound(Snd_Jump, 100, false);
}


function Son_Jump_Atterrissage()
{
	audio_play_sound(Snd_Jump_3, 100, false);
}

function Son_Trappe_CLOSE()
{
	audio_play_sound(Snd_Trappe_CLOSE, 100, false);
	audio_stop_sound(Snd_Aquarium);
	audio_stop_sound(Snd_Jump_3);
}

function GO_TO_START()
{
	room_goto(START_SABRE);
	audio_stop_sound(Snd_Jump_3);
	
	layer_sequence_destroy(self.elementID);
}
