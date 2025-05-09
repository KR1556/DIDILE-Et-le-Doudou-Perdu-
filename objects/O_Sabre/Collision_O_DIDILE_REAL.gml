if place_meeting(x, y, O_DIDILE_REAL)
{

instance_deactivate_object(O_DIDILE_REAL);
instance_deactivate_object(O_CAMERA);
instance_deactivate_object(O_Rebond);


layer_sequence_create("Sabre", 274, 106, Anim_Loot_Sabre);

audio_stop_sound(Snd_Sabre_Floor);
audio_stop_sound(Snd_Footsteps);
instance_destroy();

}

