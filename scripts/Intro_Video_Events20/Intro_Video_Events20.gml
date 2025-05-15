
function desactivation_Skip_1()
{
	instance_deactivate_object(O_SKIP);
}


function Son_TontonCorp()
{
	audio_play_sound(Snd_Loot, 100, false);
}


function Son_Narrateur()
{
	audio_play_sound(Snd_Intro_Narrateur, 100, false);
	audio_play_sound(Snd_Chat_Ronronne, 100, false);
}


function activation_Skip_1()
{
	instance_activate_object(O_SKIP);
	
	with (O_SKIP)
	{
		draw_me = true;
		draw_x = 580;
		draw_y = 335;

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

function Son_Page()
{
	audio_play_sound(Snd_Page, 100, false);
}

function Detruit_DrawMe()
{
	with (O_SKIP)
	{
		draw_me = false;
	}
}

function ROOM()
{
	instance_deactivate_object(O_SKIP);
	room_goto(INTRO);
}
