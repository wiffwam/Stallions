/// @description scr_create_textbox(x,y,w,h lines,padding,text_speed,delay_start,back_color,text_color,font,message);
/// @param x
/// @param y
/// @param w
/// @param h lines
/// @param padding
/// @param text_speed
/// @param delay_start
/// @param back_color
/// @param text_color
/// @param font
/// @param message
//x, y = upper-left corner of textbox
//w = width of textbox in pixels
//h lines = height of text box in number of lines that can be shown at once
//    actual height of text box is h * (height of each line) + 2 * padding
//padding = number of pixels around edge of text.  text field is shrunk down from (w,h) by this ammount.
//text_speed = number of steps to wait between drawing characters. 0 = no delay.
//delay_start = number of steps to wait before text begins to draw
//back_color = color of background rectangle
//text_color = color of foreground text
//font = font resource to use for text
//message = the message which will be displayed in the text box.

//returns id of newly created obj_textbox instance

var _t = instance_create(argument0,argument1,obj_story_text_effect);

//------------------------------------------------------------------------------

with (_t) {
    width = argument2;
    height_lines = argument3;
    padding = argument4;
    text_speed = argument5;
    text_speed_counter = argument6;
    back_color = argument7;
    text_color = argument8;
    text_width = width - padding * 2;
    font = argument9;
    draw_set_font(font);
    line_height = string_height(string_hash_to_newline("a"));
    height = height_lines * line_height + padding * 2;
    lines = ds_list_create();
    //------------------------------------------
    var _message = argument10;
    var _message_length = string_length(_message);
    //------------------------------------------
    //this code segment breaks up the text message into multiple lines 
    //so that each line will fit within the width of the textbox
    var _first = 1;
    var _last = 1;
    var _prev_non_space = false;
    var _space_encountered = false;
    var _non_space_encountered = false;
    var _line_width = 0;
    
    for (var _i = 1; _i <= _message_length; _i++) {
        var _c = string_char_at(_message,_i);
        //------------------------------------------
        if (!_non_space_encountered) { _first = _i; _last = _i; }
        if (_c == "#") { _last = _i - 1; }
        else if (_c == " ") {
            if (_non_space_encountered) { _space_encountered = true; }
            if (_prev_non_space) { _last = _i - 1; }
            _prev_non_space = false;
        } else { _non_space_encountered = true; _prev_non_space = true; }
        if (!_space_encountered) { _last = _i - 1; }
        if (_non_space_encountered) { _line_width += string_width(string_hash_to_newline(_c)); }
        //------------------------------------------
        if (_c == "#") or (_line_width > text_width) or (_i == _message_length) {
            if (_i == _message_length) and (_line_width <= text_width) { _last = _i; }
            ds_list_add(lines,string_copy(_message,_first,_last - _first + 1));   
            if (_c == "#") { _first = _i + 1; }
            else { _first = _last + 1; }
            _last = _first;
            _i = _first - 1;
            _prev_non_space = false;
            _space_encountered = false;
            _non_space_encountered = false;
            _line_width = 0;
        }
    }  
}

//------------------------------------------------------------------------------

return _t;
