/*
grad_liberation_common_fnc_getResistanceTier.sqf
Author: Wyqer
Website: www.killahpotatoes.de
Date: 2017-10-08

Description:
Returns the current tier level of the resistance forces

Parameters:
NONE

Return:
INTEGER - Tier level
*/

private _return = 1;

if (liberation_guerilla_strength >= liberation_resistance_tier2) then {
	_return = 2;
};

if (liberation_guerilla_strength >= liberation_resistance_tier3) then {
	_return = 3;
};

_return
