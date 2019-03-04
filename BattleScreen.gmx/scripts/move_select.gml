///move_select()
if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("S")))
{
    if(instance_exists(btn_start))
    {
        if(y == btn_start.y)
        {
            y = btn_credits.y;
        }
        else if(y == btn_credits.y)
        {
            y = btn_start.y;
        }
    }
    if(instance_exists(btn_attack))
    {
        if !global.focus
        {
            if(y == btn_attack.y)
            {
                y = btn_defend.y;
            }
            else if(y == btn_items.y)
            {
                y = btn_flee.y;
            }
            else if(y == btn_defend.y)
            {
                y = btn_attack.y;
            }
            else if(y == btn_flee.y)
            {
                y = btn_items.y;
            }
        }
    }
}
if(keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")))
{
    if !global.focus
    {
        if(instance_exists(btn_attack))
        {
            if(x == btn_attack.x)
            {
                x = btn_items.x;
            }
            else if(x == btn_items.x)
            {
                x = btn_attack.x;
            }
            else if(x == btn_defend.x)
            {
                x = btn_flee.x;
            }
            else if(x == btn_flee.x)
            {
                x = btn_defend.x;
            }
        }
    }
}
if(keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("K")))
{
    if(!global.focus)
    {
        if(instance_exists(btn_start))
        {
            if(x == btn_start.x and y == btn_start.y)
            {
                if(!instance_exists(obj_name_controller))
                {
                    instance_create(0, 0, obj_name_controller);
                }
            }
            else if(x == btn_credits.x and y == btn_credits.y)
            {
                room_goto(rm_credits);
            }
        }
        if(instance_exists(btn_back))
        {
            room_goto(rm_menu);
        }
        if(instance_exists(btn_attack))
        {
            if(x == btn_attack.x and y == btn_attack.y)
            {
                show_message("Attack");
            }
            else if(x == btn_items.x and y == btn_items.y)
            {
                show_message("Items");
            }
            else if(x == btn_defend.x and y == btn_defend.y)
            {
                show_message("Defend");
            }
            else if(x == btn_flee.x and y == btn_flee.y)
            {
                show_message("Flee");
            }
        }
    }
}
