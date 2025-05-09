
function Dtruit_Dialogue_Kiosque()
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = true;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	instance_deactivate_object(O_SKIP_Rocher);
	instance_destroy(O_Dialogue_PNJ_1);
}

function Active_Skip_Rocher()
{
	instance_activate_object(O_SKIP_Rocher);
	with (O_SKIP_Rocher)
	{
		draw_me = true;
		draw_x = 800;
		draw_y = 460;

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

function Fin_Dialogue_Kiosque()
{
	var target = O_DIDILE;
	if (instance_exists(target))
	{
		target.movement_locked = false;
	}
	instance_destroy(O_SKIP_Rocher);
	layer_sequence_destroy(self.elementID);
}
