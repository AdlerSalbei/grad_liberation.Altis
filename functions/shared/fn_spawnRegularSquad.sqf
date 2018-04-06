params [ "_sector", "_squadies_to_spawn" ];

private _sectorpos = [ getMarkerPos _sector, random 100, random 360 ] call BIS_fnc_relPos;

private _spawnpos = zeropos;
while {_spawnpos distance zeropos < 1000} do {
	_spawnpos = ([_sectorpos, random 50, random 360] call BIS_fnc_relPos) findEmptyPosition [5, 100, "B_Heli_Light_01_F"];
	if (count _spawnpos == 0) then {_spawnpos = zeropos;};
};

private _corrected_amount = round ((count _squadies_to_spawn) * ([] call grad_liberation_shared_fnc_adaptiveOpforFactor));
private _grp = createGroup LIB_side_enemy;

{
	if ((count (units _grp)) < _corrected_amount) then {
		_x createUnit [_spawnpos, _grp, "this addMPEventHandler [""MPKilled"", {_this spawn [] call grad_liberation_shared_fnc_killManager}]"];
	};
	sleep 0.1;
} forEach _squadies_to_spawn;

_grp;
