

function Son_Porte_HUTTE_SABRE_TRANSI()
{
	audio_play_sound(Snd_Door, 100, false);
	
	audio_play_sound(Snd_Footsteps, 100, false);
}


function Fin_Porte_HUTTE_SABRE_TRANSI()
{
	room_goto(Outside_SABRE);
	
	instance_destroy(self.elementID);
}