

// Direction

press_left = input_check("left");
press_right = input_check("right");
press_up = input_check("up");
press_down = input_check("down");
hspd = 0;
vspd = 0;
walkspd = 5;
inputDirection = 0;
inputMagnitude = false;

// Bouton
if gamepad_is_connected(0) // "XInput STANDARD GAMEPAD"
{
    sprite_rond_anim = S_Bouton_Rond_Xbox;
}
else if gamepad_is_connected(4) // "PS5 Controller"
{
    sprite_rond_anim = S_Bouton_Rond;
}
else
{
    sprite_rond_anim = -1;
}

// Active l'animation automatiquement
image_speed = 1; // Ajuste la vitesse

// Bouton_Rond
afficher_sprite_Rond = true;

// Animation bouton rond
image_index_rond = 0;
image_speed_rond = 0.1; // Ajuste selon la vitesse voulue

// SONS 3D (CASCADE)

//Créer l’orientation d’écoute

audio_listener_set_orientation(0, 1, 1, 0, 0, 0, 1);

//Créer le modèle de « chute » (falloff)

audio_falloff_set_model(audio_falloff_exponent_distance_scaled);