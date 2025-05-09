

function supp_Dialogue_2()
{
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = true;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	
	instance_deactivate_object(O_SKIP_Kiosque);
	instance_destroy(O_Dialogue_PNJ_2);
	instance_deactivate_object(O_Rebond_Trempoline);
}

function Active_Skip_Kiosque()
{
	instance_activate_object(O_SKIP_Kiosque);
	with (O_SKIP_Kiosque)
	{
		draw_me = true;
		draw_x = 620;
		draw_y = 450;

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

function Fin_Dialogue_2()
{
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
	}

	instance_activate_object(O_Rebond_Trempoline);
	instance_destroy(O_SKIP_Kiosque);
	layer_sequence_destroy(self.elementID);
}
