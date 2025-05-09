
// Position initiale de l'objet
x = 636; // Position de départ (gauche)

// Variables pour le déplacement
vitesse = 0.5; // Vitesse de déplacement de l'objet

// Créer l’émetteur
my_Emetteur = audio_emitter_create();

// Déterminer la « chute » de l’émetteur (falloff)
audio_emitter_falloff(my_Emetteur, 300, 600, 1.2);

 