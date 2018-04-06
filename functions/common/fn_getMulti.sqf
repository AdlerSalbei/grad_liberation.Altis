/*
grad_liberation_common_fnc_getMulti.sqf
Author: Wyqer
Website: www.killahpotatoes.de
Date: 2017-10-08

Description:
Returns the current level of the civil reputation (positive or negative)

Parameters:
NONE

Return:
INTEGER - Reputation level
*/

private _reputation = if (liberation_civ_rep < 0) then {liberation_civ_rep * -1} else {liberation_civ_rep};
private _return = floor (_reputation / 25);
if (_return == 4) then {_return = 3;};
_return
