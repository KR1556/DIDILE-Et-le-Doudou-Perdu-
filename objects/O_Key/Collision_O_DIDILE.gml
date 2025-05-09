
if place_meeting(x, y, O_DIDILE)
{
	audio_play_sound(Snd_Loot, 100, false);
	instance_activate_object( O_Porte_Outside);
	instance_activate_object(O_New_Bouton_ROND);
	instance_destroy(O_Deactivate_Porte_Touche);
	instance_destroy();
}
