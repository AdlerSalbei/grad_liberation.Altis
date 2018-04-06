if (!isServer) exitWith {};

params ["_groupToDelete"];

private _temp = +KP_liberation_logistics;

_temp = _temp - [_groupToDelete];

{
	_x set [0, [_forEachIndex] call grad_liberation_shared_fnc_getMilitaryID];
} forEach _temp;

KP_liberation_logistics = +_temp;
