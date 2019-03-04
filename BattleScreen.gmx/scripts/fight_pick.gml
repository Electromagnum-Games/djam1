///fight_pick()
switch(room)
{
    case rm_beach:
        c = irandom(1);
        if(c == 0)
        {
            instance_create(960, 720, enm_crab);
        }
        else
        {
            instance_create(960, 720, enm_dolphin);
        }
        break;
    case rm_forest:
        c = irandom(1);
        if(c == 0)
        {
            instance_create(960, 720, enm_kooka);
        }
        else
        {
            instance_create(960, 720, enm_snake);
        }
    case rm_cave:
        c = irandom(1);
        if(c == 0)
        {
            instance_create(960, 720, enm_snail);
        }
        else
        {
            instance_create(960, 720, enm_anteater);
        }
    case rm_mountain:
        c = irandom(1);
        if(c == 0)
        {
            instance_create(960, 720, enm_gorilla);
        }
        else
        {
            instance_create(960, 720, enm_puma);
        }
    case rm_sandcastle:
        c = irandom(1);
        if(c == 0)
        {
            instance_create(960, 720, enm_turtle);
        }
        else
        {
            instance_create(960, 720, enm_crab_hon);
        }
}
