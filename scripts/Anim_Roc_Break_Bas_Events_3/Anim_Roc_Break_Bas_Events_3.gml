function Anim_Roc_Bas_Start_3()
{
	instance_destroy(O_Roches_BAS3);
	instance_destroy(O_Roches_BAS_START_3);
	
	audio_play_sound(Snd_Loot, 100, false);
}


function Anim_Roc_Bas_End_3()
{
	layer_sequence_destroy(self.elementID);
}

