
score = 0;
lives = 3;
global.prev_hs = 0;
global.display = 0;

ini_open("saveData.ini");
global.high_score = ini_read_real("Variables","global.high_score",0);
ini_close();

draw_set_font(fnt_text);

randomize();


