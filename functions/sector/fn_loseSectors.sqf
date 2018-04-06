waitUntil { !isNil "LIB_all_fobs" };
waitUntil { !isNil "blufor_sectors" };

sleep 5;

attack_in_progress = false;

while { LIB_endgame == 0 } do {

	{
		_ownership = [ markerpos _x ] call grad_liberation_common_fnc_sectorOwnership;
		if ( _ownership == LIB_side_enemy ) then {
			[ _x ] call attackInProgressSector;
		};
		sleep 0.5;
	} foreach blufor_sectors;

	{
		_ownership = [ _x ] call grad_liberation_common_fnc_sectorOwnership;
		if ( _ownership == LIB_side_enemy ) then {
			[ _x ] call attackInProgressFob;
		};
		sleep 0.5;
	} foreach LIB_all_fobs;

	sleep 1;

};
