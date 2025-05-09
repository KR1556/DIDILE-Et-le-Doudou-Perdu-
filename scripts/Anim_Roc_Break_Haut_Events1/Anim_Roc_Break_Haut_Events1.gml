function Anim_Roc_Haut_Start()
{
	instance_destroy(O_Roches_H1);
	instance_destroy(O_Roches_H_START);
}


function Anim_Roc_Haut_End()
{
	instance_destroy(O_New_Bouton_CARRE);
	layer_sequence_destroy(self.elementID);
}

