/// @description Insert description here
// You can write your code in this editor

//Create its modules
alarm[0] = 1;

_stationPointsX = ds_list_create();
_stationPointsY = ds_list_create();
ds_list_add(_stationPointsX, x);
ds_list_add(_stationPointsY, y);

ds_list_add(_stationPointsX, x - 200);
ds_list_add(_stationPointsY, y);

ds_list_add(_stationPointsX, x + 200);
ds_list_add(_stationPointsY, y);

ds_list_add(_stationPointsX, x);
ds_list_add(_stationPointsY, y + 120);

alarm[1] = 300 - floor(random(60));