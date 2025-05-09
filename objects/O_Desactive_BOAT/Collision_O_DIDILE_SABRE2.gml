if (place_meeting(x, y, O_DIDILE_SABRE2))
{
	instance_deactivate_object(O_WALL_BOAT);
	instance_deactivate_object(O_Coll_Echelle_BOAT);
	instance_deactivate_object(O_Coll_Echelle_BOAT_BIS);
	instance_deactivate_object(O_Pente_G_BOAT);
	instance_deactivate_object(O_Active_Boat_ARMATURE);
	instance_deactivate_object(O_Deactive_Boat_ARMATURE);
}

