if (place_meeting(x, y, O_DIDILE_SABRE2))
{
	room_goto(SECRET_BOAT);

	instance_destroy(O_DIDILE_SABRE2);
	instance_destroy(O_CAMERA_SABRE);
	
}