///get_path_to_point(x, y)

var xx = argument0;
var yy = argument1;

xx = (xx div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2
yy = (yy div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2

if(mp_grid_path(obj_lvl.grid_path, path, x, y, xx, yy, 0)){
    path_start(path, 2, path_action_stop, false);
}
