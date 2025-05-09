function animation_Pierre_Start_4()
{
	if (O_Pierre_4.collision_count >= 1)
	{
		
		instance_destroy(O_Pierre_4);
		layer_sequence_create("Pierres_2", 480, 312, Anim_Pierre_Debris);
	}
}

function animation_Pierre_End_4()
{
	
	layer_sequence_destroy(self.elementID);

}