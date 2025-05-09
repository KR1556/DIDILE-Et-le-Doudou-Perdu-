function Anim_Roc_Bas_Start()
{
	instance_destroy(O_Roches_BAS1);
	instance_destroy(O_Roches_BAS_START);	
	
	audio_play_sound(Snd_Loot, 100, false);
}


function Anim_Roc_Bas_End()
{
	layer_sequence_destroy(self.elementID);
}

