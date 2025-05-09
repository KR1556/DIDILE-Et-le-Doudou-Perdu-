
function Destroy_Coffre()
{
	instance_destroy(O_New_Bouton_ROND_HUTTE_2);
	audio_play_sound(Snd_Door_OPEN, 100, false);
	layer_destroy("Coffre_Sabre");
	instance_destroy(O_Loot_Manager);
}


function Anim_Coffre_Sabre_Moment()
{
 instance_create_layer(224, 100.65, "Coffre_Ouvert", O_Coffre_Ouvert);
 instance_activate_object(O_CAMERA);
 instance_create_layer(274, 118.65, "Sabre", O_Sabre);
 layer_sequence_destroy(self.elementID);
}