/// @description Insert description here
// You can write your code in this editor
wpm = 0;
wpm = global.totalcorrectCount/(global.timeused/60)/5;

draw_text(x,y,"Correct Keys Pressed: " + string(global.totalcorrectCount));
draw_text(x,y+20,"Incorrect Keys Pressed: " + string(global.incorrectCount));
draw_text(x,y+80,"timer"+string(global.timeused));
draw_text(x,y+40,"Keystrokes Per Minute: " + string(global.totalcorrectCount/(global.timeused/60)));
draw_text(x,y+60,"Words Per Minute: " + string(wpm));
