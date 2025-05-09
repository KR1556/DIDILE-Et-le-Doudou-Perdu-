

// Déterminer sa position
audio_emitter_position(my_Emetteur, x, y, 0);

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 400, 1000, 1.2);

//Démarrer le son
audio_play_sound_on(my_Emetteur, Snd_Cascade, true, 100);
