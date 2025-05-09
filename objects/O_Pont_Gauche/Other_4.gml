
// Déterminer sa position
audio_emitter_position(my_Emetteur, x, y, 0);

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 70, 1000, 1.2);

//Démarrer le son
audio_play_sound_on(my_Emetteur, Snd_Fire, true, 100);
audio_sound_gain(Snd_Fire, 0, 0);
audio_sound_gain(Snd_Fire, 1, 1500);
