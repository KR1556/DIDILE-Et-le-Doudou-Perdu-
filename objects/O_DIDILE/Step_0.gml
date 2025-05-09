// Collision avec une échelle
var touching_ladder = place_meeting(x, y, O_Echelle)
    && (!place_meeting(x, y + 1, O_WALL) || input_check("up") || input_check("down"));

if (touching_ladder)
{
    if (!on_ladder)
    {
        on_ladder = true;
        sprite_index = S_DIDILE_RESPIRE;
        vspd = 0;
        grav = 0; // empêche la gravité
    }
	
    var _ladder_direction = input_check_opposing("up", "down");
    var _ladder_move = input_check_opposing("left", "right");

    var at_top = place_meeting(x, y - 1, O_WALL); // plus sensible
    var at_bottom = place_meeting(x, y + 1, O_WALL); // plus précis

    // Stoppe le son de marche
    if (place_meeting(x, y, O_Echelle)) audio_stop_sound(Snd_Footsteps);

    // Mouvement vertical
    if (_ladder_direction != 0)
    {
        if ((_ladder_direction == -1 && !at_top) || (_ladder_direction == 1 && !at_bottom))
        {
            y += _ladder_direction * ladder_speed;
            sprite_index = S_DIDILE_ECHELLE;

            if (!audio_is_playing(Snd_Ladder)) audio_play_sound(Snd_Ladder, 100, true);
        }
        else
        {
            sprite_index = S_DIDILE_RESPIRE;
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
        if (!place_meeting(x + _ladder_move * walkspd, y, O_WALL))
        {
            x += _ladder_move * ladder_move_speed;
            sprite_index = S_DIDILE_ECHELLE;
            image_xscale = _ladder_move;
        }
    }

    // Quitte l’échelle si plus en collision ou bloqué en bas
    if (!place_meeting(x, y, O_Echelle) || (at_bottom && _ladder_direction == 1))
    {
        on_ladder = false;
        grav = 0.3;
        sprite_index = S_DIDILE_RESPIRE;
        audio_stop_sound(Snd_Ladder);
    }

    // STOP total (immobile)
    if (_ladder_direction == 0 && _ladder_move == 0)
    {
        sprite_index = S_DIDILE_RESPIRE;
    }
exit;
}
else
{
    on_ladder = false;
    grav = 0.3;

    if (audio_is_playing(Snd_Ladder)) audio_stop_sound(Snd_Ladder);

    if (!place_meeting(x, y + 1, O_WALL))
        sprite_index = S_DIDILE_JUMP;
    else if (hspd == 0)
        sprite_index = S_DIDILE_RESPIRE;
    else
        sprite_index = S_DIDILE_WALK;
}


// Mouvements
var move = input_check_opposing("left", "right");

hspd = move * walkspd;
vspd += grav;

hspd += walkspd * move;
if (move != 0) x_last_direction = move;

// Dash
// if (input_check_pressed("action")) {
//     hspd += x_dash_impulse * x_last_direction;
// }

// Vérifie si sur le sol
var on_ground = instance_place(x, y + 3, O_WALL);
if (on_ground)
{
    if (jumping)
	{
        alarm[0] = 1;
    }
    jumping = false;
}
else
{
    jumping = true;
}

// Alarm Event (alarme 0)
if (alarm[0] > 0)
{
    audio_play_sound(Snd_Jump_3, 1, false);
    alarm[0] = -1;
}

// Sons de marche
if (move != 0 && place_meeting(x, y + 1, O_WALL))
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

// Détection du sol pour sauts
if (place_meeting(x, y + 1, O_WALL))
{
    jumpCount = 0;
}

// Saut
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

// Animation fumée saut
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
		audio_stop_sound(Snd_Footsteps);
		audio_stop_sound(Snd_Jump);
	}
	else
	{
		walkspd = 2;
		jumpSpd = -6.5;
	}

// Rebond
if (place_meeting(x, y - 1, O_Rebond))
{
    audio_play_sound(Snd_Boing, 100, false);	
    vspd = -5;
    grav = 0.3;
}

// Move and Collide
move_and_collide(hspd, 0, O_WALL, abs(hspd)+4)

if (place_meeting(x, y+1, O_WALL)) && (place_meeting(x, y + abs(hspd) + 2, O_WALL)) && (vspd >= 0)
{
    vspd += abs(hspd) + 2;
}

var _vCol = move_and_collide(0, vspd, O_WALL, abs(vspd)+1, hspd, vspd, hspd, vspd)
if (array_length(_vCol) >0)
{
    if (vspd > 0) jumpCount = 10;
    vspd = 0;
}

// UN-STUCK
if (place_meeting(x, y, O_WALL))
{
    for(var i=0; i<1000; ++i)
	{
		// Right
        if (!place_meeting(x+i, y, O_WALL)) { x+=i; break; }
		// Left
		if (!place_meeting(x-i, y, O_WALL)) { x-=i; break; }
		// Up
		if (!place_meeting(x, y+i, O_WALL)) { y+=i; break; }
		// Down
		if (!place_meeting(x, y-i, O_WALL)) { y-=i; break; }
		// Top Right
		if (!place_meeting(x+i, y-i, O_WALL)) { x+=i; y-=i; break; }
		// Top Left
		if (!place_meeting(x-i, y-i, O_WALL)) { x-=i; y-=i; break; }
		// Bottom Right
		if (!place_meeting(x+i, y+i, O_WALL)) { x+=i; y+=i; break; } 
		// Bottom Left
		if (!place_meeting(x-i, y+i, O_WALL)) { x-=i; y+=i; break; }
    }
}


// Flip sprite
if hspd != 0
{
    image_xscale = sign(hspd);
}

// Son 3D
audio_listener_set_position(0, x, y, 0);