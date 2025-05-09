function animation_start()
{
	instance_destroy(O_Trempoline);
	
}

function animation_end()
{
	layer_sequence_destroy(self.elementID);
	instance_create_layer(1461, 1005, "Trempoline", O_Trempoline);
}
