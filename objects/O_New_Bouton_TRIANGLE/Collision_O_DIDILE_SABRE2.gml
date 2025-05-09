
if gamepad_is_connected(0) // "XInput STANDARD GAMEPAD"
{
    sprite_index = S_Bouton_Triangle_Xbox;
}
else if gamepad_is_connected(4) // "PS5 Controller"
{
    sprite_index = S_Bouton_Triangle;
}
else
{
    sprite_index = -1;
}

// Active l'animation automatiquement
image_speed = 1; // Ajuste la vitesse
