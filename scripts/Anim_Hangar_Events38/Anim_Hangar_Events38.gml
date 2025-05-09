

function Destroy_Porte_Hangar()
{
	instance_destroy(O_Collision_Hangar);
	instance_destroy(O_New_Bouton_ROND_HANGAR);
	instance_deactivate_object(O_Navette_Rails_Nuages);
	instance_deactivate_object(O_Navette);
	instance_destroy(O_Porte_Hangar_Navette);
	
	audio_play_sound(Snd_Door_Hangar, 100, false);
	
	
}


function lumiere_Hangar()
{
	audio_play_sound(Snd_Lum_Hangar, 100, false);
}



function Navette_Sortie()
{
	audio_play_sound(Snd_Navette_Sortie, 100, false);
}

function Fin_Porte_Hangar()
{
	instance_activate_object(O_Navette_Rails_Nuages);
	instance_create_layer(1485, 102, "NAVETTE", O_Navette);
	instance_create_layer(1485, 102, "NAVETTE", O_Collision_Navette);
	instance_create_layer(1483, 115, "NAVETTE", O_New_Bouton_ROND_NAVETTE);
	instance_create_layer(1460, 70, "Rails_Nuages", O_Lum_Hangar);
	layer_sequence_destroy(self.elementID);
}

