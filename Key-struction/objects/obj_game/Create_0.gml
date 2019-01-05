/// @description Insert description here
// You can write your code in this editor
score = 10;
audio_stop_all();
audio_play_sound(mus_game,0,true);

state = "IN_GAME";
alpha = 1;

//DECLARE GLOBAL VARIABLES
global.correctCount = 0;
global.charCorrectGoal = 3;
global.time = 500;
global.shouldGotoGameover = false;


//Level
//global.currentScore = 0;
//global.levelCompleted = false;
//global.level1 = 20; //score to pass


