
grav = 2;
vspd = 2;

vspd += grav;

// Vérifie les collisions en bas
if (vspd > 0)
{
    if (!place_meeting(x, y + vspd, O_WALL))
	{
        // Pas de collision en bas, déplacer l'objet
        y += vspd;
    }
	else
	{
        // Collision en bas, ajuster la position et réinitialiser la vitesse
        while (!place_meeting(x, y + 1, O_WALL))
		{
            y += 1; // Ajustement pixel par pixel pour éviter de traverser l'objet
        }
        vspd = 0;
    }
}
// Vérifie les collisions en haut
else if (vspd < 0)
{
    if (!place_meeting(x, y + vspd, O_WALL))
	{
        // Pas de collision en haut, déplacer l'objet
        y += vspd;
    }
	else
	{
        // Collision en haut, ajuster la position et réinitialiser la vitesse
        while (!place_meeting(x, y - 1, O_WALL))
		{
            y -= 1; // Ajustement pixel par pixel pour éviter de traverser l'objet
        }
        vspd = 0;
    }
}