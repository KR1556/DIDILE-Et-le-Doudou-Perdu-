
function Son_Loot_Key()
{
	audio_play_sound(Snd_Loot, 100, false);
	instance_destroy(O_Coll_Key);
}


function Creation_Key()
{
	instance_create_layer(2680, 1022, "KEY", O_Key);
}


function Fin_Anim_Key()
{
	layer_sequence_destroy(self.elementID);
}