// Direction

press_left = input_check("left");
press_right = input_check("right");
press_up = input_check("up");
press_down = input_check("down");

inputDirection = point_direction(0, 0, press_right-press_left, press_down-press_up);
inputMagnitude = (press_right-press_left != 0) || (press_down-press_up != 0);

// Mouvements
hspd = lengthdir_x(inputMagnitude * walkspd, inputDirection);
vspd = lengthdir_y(inputMagnitude * walkspd, inputDirection);

x += hspd;
y += vspd;

// Sons

if ((press_right-press_left != 0) || (press_down-press_up !=0))
{
    if (!audio_is_playing(Snd_LongView))
	{
        audio_play_sound(Snd_LongView, 100, true);	
	}
}
else
{
    audio_stop_sound(Snd_LongView);
}

if (place_meeting(x, y, O_Coll_Paysage_Phare) && audio_is_playing(Snd_LongView))
{
	audio_stop_sound(Snd_LongView);
}

//Son Synchro position perso + émetteur

audio_listener_set_position(0, x, y, 0);