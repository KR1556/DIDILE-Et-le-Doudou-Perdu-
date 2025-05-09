
function Activation_O_START()
{
	instance_activate_object(O_START);
	
	with (O_START)
	{
		draw_me = true;
		draw_x = 3525;
		draw_y = 900;

		if (gamepad_is_connected(0))
		{
			sprite_index = S_Touche_Start_XBOX;
		}
		else if (gamepad_is_connected(4))
		{
			sprite_index = S_Touche_Start_PS;
		}
		else
		{
			sprite_index = -1;
		}

		image_speed = 1;
	}
}

