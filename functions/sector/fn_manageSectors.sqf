active_sectors = [];

waitUntil {!isNil "blufor_sectors"};
waitUntil {!isNil "sectors_allSectors"};

if (liberation_sectorspawn_debug > 0) then {diag_log format ["[KP LIBERATION] [SECTORSPAWN] Sector Manager started at %1", time];};

private _timer = 0;

while {LIB_endgame == 0} do {
	{
		private _nextsector = _x;
		private _opforcount =  [] call grad_liberation_common_fnc_opforCap;

		if (_opforcount < LIB_sector_cap) then {

			if (([getmarkerpos _nextsector, [_opforcount] call grad_liberation_common_fnc_getCorrectedSectorRange, LIB_side_friendly] call grad_liberation_common_fnc_getUnitsCount > 0) && !(_nextsector in active_sectors)) then {

				_hc = [] call grad_liberation_common_fnc_lessLoadedHC;

				if (isNull _hc) then {
					[_nextsector] spawn manageOneSector;
				} else {
					[_nextsector] remoteExec ["manageOneSector", _hc];
				};

				if ((_nextsector in sectors_factory) || (_nextsector in sectors_capture)) then {
					[_nextsector] call manageCaptureboxes;
				};

				if (_nextsector in sectors_military) then {
					[_nextsector] call manageIntel;
				};
			};
		};
		sleep 0.25;
	} forEach (sectors_allSectors - blufor_sectors);
	
	if (liberation_sectorspawn_debug > 0) then {
		_timer = _timer + 1;
		if ((_timer % 5) == 0) then {
			private _current_sectors = [];
			{
				_current_sectors pushBack (markerText _x);
			} forEach active_sectors;
			diag_log format ["[KP LIBERATION] [SECTORSPAWN] Overview at %1 - active sectors: %2", time, _current_sectors];
		};
	};
	sleep 1;
};
