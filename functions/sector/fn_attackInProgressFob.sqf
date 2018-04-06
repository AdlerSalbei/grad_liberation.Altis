params [ "_thispos" ];
private [ "_attacktime", "_ownership", "_grp" ];

sleep 5;

_ownership = [ _thispos ] call grad_liberation_shared_fnc_sectorOwnership;
if ( _ownership != LIB_side_enemy ) exitWith {};

if ( liberation_blufor_defenders ) then {
	_grp = creategroup LIB_side_friendly;
	{ _x createUnit [ _thispos, _grp,'this addMPEventHandler ["MPKilled", {_this spawn [] call grad_liberation_shared_fnc_killManager}]']; } foreach blufor_squad_inf;
	sleep 3;
	_grp setBehaviour "COMBAT";
};

sleep 60;

_ownership = [ _thispos ] call grad_liberation_shared_fnc_sectorOwnership;
if ( _ownership == LIB_side_friendly ) exitWith {
	if ( liberation_blufor_defenders ) then {
		{
			if ( alive _x ) then { deleteVehicle _x };
		} foreach units _grp;
	};
};

[_thispos, 1] remoteExec ["remote_call_fob"];
_attacktime = LIB_vulnerability_timer;

while { _attacktime > 0 && ( _ownership == LIB_side_enemy || _ownership == LIB_side_resistance ) } do {
	_ownership = [ _thispos ] call grad_liberation_shared_fnc_sectorOwnership;
	_attacktime = _attacktime - 1;
	sleep 1;
};

waitUntil {
	sleep 1;
	[ _thispos ] call grad_liberation_shared_fnc_sectorOwnership != LIB_side_resistance;
};

if ( LIB_endgame == 0 ) then {
	if ( _attacktime <= 1 && ( [ _thispos ] call grad_liberation_shared_fnc_sectorOwnership == LIB_side_enemy ) ) then {
		[_thispos, 2] remoteExec ["remote_call_fob"];
		sleep 3;
		LIB_all_fobs = LIB_all_fobs - [_thispos];
		publicVariable "LIB_all_fobs";
		reset_battlegroups_ai = true;
		[_thispos] call destroy_fob;
		trigger_server_save = true;
		stats_fobs_lost = stats_fobs_lost + 1;
	} else {
		[_thispos, 3] remoteExec ["remote_call_fob"];
		{ [_x] spawn prisonner_ai; } foreach ( [ _thispos nearEntities [ "Man", LIB_capture_size * 0.8], { side group _x == LIB_side_enemy } ] call BIS_fnc_conditionalSelect );
	};
};

sleep 60;

if ( liberation_blufor_defenders ) then {
	{
		if ( alive _x ) then { deleteVehicle _x };
	} foreach units _grp;
};