//scr_fightpick()
if (room == rm_beach)
{
    switch(irandom(1))
    {
        case 0:
            global.enemy = instance_create(800, 600, obj_crab);
        case 1:
            global.enemy = instance_create(800, 600, obj_dolphin);
    }
}

else if (room == rm_jungle)
{
    switch(irandom(1))
    {
        case 0:
            global.enemy = instance_create(800, 600, obj_kooka);
        case 1:
            global.enemy = instance_create(800, 600, obj_snake);
    }
}

else if (room == rm_cave)
{
    switch(irandom(1))
    {
        case 0:
            global.enemy = instance_create(800, 600, obj_snail);
        case 1:
            global.enemy = instance_create(800, 600, obj_anteater);
    }
}

else if (room == rm_mountain)
{
    switch(irandom(1))
    {
        case 0:
            global.enemy = instance_create(800, 600, obj_gorilla);
        case 1:
            global.enemy = instance_create(800, 600, obj_puma);
    }
}

else if (room == rm_sandcastle)
{
    switch(irandom(1))
    {
        case 0:
            global.enemy = instance_create(800, 600, obj_turtle)
        case 0:
            global.enemy = instance_create(800, 600, obj_crab_hon)
    }
}
