

function desactivation_Skip()
{
	instance_deactivate_object(O_SKIP);
}


// RONFLE 1
function Start_Ronfle()
{
	audio_play_sound(Snd_Nature_Ambience, 100, true);
	audio_play_sound(Snd_Ronfle, 100, true);
	
}


function activation_Skip()
{
	instance_activate_object(O_SKIP);
	
	with (O_SKIP)
	{
		draw_me = true;
		draw_x = 2860;
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

// MARCHE 1
function Start_Footsteps()
{
	audio_play_sound(Snd_Footsteps, 100, true);
}


// MARCHE STOP
function Stop_Footsteps()
{
	audio_stop_sound(Snd_Footsteps);
}


// RONFLE 2
function Stop_Ronfle()
{
	audio_stop_sound(Snd_Ronfle);
}


// LILA CRIE
function Start_Crie()
{
	audio_play_sound(Snd_LILA_Crie, 100, false);
}


// RONFLE 3
function reprise_Ronfle()
{
	audio_play_sound(Snd_Ronfle, 100, true);
}


// MARCHE 2
function reprise_Footsteps()
{
	audio_play_sound(Snd_Footsteps, 100, true);
}


// JUMP 3 & PLEURE
function Start_Bong()
{
	audio_play_sound(Snd_Jump_3, 100, false);
	audio_play_sound(Snd_LILA_Pleure, 100, true);
}


// DIDILE SAUTE
function Start_Jump()
{
	audio_play_sound(Snd_Jump, 100, false);
}


// Jump3 BIS
function Start_Bong_2()
{
	audio_play_sound(Snd_Jump_3, 100, false);
}


// Strat musique Marais
function Start_Marais()
{
	audio_play_sound(Snd_Marais_Intro, 100, false);
}


// Footsteps_POPA
function Start_Footsteps_POPA()
{
	audio_play_sound(Snd_Footsteps_POPA_MOMA, 100, true);
}


// STOP_Footsteps_POPA
function Stop_Footsteps_POPA()
{
	audio_stop_sound(Snd_Footsteps_POPA_MOMA);
}


// Start_BIRDS
function Start_Birds()
{
	audio_play_sound(Snd_Birds, 100, false);
}



function Stop_Pleure()
{
	audio_stop_sound(Snd_LILA_Pleure);
}



function Start_Popa_Crie()
{
	audio_play_sound(Snd_POPA_Crie, 100, false);
}



function STOP_END()
{
	audio_stop_all();
	room_goto_next();
}

