/// @description Insert description here
// You can write your code in this editor
global.data=ds_list_create();

if (file_exists("GameData.dat"))
{
    tempfile=file_text_open_read("GameData.dat");
    ds_list_read(global.data,file_text_read_string(tempfile));
    file_text_close(tempfile);
}
else
{
    ds_list_add(global.data,0);
    tempfile=file_text_open_write("GameData.dat");
    file_text_write_string(tempfile,ds_list_write(global.data));
    file_text_close(tempfile);
}

global.highscore = ds_list_find_value(global.data, 0);

audio_stop_all();
audio_play_sound(snd_musicMenu, 10, 1);