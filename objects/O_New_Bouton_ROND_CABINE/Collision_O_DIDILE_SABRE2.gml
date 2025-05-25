
if gamepad_is_connected(0) // "XInput STANDARD GAMEPAD"
{
    sprite_index = S_Bouton_Rond_Xbox;
}
else if gamepad_is_connected(4) // "PS5 Controller"
{
    sprite_index = S_Bouton_Rond;
}
else
{
    sprite_index = -1;
}

// Active l'animation automatiquement
image_speed = 1; // Ajuste la vitesse


press_Cabine = input_check_pressed("cancel"); // gp_face2 ( bouton rond )

if (press_Cabine)
{
	room_goto(CABINE);
	audio_stop_sound(Snd_Footsteps);
}