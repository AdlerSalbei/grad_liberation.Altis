params ["_sector"];

if (_sector in sectors_bigtown || _sector in sectors_capture) then {
	if (liberation_civrep_debug > 0) then {diag_log format ["[KP LIBERATION] [CIVREP] liberatedSector called at: %1 - Sector: %2", time, markerText _sector];};

	private _penalty = 0;
	
	{
		if (_sector == (_x select 0)) exitWith {_penalty = (_x select 1) - ([_sector] call F_cr_getBuildings)};
	} forEach liberation_cr_sectorbuildings;

	_penalty = _penalty * liberation_cr_building_penalty;

	if (_penalty > 0) then {
		[1, [(_penalty / liberation_cr_building_penalty)]] remoteExec ["grad_liberation_common_fnc_globalMsg"];
	};

	if (_sector in sectors_bigtown) then {
		[(2 * liberation_cr_sector_gain - _penalty), false] spawn F_cr_changeCR;
	} else {
		[(liberation_cr_sector_gain - _penalty), false] spawn F_cr_changeCR;
	};

	if (liberation_civrep_debug > 0) then {diag_log format ["[KP LIBERATION] [CIVREP] liberatedSector finished at: %1 - Penalty: %2", time, _penalty];};
};
