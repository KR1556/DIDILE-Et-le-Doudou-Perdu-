function Anim_Roc_Haut_Start_3()
{
	instance_destroy(O_Roches_H3);
	instance_destroy(O_Roches_H_START_3);
}


function Anim_Roc_Haut_End_3()
{
	layer_sequence_destroy(self.elementID);
}

