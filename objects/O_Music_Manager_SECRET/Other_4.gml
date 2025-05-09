
audio_play_sound(Snd_Abysse, 100, true);
audio_play_sound(Snd_Music_Secret, 100, true);

// Son continu du Sabre
audio_play_sound(Snd_Sabre, 2, true);

/// Son MOTEUR
// Déterminer sa position
audio_emitter_position(my_Emetteur, x, y, 0);

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 100, 700, 1.2);

//Démarrer le son
audio_play_sound_on(my_Emetteur, Snd_Moteur, true, 100);
