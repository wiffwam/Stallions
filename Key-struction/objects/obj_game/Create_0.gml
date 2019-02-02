/// @description Insert description here
// You can write your code in this editor
score = 2;
if(global.level ==1)
score = score;
else
score = score+(global.level*20);
audio_stop_all();
audio_play_sound(mus_game,0,true);

state = "IN_GAME";
alpha = 1;

//DECLARE GLOBAL VARIABLES

global.charCorrectGoal = 7;
global.time = 600;
global.shouldGotoGameover = false;
global.incorrectCount = 0;
global.totalkeyspressed = 0;
global.totalcorrectCount = 0;
global.correctCount = 0;





//Level
//global.currentScore = 0;
//global.levelCompleted = false;
//global.level1 = 20; //score to pass


