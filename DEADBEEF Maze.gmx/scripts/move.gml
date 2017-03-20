///move(distance)

var distance = argument0;

if(grid_place_meeting(x + hspd, y)){
    while(!grid_place_meeting(x + sign(hspd), y)){
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

if(grid_place_meeting(x, y + vspd)){
    while(!grid_place_meeting(x, y + sign(vspd))){
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

