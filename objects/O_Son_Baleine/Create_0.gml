// Position initiale de l'objet
x = 3125; //2351

// Variables pour le déplacement
vitesse = 0.42;

my_Emetteur = audio_emitter_create();

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 300, 500, 1.2);
