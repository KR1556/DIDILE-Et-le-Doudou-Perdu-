// Directions Horizontales et Verticales

if (place_meeting(x + 1, y, O_Coll_Paysage_Phare)) && (place_meeting(x -1, y, O_Coll_Paysage_Phare)) && (place_meeting(x, y + 1, O_Coll_Paysage_Phare)) &&  (place_meeting(x, y - 1, O_Coll_Paysage_Phare))
{
	walkspd = 0;
	
}

// Directions Diagonales

if (place_meeting(x + 1, y + 1, O_Coll_Paysage_Phare)) && (place_meeting(x - 1, y - 1, O_Coll_Paysage_Phare)) && (place_meeting(x + 1, y - 1, O_Coll_Paysage_Phare)) && (place_meeting(x - 1, y + 1, O_Coll_Paysage_Phare))
{
	walkspd = 0;
	
}

