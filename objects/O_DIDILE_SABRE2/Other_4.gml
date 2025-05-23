
// Apparition de O_Boat
//show_debug_message("Boat active: " + string(global.boat_active));

if (room == START_SABRE)
{
    with (O_Boat)
	{
        if (global.boat_active)
		{
            visible = true;
        }
    }
	with (O_Boat_Cabine)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_Coll_Echelle_BOAT)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_WALL_BOAT)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_Pente_G_BOAT)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_Boat_Armature)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_Active_Boat_ARMATURE)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
	with (O_Deactive_Boat_ARMATURE)
	{
		if (global.boat_active)
		{
			visible = true;
		}
	}
}
