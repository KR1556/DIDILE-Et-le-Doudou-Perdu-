
press_Panneau = input_check_pressed("cancel");

if (press_Panneau)
{
	audio_play_sound(Snd_Loot, 100, false);
	audio_stop_sound(Snd_Footsteps);
	room_goto(PANNEAU);
}


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
