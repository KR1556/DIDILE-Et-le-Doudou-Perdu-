x -= vitesse;

if (x > 0)
{
    audio_emitter_position(my_Emetteur, x, y, 0);

    if (!global.son_baleine_playing)
    {
        global.son_baleine_id = audio_play_sound_on(my_Emetteur, Snd_Baleine_1, true, 90);
        global.son_baleine_playing = true;
    }
    else if (!audio_is_playing(global.son_baleine_id))
    {
        // Le son est terminé : ne rien faire
    }
    else
    {
        // Si le son était en pause mais toujours actif
        audio_resume_sound(global.son_baleine_id);
    }
}
