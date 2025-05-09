

function Son_Porte_OPEN()
{
	audio_play_sound(Snd_Door, 100, false);
	audio_play_sound(Snd_Footsteps, 100, false);
	instance_deactivate_object(O_DIDILE);
	instance_deactivate_object(O_CAMERA);
}


function Porte_Destroy()
{
	room_goto(Hutte);
	
	instance_activate_object(O_DIDILE);
	instance_activate_object(O_CAMERA);	
	layer_sequence_destroy(self.elementID);
}

