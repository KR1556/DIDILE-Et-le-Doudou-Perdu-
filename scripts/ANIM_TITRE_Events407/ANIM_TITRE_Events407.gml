// Auto-generated stubs for each available event.

function Son_Tornade()
{
	audio_play_sound(Snd_Tornade, 100, false);
}

function Shake()
{
	global.shake_timer = 320;
    global.shake_magnitude_max = 1;
    global.shake_age = 0;
    global.shake_fade = 30; // frames de fade-in/fade-out
}

function Son_Virevolte()
{
	audio_play_sound(Snd_Didile_Tornade, 100, false);
}

function Stop_Virevolte()
{
	audio_stop_sound(Snd_Didile_Tornade);
}

function Fin_Anim_Titre()
{
	layer_sequence_destroy(self.elementID);
}
