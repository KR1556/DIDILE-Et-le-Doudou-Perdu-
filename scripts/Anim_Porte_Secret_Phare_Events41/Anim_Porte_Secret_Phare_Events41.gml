


function Son_Stop_Footsteps_Livre()
{
	instance_destroy(O_DIDILE_SABRE2);
	instance_deactivate_object(O_CAMERA_SABRE);
	instance_destroy(O_Biblio_Secret_DEBUT);
	
	audio_stop_sound(Snd_Footsteps);
	instance_destroy(O_Mur_Secret);
}

function Son_Livre()
{
	audio_play_sound(Snd_Interrupteur_Indus, 100, false);
}

function Son_Biblio_Secret()
{
	audio_play_sound(Snd_Biblio_Secret, 100, false);
}

function Fin_Anim_Biblio_Secret()
{
	instance_create_layer(101, 272, "DIDILE", O_DIDILE_SABRE2);
	instance_create_layer(25, 272, "BIBLIO", O_Biblio_Secret_FIN);
	instance_activate_object(O_CAMERA_SABRE);
	instance_deactivate_object(O_New_Bouton_ROND_PHARE_PORTE);
	instance_destroy(O_Porte_Secrete);
	
	layer_sequence_destroy(self.elementID);
	
}