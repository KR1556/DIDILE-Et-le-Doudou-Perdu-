
// Crée la map une seule fois si elle n'existe pas encore
if (!variable_global_exists("visited_rooms"))
{
    global.visited_rooms = ds_map_create();
}

// Récupère le nom de la room actuelle
var room_name = room_get_name(PHARE_TRANSITION);

// Si elle n'est pas encore marquée, on l'ajoute
if (!ds_map_exists(global.visited_rooms, room_name))
{
    ds_map_add(global.visited_rooms, room_name, true);
}