
if (global.shake_timer > 0)
{
    global.shake_timer -= 1;
    global.shake_age += 1;

    var mag = 0;

    if (global.shake_age < global.shake_fade)
    {
        // Fade-in
        mag = lerp(0, global.shake_magnitude_max, global.shake_age / global.shake_fade);
    }
    else if (global.shake_timer < global.shake_fade)
    {
        // Fade-out
        mag = lerp(0, global.shake_magnitude_max, global.shake_timer / global.shake_fade);
    }
    else
    {
        // Plein effet
        mag = global.shake_magnitude_max;
    }

    var cam_x = 3200 + irandom_range(-mag, mag);
    var cam_y = 720 + irandom_range(-mag, mag);

    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}
else
{
    global.shake_age = 0;
    camera_set_view_pos(view_camera[0], 3200, 720); // Position par défaut
}
