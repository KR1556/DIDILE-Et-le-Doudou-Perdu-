
room_goto(Outside);

instance_destroy(O_DIDILE_REAL);
instance_deactivate_object(O_CAMERA);

// Coordonnées pour START ( c'est pas une erreur de nom de pièce)
instance_create_layer(3795, 1012, "DIDILE", O_DIDILE_REAL);
instance_activate_object(O_CAMERA);

