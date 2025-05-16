
function Detruire_LILA_DIDILE()
{
	instance_destroy(O_Coll_LILA);
		var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = true;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	instance_deactivate_object(O_SKIP_Lila_Teleph);
	instance_destroy(O_LILA_RESPIRE_G);
	audio_play_sound(Snd_Footsteps, 100, true);
}


function Stop_LILA_Teleph_Marche()
{
	instance_destroy(O_Coll_LILA);
	audio_stop_sound(Snd_Footsteps);
}


function Passer_Lila_Teleph()
{
	instance_destroy(O_Coll_LILA);
	instance_activate_object(O_SKIP_Lila_Teleph);
	
	with (O_SKIP_Lila_Teleph)
	{
		draw_me = true;
		draw_x = 2950;
		draw_y = 330;

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

function Active_Didile_Lila_Teleph()
{
	instance_destroy(O_Coll_LILA);
	var target = O_DIDILE_SABRE2;
	if (instance_exists(target))
	{
		target.movement_locked = false;
	}
	instance_destroy(O_SKIP_Lila_Teleph);
	
	layer_sequence_create("LILA_TELEPH_2", 2725, 117, Anim_LILA_Teleph_2);
	
	layer_sequence_destroy(self.elementID);
}


