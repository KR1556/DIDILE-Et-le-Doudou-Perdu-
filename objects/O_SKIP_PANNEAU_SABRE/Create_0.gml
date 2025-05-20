draw_me = true;
draw_x = 580;
draw_y = 340;

if (gamepad_is_connected(0))
{
	sprite_index = S_Touche_Passer_XBOX;
}
else if (gamepad_is_connected(4))
{
	sprite_index = S_Touche_Passer;
}
else
{
	sprite_index = -1;
}

image_speed = 1;

press_skip_Panneau = input_check_pressed("accept");
