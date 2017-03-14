///auto_tile script pulled from original obj_lvl
/*
//get tile size
var tile_width = CELL_WIDTH/2;
var tile_height = CELL_HEIGHT/2;

//add tiles   ***ALL THE 2's ARE DUE TO 32x32 WALL TILES ON 64x64 FLOOR***
for(var yy = 0; yy < height * 2; yy++){
    for(var xx = 0; xx < width * 2; xx++){
        if(grid[# xx div 2, yy div 2] == FLOOR){
            //get tile's x and y
            var tile_x = xx * tile_width;
            var tile_y = yy * tile_height;
            
            var right = grid[# (xx + 1) div 2, yy div 2] != FLOOR; 
            var left = grid[# (xx - 1) div 2, yy div 2] != FLOOR;
            var top = grid[# xx div 2, (yy - 1) div 2] != FLOOR;
            var bottom = grid[# xx div 2, (yy + 1) div 2] != FLOOR;
            
            var top_right = grid[# (xx + 1) div 2, (yy - 1) div 2] != FLOOR;
            var top_left = grid[# (xx - 1) div 2, (yy - 1) div 2] != FLOOR;
            var bottom_right = grid[# (xx + 1) div 2, (yy + 1) div 2] != FLOOR;
            var bottom_left = grid[# (xx - 1) div 2, (yy + 1) div 2] != FLOOR;
            
            if(right){
                if(bottom){
                    tile_add(bg_walltiles, tile_width * 4, tile_height * 1, tile_width, tile_height, tile_x + tile_width, tile_y, -tile_y);
                } else if (top){
                    if(top_right){
                        tile_add(bg_walltiles, tile_width * 4, tile_height * 0, tile_width, tile_height, tile_x + tile_width, tile_y - tile_height, -tile_y);
                    } else {
                        tile_add(bg_walltiles, tile_width * 3, tile_height * 0, tile_width, tile_height, tile_x, tile_y - tile_height, -tile_y);
                    }
                    tile_add(bg_walltiles, tile_width * 0, tile_height * 1, tile_width, tile_height, tile_x + tile_width, tile_y, -tile_y);
                } else {
                    tile_add(bg_walltiles, tile_width * 0, tile_height * 1, tile_width, tile_height, tile_x + tile_width, tile_y, -tile_y);
                }
            }
            if(left){
                if(bottom){
                    tile_add(bg_walltiles, tile_width * 3, tile_height * 1, tile_width, tile_height, tile_x - tile_width, tile_y, -tile_y);
                } else if (top){
                    if(top_left){
                        tile_add(bg_walltiles, tile_width * 3, tile_height * 0, tile_width, tile_height, tile_x - tile_width, tile_y - tile_height, -tile_y);
                    } else {
                        tile_add(bg_walltiles, tile_width * 4, tile_height * 0, tile_width, tile_height, tile_x, tile_y - tile_height, -tile_y);
                    }
                    tile_add(bg_walltiles, tile_width * 2, tile_height * 1, tile_width, tile_height, tile_x - tile_width, tile_y, -tile_y);
                } else {
                    tile_add(bg_walltiles, tile_width * 2, tile_height * 1, tile_width, tile_height, tile_x - tile_width, tile_y, -tile_y);
                }
            }
            
            if(top){
                if(!top_right){
                    tile_add(bg_walltiles, tile_width * 2, tile_height * 2, tile_width, tile_height, tile_x, tile_y - tile_height, -tile_y);
                } else if(!top_left){
                    tile_add(bg_walltiles, tile_width * 0, tile_height * 2, tile_width, tile_height, tile_x, tile_y - tile_height, -tile_y);
                } else {
                    tile_add(bg_walltiles, tile_width * 1, tile_height * 2, tile_width, tile_height, tile_x, tile_y - tile_height, -tile_y);
                }
            }
            if(bottom){
                if(!bottom_right){
                    tile_add(bg_walltiles, tile_width * 2, tile_height * 0, tile_width, tile_height, tile_x, tile_y, -tile_y);
                } else if(!bottom_left){
                    tile_add(bg_walltiles, tile_width * 0, tile_height * 0, tile_width, tile_height, tile_x, tile_y, -tile_y);
                } else {
                    tile_add(bg_walltiles, tile_width * 1, tile_height * 0, tile_width, tile_height, tile_x, tile_y, -tile_y);
                }
            }
        }
    }
} 
*/
