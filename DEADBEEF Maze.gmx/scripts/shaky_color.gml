///shaky_color()
var shake = 50
var col = make_color_rgb(0 + irandom_range(0, shake), 255 - irandom_range(0, shake), 255 - irandom_range(0, shake));

draw_set_color(col); 
