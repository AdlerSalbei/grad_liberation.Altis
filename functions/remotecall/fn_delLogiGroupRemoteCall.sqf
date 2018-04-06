if (!isServer) exitWith {};

params ["_groupToDelete"];

private _temp = +liberation_logistics;

_temp = _temp - [_groupToDelete];

{
	_x set [0, [_forEachIndex] call grad_liberation_common_fnc_getMilitaryID];
} forEach _temp;

liberation_logistics = +_temp;
