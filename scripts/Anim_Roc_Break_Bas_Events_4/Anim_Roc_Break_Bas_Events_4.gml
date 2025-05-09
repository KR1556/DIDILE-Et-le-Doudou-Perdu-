function Anim_Roc_Bas_Start_4()
{
	instance_destroy(O_Roches_BAS_4);
	audio_play_sound(Snd_Loot, 100, false);
}


function Anim_Roc_Bas_End_4()
{
	layer_sequence_destroy(self.elementID);
}

