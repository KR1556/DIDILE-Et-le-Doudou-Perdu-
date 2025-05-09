
// Créer l’émetteur
my_Emetteur = audio_emitter_create();

// Déterminer sa position
audio_emitter_position(my_Emetteur, x, y, 0);

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 100, 1000, 1.2);