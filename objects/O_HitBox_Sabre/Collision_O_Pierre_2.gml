// Collision de O_HitBox_Sabre avec O_Pierre_2
if (press_attack)
{
   if (O_Pierre_2.collision_count < 1)
   {
		audio_play_sound(Snd_Stone_1, 65, false);
		O_Pierre_2.collision_count += 1;
		layer_sequence_create("Pierres_2", 460, 306, Anim_Pierre_2);
   }
}
