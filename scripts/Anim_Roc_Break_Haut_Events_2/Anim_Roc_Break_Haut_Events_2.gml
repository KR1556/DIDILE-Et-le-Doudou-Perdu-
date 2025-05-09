function Anim_Roc_Haut_Start_2()
{
	instance_destroy(O_Roches_H2);
	instance_destroy(O_Roches_H_START_2);
}


function Anim_Roc_Haut_End_2()
{
	layer_sequence_destroy(self.elementID);
}

