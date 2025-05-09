

function Desactive_Hangar()
{
	instance_destroy(O_Collision_Guichet);
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = true;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	
	instance_destroy(O_Hangar_Navette_CLOSE);
	instance_deactivate_object(O_Fond_Guichet);
	instance_deactivate_object(O_Guichetier_Hangar_G);
	instance_deactivate_object(O_New_Bouton_ROND);
}

function Appuie_Guichetier()
{
	instance_destroy(O_Collision_Guichet);
	audio_play_sound(Snd_Interrupteur_Beep, 100, false);
}


function Ouverture_Barriere()
{
	instance_destroy(O_Collision_Guichet);
	audio_play_sound(Snd_Door_OPEN, 100, false);
}


function Reprise_Didile()
{
	instance_destroy(O_Collision_Guichet);
	instance_destroy(O_Hangar_Navette_CLOSE);
	instance_destroy(O_Wall_Navette);
	instance_activate_object(O_Rebond_Sabre2);
	instance_activate_object(O_Rebond_Trempoline);
}

function Fin_Hangar()
{
	instance_destroy(O_Collision_Guichet);
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
	}
	instance_create_layer(1460, 70, "HANGAR", O_Hangar_Navette_OPEN);
	instance_create_layer(1375, 107, "HANGAR", O_Guichetier_Hangar_D);
	instance_activate_object(O_Fond_Guichet);
	layer_sequence_destroy(self.elementID);
}

