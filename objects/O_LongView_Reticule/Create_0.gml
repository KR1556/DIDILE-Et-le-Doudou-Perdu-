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

// SONS 3D (CASCADE)

//Créer l’orientation d’écoute

audio_listener_set_orientation(0, 1, 1, 0, 0, 0, 1);

//Créer le modèle de « chute » (falloff)

audio_falloff_set_model(audio_falloff_exponent_distance_scaled);