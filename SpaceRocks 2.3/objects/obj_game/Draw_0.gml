switch(room){
case rm_game:
draw_text(20,20, "SCORE: "+string(score));
draw_text(20,40, "LIVES: "+string(lives));
draw_text(20,60, "HIGH SCORE: "+string(global.high_score));
break;

case rm_start:
draw_set_halign(fa_center);
var c = c_yellow
draw_text_transformed_color(
	room_width/2, 100, "SPACE NUGS",
	3,3,3, c,c,c,c, 1

);
draw_text(
room_width/2, 200,
@"See how high you can get your score!

UP: MOVE
LEFT/RIGHT: TURN
SPACE: SHOOT

(PRESS ENTER TO START)
"
);
draw_set_halign(fa_left);

break;

case rm_gameover:
draw_set_halign(fa_center);
var c = c_red
draw_text_transformed_color(
	room_width/2, 50, "GAME OVER",
	4,4,4, c,c,c,c, 1

);
draw_text(
room_width/2, 250,
"FINAL SCORE: "+string(score)
);
draw_text(
room_width/2, 270,
"HIGH SCORE: "+string(global.high_score)
);
draw_text(
room_width/2, 290,
"Press enter to try again"
);
if(global.display = 1){
var b = c_olive
draw_text_transformed_color(
	room_width/2, 400, "NEW HIGH SCORE!",
	1.5,1.5,0, b,b,b,b, 1
);
}
draw_set_halign(fa_left);
	break;

case rm_win:
draw_set_halign(fa_center);
var c = c_purple
draw_text_transformed_color(
	room_width/2, 200, "VICTORY ROYALE!",
	3,3,3, c,c,c,c, 1

);
draw_text(
room_width/2, 200,
"Press Enter To Play Again!"
);
draw_set_halign(fa_left);
break;
}