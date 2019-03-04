///reduce_hp(victim, damage)
if(argument[0] == "player")
{
    global.player[? "hp"] -= argument[1];
    if(global.player[? "hp"] <= 0)
    {
        show_message("You died :(");
        game_end();
    }
}
else if(argument[0] == "enemy")
{
    global.enemy[? "hp"] -= argument[1];
}
