
function Cut_Musique_Hutte()
{
	audio_stop_sound(Snd_Hutte);
	audio_play_sound(Snd_Sabre_Loot, 100, false);
}



function Frappe_Sabre()
{
	audio_play_sound(Snd_Sabre0, 100, false);
	audio_play_sound(Snd_Animation_Sabre, 100, false);
}

function Anim_Loot_Sabre_Moment()
{
	room_goto(Hutte_SABRE);
	
    layer_sequence_destroy(self.elementID);
	
}

