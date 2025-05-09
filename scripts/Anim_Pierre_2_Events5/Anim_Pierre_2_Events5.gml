
function animation_Pierre_2_Start()
{
	if (O_Pierre_2.collision_count >= 1)
	{
		
		instance_destroy(O_Pierre_2);
		layer_sequence_create("Pierres_2", 460, 312, Anim_Pierre_Debris);

	
	}



}

function animation_Pierre_End_2()
{

	layer_sequence_destroy(self.elementID);

}


