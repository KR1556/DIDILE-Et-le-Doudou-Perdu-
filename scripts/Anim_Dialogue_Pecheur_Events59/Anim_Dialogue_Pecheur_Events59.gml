

function Dtruit_Dialogue_Pecheur()
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = true;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	instance_deactivate_object(O_SKIP_Pecheur);
	instance_destroy(O_Dialogue_PECHEUR);
}

function Active_Skip_Pecheur()
{
	instance_activate_object(O_SKIP_Pecheur);
	with (O_SKIP_Pecheur)
	{
		draw_me = true;
		draw_x = 2200;
		draw_y = 1060;

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
	}
}

function Fin_Dialogue_Pecheur()
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = false;
	}
	instance_destroy(O_SKIP_Pecheur);
	layer_sequence_destroy(self.elementID);
}
