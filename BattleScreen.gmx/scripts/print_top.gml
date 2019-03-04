///print_top()
global.focus = true;
if (global.characters < global.message_length)
{
    hold = keyboard_check(ord("Z"));
    global.characters += global.increase * (1 + hold);
    global.message_draw = string_copy(global.message[global.message_current], 0, global.characters);    
}
else
{
    if(instance_exists(obj_arrow))
    {}
    else
    {
        instance_create(1856, 256, obj_arrow)
    }
    if(keyboard_check_pressed(ord("Z")))
    {
        if(global.message_current < global.message_end)
        {
            global.message_current += 1;
            global.message_length = string_length(global.message[global.message_current]);
            global.characters = 0;
            global.message_draw = "";
        }
        else
        {
            if(keyboard_check_pressed(ord("Z")))
            {
                global.message_draw = "";
                global.focus = false;
                instance_destroy(obj_arrow);
                instance_destroy();
            }
        }
    }
}
