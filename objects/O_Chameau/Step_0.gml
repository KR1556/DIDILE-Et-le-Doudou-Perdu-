// Mouvements
hspd = walkspd;
vspd = vspd + grav;

// Collisions horizontales
if (place_meeting(x + hspd, y, O_WALL_2))
{
	walkspd = walkspd * -1;
}

x = x + hspd;

// Collisions verticales
if (place_meeting(x, y + vspd, O_WALL_2))
{
	while (!place_meeting(x, y + sign(vspd), O_WALL_2))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

// Un_Stuck
if (place_meeting(x, y, O_WALL_2))
{
    for(var i=0; i<1000; ++i)
	{
		// Right
        if (!place_meeting(x+i, y, O_WALL_2)) { x+=i; break; }
		// Left
		if (!place_meeting(x-i, y, O_WALL_2)) { x-=i; break; }
		// Up
		if (!place_meeting(x, y+i, O_WALL_2)) { y+=i; break; }
		// Down
		if (!place_meeting(x, y-i, O_WALL_2)) { y-=i; break; }
		// Top Right
		if (!place_meeting(x+i, y-i, O_WALL_2)) { x+=i; y-=i; break; }
		// Top Left
		if (!place_meeting(x-i, y-i, O_WALL_2)) { x-=i; y-=i; break; }
		// Bottom Right
		if (!place_meeting(x+i, y+i, O_WALL_2)) { x+=i; y+=i; break; } 
		// Bottom Left
		if (!place_meeting(x-i, y+i, O_WALL_2)) { x-=i; y+=i; break; }
    }
}

// Flip sprite
if (!place_meeting(x + 1, y + 1, O_WALL_2) && !place_meeting(x - 1, y + 1, O_WALL_2))
{
	sprite_index = S_Chameau_Walk;
}
else
{
	if (hspd == 0)
	{
		sprite_index = S_Chameau_Walk;
	}
	else
	{
		sprite_index = S_Chameau_Walk_Droite;
	}
}

if hspd != 0
{
    image_xscale = sign(hspd);
}