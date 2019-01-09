if (!reached_end) {
    if (text_speed_counter-- <= 0) {
        //-------------------------------------
        text_speed_counter = text_speed;
        //-------------------------------------
        if (current_line_pos > current_line_length) {  //reached end of current line?
            if (++current_line < ds_list_size(lines)) {  //have not reached end of message
                //-------------------------------------
                first_line = clamp(first_line + (current_line >= (first_line + height_lines)), 0, max(0,ds_list_size(lines) - height_lines));
                //-------------------------------------
                current_line_text = lines[|current_line];
                current_line_display_text = "";
                current_line_length = string_length(current_line_text);
                current_line_pos = 1;
            } else { reached_end = true; }  //have reached end of message
        } else { current_line_display_text += string_char_at(current_line_text,current_line_pos++); }  //continue with current line
    }
}
