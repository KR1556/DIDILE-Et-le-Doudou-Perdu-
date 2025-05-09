//Créer l’orientation d’écoute
audio_listener_set_orientation(0, 1, 1, 0, 0, 0, 1);

//Créer le modèle de « chute » (falloff)
audio_falloff_set_model(audio_falloff_exponent_distance_scaled);

//Supprimer tous les effects
audio_bus_main.bypass = true;