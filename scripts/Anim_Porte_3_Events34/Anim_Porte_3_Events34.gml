// Auto-generated stubs for each available event.

function Son_Porte_OPEN_HUTTE_SABRE()
{
	audio_play_sound(Snd_Door, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
}





function Fin_Porte_Hutte_SABRE()
{
	room_goto(Outside_SABRE);
	instance_destroy(self.elementID);
}