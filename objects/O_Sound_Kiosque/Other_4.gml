// Si le son a déjà été lancé une fois dans le passé
if (son_joue && room == Outside_SABRE)
{
    audio_emitter_position(my_Emetteur, x, y, 0);
    audio_emitter_falloff(my_Emetteur, 400, 1000, 1.2);
    audio_play_sound_on(my_Emetteur, Snd_Kiosque, true, 100);
}
