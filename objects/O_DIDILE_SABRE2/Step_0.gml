
press_attack = input_check_pressed("action");

if (state == states.idle || state == states.walk || state == states.jump)
{
	// Collision avec une échelle
var touching_ladder = place_meeting(x, y, O_Echelle)
    && (!place_meeting(x, y + 1, O_WALL_2) || input_check("up") || input_check("down"));

if (touching_ladder)
{
    if (!on_ladder)
    {
        on_ladder = true;
        sprite_index = S_DIDILE_RESPIRE_SABRE;
        vspd = 0;
        grav = 0; // empêche la gravité
    }
	
    var _ladder_direction = input_check_opposing("up", "down");
    var _ladder_move = input_check_opposing("left", "right");

    var at_top = place_meeting(x, y - 1, O_WALL_2); // plus sensible
    var at_bottom = place_meeting(x, y + 1, O_WALL_2); // plus précis

    // Stop le son de marche
    if (place_meeting(x, y, O_Echelle)) audio_stop_sound(Snd_Footsteps);

    // Mouvement vertical
    if (_ladder_direction != 0)
    {
        if ((_ladder_direction == -1 && !at_top) || (_ladder_direction == 1 && !at_bottom))
        {
            y += _ladder_direction * ladder_speed;
            sprite_index = S_DIDILE_ECHELLE_SABRE;

            if (!audio_is_playing(Snd_Ladder)) audio_play_sound(Snd_Ladder, 100, true);
        }
        else
        {
            sprite_index = S_DIDILE_RESPIRE_SABRE;
            audio_stop_sound(Snd_Ladder);
        }
    }
    else
    {
        if (audio_is_playing(Snd_Ladder)) audio_stop_sound(Snd_Ladder);
    }

    // Mouvement horizontal
    if (_ladder_move != 0)
    {
        if (!place_meeting(x + _ladder_move * walkspd, y, O_WALL_2))
        {
            x += _ladder_move * ladder_move_speed;
            sprite_index = S_DIDILE_ECHELLE_SABRE;
            image_xscale = _ladder_move;
        }
    }

    // Quitte l’échelle si plus en collision ou bloqué en bas
    if (!place_meeting(x, y, O_Echelle) || (at_bottom && _ladder_direction == 1))
    {
        on_ladder = false;
        grav = 0.3;
        sprite_index = S_DIDILE_RESPIRE_SABRE;
        audio_stop_sound(Snd_Ladder);
    }

    // STOP total (immobile)
    if (_ladder_direction == 0 && _ladder_move == 0)
    {
        sprite_index = S_DIDILE_RESPIRE_SABRE;
    }
exit;
}
else
{
    on_ladder = false;
    grav = 0.3;

    if (audio_is_playing(Snd_Ladder)) audio_stop_sound(Snd_Ladder);

    if (!place_meeting(x, y + 1, O_WALL_2))
        sprite_index = S_DIDILE_JUMP_SABRE;
    else if (hspd == 0)
        sprite_index = S_DIDILE_RESPIRE_SABRE;
    else
        sprite_index = S_DIDILE_WALK_SABRE;
}

	// Mouvements
	var move = input_check_opposing("left", "right");
	hspd = move * walkspd;
	vspd = vspd + grav;

	// Déplacement horizontal
		hspd += walkspd * move;
		if (move != 0) x_last_direction = move;

    // Dash
		//if (input_check_pressed("action"))
		//{
		//	hspd += x_dash_impulse * x_last_direction;
		//}

    // Vérifie si sur le sol
		var on_ground = instance_place(x, y + 3, O_WALL_2);
		if (on_ground)
		{
			// Si en l'air, joue le son d'atterrissage
			if (jumping)
			{
				alarm[0] = 1;  // Déclenche l'alarme pour jouer le son d'atterrissage
			}

			// Si plus en l'air
			jumping = false;
		}
		else
		{
			// Si en l'air
			jumping = true;
		}

// Alarm Event (alarme 0)
if (alarm[0] > 0)
{
    // Joue le son d'atterrissage et arrête l'alarme
    audio_play_sound(Snd_Jump_3, 1, false);
    alarm[0] = -1; // Désactive l'alarme après que le son a été joué
}

	// Gestion des sons de marche
	if (move != 0 && place_meeting(x, y + 1, O_WALL_2))
	{
		if (!audio_is_playing(Snd_Footsteps))
		{
			audio_play_sound(Snd_Footsteps, 100, false);
		}
	}
	else
	{
		audio_stop_sound(Snd_Footsteps);
	}

	// Détection du sol et gestion des sauts
	if (place_meeting(x, y+1, O_WALL_2))
	{
		jumpCount = 0;
	}

	// Gestion du saut
	if input_check_pressed("accept") && jumpCount < jumpMax
	{
		jumpCount++;
		jumpTimer = jumpHoldFrames;
		audio_play_sound(Snd_Jump, 90, false);
	}

	var Hold_jump = input_check_pressed("accept");
	if !Hold_jump
	{
		jumpTimer = 0;
	}

	// Animation fumée de saut
	if jumpTimer > 0
	{
		if (!movement_locked)
		{
			layer_sequence_create("DIDILE", x, y, Anim_Jump);
		}
		vspd = jumpSpd;
		jumpTimer--;
	}

	//Blocage Mouvements
	if (movement_locked)
	{
		walkspd = 0;
		jumpSpd = 0;
		press_attack = false;
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	else
	{
		walkspd = 2;
		jumpSpd = -6.5;
	}

	// Rebond
	if (place_meeting(x, y - 1, O_Rebond_Sabre2))
	{
		audio_play_sound(Snd_Boing, 100, false);
		vspd = -5;
		grav = 0.3;
	}

	/// Move and Collide
		// Horizontal
		move_and_collide(hspd, 0, O_WALL_2, abs(hspd)+4)

		// Descendre de la pente
		if (place_meeting(x, y+1, O_WALL_2)) && (place_meeting(x, y + abs(hspd) + 2, O_WALL_2)) && (vspd >= 0)
		{
			vspd += abs(hspd) + 2;
		}

		// Vertical
		var _vCol = move_and_collide(0, vspd, O_WALL_2, abs(vspd)+1, hspd, vspd, hspd, vspd)
		if (array_length(_vCol) >0)
		{
			if (vspd > 0) jumpCount = 10;
			vspd = 0;
		}

	// UN-STUCK
	if (place_meeting(x, y, O_WALL_2))
	{
		for(var i=0; i<1000; ++i)
		{
			// RIGHT
			if (!place_meeting(x+i, y, O_WALL_2)) { x+=i; break;}
			// LEFT
			if (!place_meeting(x-i, y, O_WALL_2)) { x-=i; break;}
			// UP
			if (!place_meeting(x, y+i, O_WALL_2)) { y+=i; break;}
			// DOWN
			if (!place_meeting(x, y-i, O_WALL_2)) { y-=i; break;}
			// TOP RIGHT
			if (!place_meeting(x+i, y-i, O_WALL_2)) { x+=i; y-=i; break;}
			// TOP LEFT
			if (!place_meeting(x-i, y-i, O_WALL_2)) { x-=i; y-=i; break;}
			// BOTTOM_RIGHT
			if (!place_meeting(x+i, y+i, O_WALL_2)) { x+=i; y+=i; break;}
			// BOTTOM LEFT
			if (!place_meeting(x-i, y+i, O_WALL_2)) { x-=i; y+=i; break;}
		}
	}

// ATTAQUE
if (press_attack)
	{
		//layer_sequence_create("DIDILE", O_DIDILE_SABRE2.x + 1, O_DIDILE_SABRE2.y, Anim_Sabre_Attack);
		audio_stop_sound(Snd_Footsteps);
		state_set_attack(states.Attack);
		if state_set_attack
			{
				/// Choix entre 2 sons
				var choixSon = irandom(1); // 0 ou 1
				// Charge le son
				switch (choixSon)
					{
						case 0:
						audio_play_sound(Snd_Sabre1, 100, false);
						break;
	
						case 1:
						audio_play_sound(Snd_Sabre0, 100, false);
						break;
					}
			}
	}

// Retournement de Didile
if hspd != 0
{
	image_xscale = sign(hspd)
}

//Son Synchro position perso + émetteur
audio_listener_set_position(0, x, y, 0);

// Rebond Trempoline
if (place_meeting(x, y +2, O_Rebond_Trempoline))
{
	audio_play_sound(Snd_Boing, 80, false);
	audio_stop_sound(Snd_Jump_3);
	layer_sequence_create("Trempoline", 1461, 1005, Anim_Trempoline);
	vspd = -19;
	grav = 0.3;
}

// TOBOGGAN
if (place_meeting(x, y, O_Collision_Toboggan))
{
	audio_stop_sound(Snd_Jump);
}

//CAMERA
camera_set_view_target(view_camera[1], O_DIDILE_SABRE2);

//Son Synchro position perso + émetteur
audio_listener_set_position(0, x, y, 0);

}
