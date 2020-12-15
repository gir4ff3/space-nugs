if(room != rm_start and room != rm_gameover){
	exit;
}else{
	ini_open("saveData.ini");
	ini_write_real("Variables","global.high_score",global.high_score);
	ini_close();
}