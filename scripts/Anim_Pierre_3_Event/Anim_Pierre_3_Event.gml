function animation_Pierre_Start_3()
{
		if (O_Pierre_3.collision_count >= 1)
	{
		
		instance_destroy(O_Pierre_3);
		layer_sequence_create("Pierres_2", 1384, 111, Anim_Pierre_Debris);
	}
}

function animation_Pierre_End_3()
{	
	
	layer_sequence_destroy(self.elementID);

}
