/// @description Insert description here
// You can write your code in this editor
text = "Final Score: " + string(obj_controller._score);

if (obj_controller._score > global.highscore)
	{
		global.highscore = obj_controller._score;
		ds_list_replace(global.data,0,floor(obj_controller._score));
		tempfile=file_text_open_write("GameData.dat");
		file_text_write_string(tempfile,ds_list_write(global.data));
		file_text_close(tempfile);
		
		text += "\n\nNew Personal Best!";
	}
	
obj_controller._roundIsGoingOn = false;