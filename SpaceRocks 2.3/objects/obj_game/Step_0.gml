if(keyboard_check_pressed(vk_enter)){
switch(room){
case rm_start:
room_goto(rm_game);
break;

case rm_win:
case rm_gameover:
lives = 3;
score = 0;
global.display = 0;
room_goto(rm_start);
break; 
}
}
if (room == rm_game){
if(lives <= 0){
	if(global.prev_hs < global.high_score){
		global.prev_hs = global.high_score;
		global.display = 1;
		audio_play_sound(win,10,false);
	}
	room_goto(rm_gameover);
	
}
}
if(score > global.high_score){
	global.high_score = score
}