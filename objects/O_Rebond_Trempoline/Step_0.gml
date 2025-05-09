if (instance_exists(O_DIDILE_SABRE2))
{
    if (bbox_bottom >= O_DIDILE_SABRE2.bbox_bottom)
    {
        sprite_index = S_Rebond_Sabre2;
    }
    else
    {
        sprite_index = -1;
    }
}
else
{
    sprite_index = -1;
}

instance_deactivate_object(O_SKIP_Lila_Teleph);
