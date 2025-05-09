
if place_meeting(x, y, O_DIDILE_REAL)
{
	layer_sequence_create("Dialogues", 475, 227, Anim_Dialogue_1);
	instance_activate_object(O_Coll_Key);
	instance_destroy(O_Deactivate_Porte_Touche);
}
