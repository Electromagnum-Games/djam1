/// scale_canvas(base width, base height, current width, current height, center);
//argument0 = base width;
//argument1 = base height;
//argument2 = current width
//argument3 = current height
//argument4 = center window (true, false);

var aspect = (argument0 / argument1);

if ((argument2 / aspect) > argument3)
    {
    window_set_size((argument3 * aspect), argument3);
    }
else
    {
    window_set_size(argument2, (argument2 / aspect));
    }

if (argument4) window_center();

surface_resize(application_surface, min(window_get_width(), argument0), min(window_get_height(), argument1));

var base_w = 1920;
var base_h = 1440;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = 4 / 3;
if (max_w < max_h)
    {
    // portait
    var VIEW_WIDTH = min(base_w, max_w);
    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
    }

view_wview[0] = floor(VIEW_WIDTH);
view_hview[0] = floor(VIEW_HEIGHT);
view_wport[0] = max_w;
view_hport[0] = max_h;

surface_resize(application_surface, view_wview[0], view_hview[0]);
