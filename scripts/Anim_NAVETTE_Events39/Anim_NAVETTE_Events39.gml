

function Destroy_Nuages_Gris()
{
	instance_deactivate_object(O_Porte_Hangar_FIN_2);
	instance_deactivate_object(O_Hangar_FIN);
	instance_deactivate_object(O_Porte_Hangar_FIN);
	instance_deactivate_object(O_FOND_Hangar_FIN);
	instance_activate_object(O_Audio_Emetteur);
	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_Navette);
	instance_destroy(O_New_Bouton_ROND);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_Navette_Pluies);
	instance_deactivate_object(O_Navette_Rails_Nuages);
	audio_stop_sound(Snd_Footsteps);
	audio_play_sound(Snd_Porte_Metal, 100, false);
}

function Navette_Rails()
{
	audio_play_sound(Snd_Navette_Rails, 100, false);
	audio_stop_sound(Snd_Sabre);

}

function Active_Son_Porte_Metal()
{
	audio_play_sound(Snd_Porte_Metal, 100, false);
}

function Active_Son_Porte_Metal_2()
{
	audio_play_sound(Snd_Porte_Metal, 100, false);
}

function Active_Didile()
{
	instance_activate_object(O_Porte_Hangar_FIN_2);
	instance_activate_object(O_Hangar_FIN);
	instance_activate_object(O_Porte_Hangar_FIN);
	instance_activate_object(O_FOND_Hangar_FIN);
	instance_create_layer(2182, 117, "DIDILE", O_DIDILE_SABRE2);
	instance_create_layer(2121, 102, "NAVETTE", O_Navette);
	instance_activate_object(O_CAMERA_SABRE);
	instance_activate_object(O_Navette_Pluies);
	instance_activate_object(O_Navette_Rails_Nuages);
	instance_destroy(O_Collision_Navette);
	audio_play_sound(Snd_Sabre, 2, true);
	
	layer_sequence_destroy(self.elementID);
}



