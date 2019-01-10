//draw_set_color(back_color);
//draw_rectangle(x,y,x+width,y+height,0);
//-------------------------------------
draw_set_color(text_color);
draw_set_font(font);
//-------------------------------------
var _y = y + padding;
for (var i = first_line; i < current_line; i++) {
    draw_text(x+padding,_y,string_hash_to_newline(lines[|i]));
    _y += line_height;
}
//-------------------------------------
if (!reached_end) { draw_text(x+padding,_y,string_hash_to_newline(current_line_display_text)); }
//-------------------------------------
draw_set_color(c_white);
