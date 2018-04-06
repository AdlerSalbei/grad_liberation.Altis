unitcap = 0;
liberation_heli_count = 0;
liberation_plane_count = 0;

while {true} do {
	private _local_unitcap = 0;
	private _local_heli_count = 0;
	private _local_plane_count = 0;
	{
		if ((side group _x == LIB_side_friendly) && (alive _x) && ((_x distance startbase) > 250 || (isPlayer _x))) then {
			_local_unitcap = _local_unitcap + 1;
		};
	} forEach allUnits;
	{
		if (((typeOf _x) in liberation_friendly_air_classnames) && (alive _x) && !(_x getVariable ["liberation_preplaced", false])) then {
			if (_x isKindOf "Helicopter") then {
				_local_heli_count = _local_heli_count + 1;
			};
			if (_x isKindOf "Plane") then {
				_local_plane_count = _local_plane_count + 1;
			};
		};
	} forEach vehicles;
	unitcap = _local_unitcap;
	liberation_heli_count = _local_heli_count;
	liberation_plane_count = _local_plane_count;
	sleep 1;
};
