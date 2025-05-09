// Collision de O_HitBox_Sabre avec O_Roches_H1
if (press_attack)
{
   if (O_Roches_H4.collision_count < 1)
   {
		audio_play_sound(Snd_Stone_1, 65, false);
		O_Roches_H4.collision_count += 1;
		layer_sequence_create("Pierres_2", 1237, 62, Anim_Roc_Break_Haut_4);
   }
}
