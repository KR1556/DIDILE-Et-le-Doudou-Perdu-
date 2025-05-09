function Anim_Roc_Bas_Start_2()
{
	instance_destroy(O_Roches_BAS_2);
	instance_destroy(O_Roches_BAS_START_2);
	
	audio_play_sound(Snd_Loot, 100, false);
}


function Anim_Roc_Bas_End_2()
{
	layer_sequence_destroy(self.elementID);
}

