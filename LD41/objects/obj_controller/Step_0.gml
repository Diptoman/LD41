/// @description Insert description here
// You can write your code in this editor

if (_roundIsGoingOn == true)
{
	if (_timer > 0)
	{
		_timer -= 1;
	}
}

if (_bossHP <= 0)
{
	if (_roundIsGoingOn == true)
	{
		event_perform(ev_other, ev_user1);
		_roundIsGoingOn = false;
	}
}

if (_timer <= 0)
{
	if (_roundIsGoingOn == true)
	{
		event_perform(ev_other, ev_user2);
		_roundIsGoingOn = false;
	}
}