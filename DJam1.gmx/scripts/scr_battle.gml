//scr_battle(number of enemies in wave)
for(i = argument0; i > 0; i--)
{
    scr_fightpick()
    if(global.ehp <= 0)
    {
        instance_destroy(global.enemy)
    }
}
