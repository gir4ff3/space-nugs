if(file_exists("saveData.ini")){
	ini_open("saveData.ini");
	global.high_score = ini_read_real("Variables","global.high_score",0);
	ini_close();
}