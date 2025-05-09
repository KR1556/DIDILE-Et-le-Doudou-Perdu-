

function Desactive_DIDILE()
{
	instance_destroy(O_DIDILE);
	instance_deactivate_object(O_CAMERA);
	audio_stop_sound(Snd_Footsteps);
	audio_stop_sound(Snd_Essai_Titre);
}

function Son_Tornade_Debut()
{
	audio_play_sound(Snd_Tornade, 100, false);
}

function Shake_debut()
{
	global.shake_timer = 380;
    global.shake_magnitude_max = 1;
    global.shake_age = 0;
    global.shake_fade = 20; // frames de fade-in/fade-out
}

function Son_Didile_Tornade()
{
	audio_play_sound(Snd_Didile_Tornade, 100, false);
}

function Destroy_Anim_Debut_Jeu()
{
	layer_sequence_destroy(self.elementID);
	audio_play_sound(Snd_Didile_Music, 100, false);
	audio_play_sound(Snd_Lulu, 100, false);
	instance_activate_object(O_CAMERA);
	instance_create_layer(49, 1012, "DIDILE", O_DIDILE);
}

