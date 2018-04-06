params ["_vehicle"];

private _grp = createGroup LIB_side_enemy;
private _vehcrew = [];
while {count units _grp < 3} do {
	(selectRandom militia_squad) createUnit [getpos _vehicle, _grp,"this addMPEventHandler [""MPKilled"", {_this spawn [] call grad_liberation_common_fnc_killManager}]"];
};
((units _grp) select 0) moveInDriver _vehicle;
((units _grp) select 1) moveInGunner _vehicle;
((units _grp) select 2) moveInCommander _vehicle;
{
	if (vehicle _x == _x) then {
		deleteVehicle _x;
	};
} foreach (units _grp);
