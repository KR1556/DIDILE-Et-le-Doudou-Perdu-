
function Son_Porte_OPEN_HUTTE()
{
	audio_play_sound(Snd_Door, 100, false);	
	audio_play_sound(Snd_Footsteps, 100, false);
}


function Fin_Porte_Hutte()
{
	room_goto(Outside);
	instance_destroy(self.elementID);
}

