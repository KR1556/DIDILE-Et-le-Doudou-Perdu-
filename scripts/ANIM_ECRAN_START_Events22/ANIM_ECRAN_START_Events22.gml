

function ANIM_ECRAN()
{
	audio_play_sound(Snd_Footsteps, 100, true);
	audio_play_sound(Snd_Nature_Ambience, 100, true);
}

function Music_Titre()
{
	audio_play_sound(Snd_Essai_Titre, 100, true);
}

function Stop_Marche()
{
	audio_stop_sound(Snd_Footsteps);
}

function Jump()
{
	audio_play_sound(Snd_Jump, 100, false);
}

function Reprise_Marche()
{
	audio_play_sound(Snd_Footsteps, 100, true);
	audio_play_sound(Snd_Jump_3, 100, false);
}

function Desactive_Footsteps()
{
	audio_stop_sound(Snd_Footsteps);
	
}

function Fin_Animation()
{
	room_goto(ECRAN_TITRE_FIN);
	instance_destroy(self.elementID);
}
