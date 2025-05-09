
function animation_Pierre_Start()
{
	instance_destroy(O_Pierre_Clone);

}



function animation_Pierre_End()
{
	if (O_Pierre_1.collision_count >= 1)
	{
		instance_destroy(O_New_Bouton_CARRE);
	
		instance_activate_object(O_New_Bouton_CROIX);
	
		instance_destroy(O_Pierre_1);
		layer_sequence_create("Trempoline", 1461, 1025, Anim_Pierre_Debris);
		instance_create_layer(1461, 1005, "Trempoline", O_Trempoline);
		audio_play_sound(Snd_Loot, 0, false);
		layer_sequence_destroy(self.elementID);
	}
	
	
	layer_sequence_destroy(self.elementID);

}