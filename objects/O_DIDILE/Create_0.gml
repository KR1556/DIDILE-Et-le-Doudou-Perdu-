// Blocage mouvements pendant les animations
movement_locked = false;

// Capacités de Didile
hspd = 0;
vspd = 0;
grav = 0.3;
walkspd = 2;
x_last_direction = 0;
//x_dash_impulse = 7;

// Gestion des échelles
on_ladder = false; // Indique si le joueur est en contact avec une échelle
ladder_speed = 2;  // Vitesse de montée/descente
ladder_move_speed = 2; // Vitesse de mouvement horizontal sur l'échelle

// Variables de saut
jumpSpd = -6.5;
jumpMax = 2;
jumpCount = 0;
jumpHoldFrames = 1;
jumpTimer = 0.04;

// Variable pour savoir si le joueur est en l'air
jumping = false;

//Compteur de son pour Jump
compteur_appuis_O = 0;

// "Anti-Glitch"
mask_index = sprite_index;

/// SONS 3D (CASCADE)
//Créer l’orientation d’écoute
audio_listener_set_orientation(0, 1, 1, 0, 0, 0, 1);

//Créer le modèle de « chute » (falloff)
audio_falloff_set_model(audio_falloff_exponent_distance_scaled);

//Supprimer tous les effects
audio_bus_main.bypass = true;

