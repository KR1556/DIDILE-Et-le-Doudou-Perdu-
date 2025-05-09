if (global.boat_active)
{
    instance_destroy();
	instance_destroy(O_WALL_BOAT_BIS);
	instance_activate_object(O_Pente_G_BOAT);
	instance_activate_object(O_WALL_BOAT);
	instance_activate_object(O_Coll_Echelle_BOAT);
	instance_activate_object(O_Coll_Echelle_BOAT_BIS);
	instance_activate_object(O_Active_Boat_ARMATURE);
	instance_activate_object(O_Deactive_Boat_ARMATURE);
	instance_deactivate_object(O_Boat_Armature);
}