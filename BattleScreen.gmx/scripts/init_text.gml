///init_text(*strings)
for(i = 0; i < argument_count; i++)
{
    global.message[i] = argument[i];
    global.message_end = i;
}

global.message_current = 0;
global.message_draw = "";
global.increase = 1;
global.characters = 0;

global.message_length = string_length(global.message[global.message_current]);
instance_create(0, 0, obj_battle_text);
