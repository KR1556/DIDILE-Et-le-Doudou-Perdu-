x += vitesse;

if (x > 0)
{
    audio_emitter_position(my_Emetteur, x, y, 0);

    if (!global.musique_pirates_playing)
    {
        global.musique_pirates_id = audio_play_sound_on(my_Emetteur, Snd_Music_Pirates, false, 90);
        global.musique_pirates_playing = true;
    }
    else if (!audio_is_playing(global.musique_pirates_id))
    {
        // Le son est terminé : ne rien faire
    }
    else
    {
        // Si le son était en pause mais toujours actif
        audio_resume_sound(global.musique_pirates_id);
    }
}
