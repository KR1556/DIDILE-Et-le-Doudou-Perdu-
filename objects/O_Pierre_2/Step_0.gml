
grav = 2;
vspd = 2;

vspd += grav;

// Vérifie la collision avant de déplacer verticalement
if (!place_meeting(x, y, O_WALL))
{
    // S'il n'y a pas de collision, déplacer verticalement
    y += vspd;
}
else
{
    // S'il y a une collision, réinitialiser la vitesse verticale
    vspd = 0;
	
}