[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

if (!liberation_use_whitelist) exitWith {};

private [ "_commanderobj", "_tagmatch", "_idmatch", "_namematch" ];

waitUntil { alive player };
sleep 1;

_commanderobj = [] call grad_liberation_common_fnc_getCommander;
if ( !isNull _commanderobj ) then {
	if ( player == _commanderobj && !([] call grad_liberation_common_fnc_isAdmin)) then {

		_tagmatch = false;
		_idmatch = false;
		_namematch = false;

		if ( !isNil "LIB_whitelisted_tags" ) then {
			if ( count (squadParams _commanderobj) != 0 ) then {
				if ( ((squadParams _commanderobj select 0) select 0) in LIB_whitelisted_tags  ) then {
					_tagmatch = true;
				};
			};
		};

		if ( !isNil "LIB_whitelisted_steamids" ) then {
			if ( ( getPlayerUID _commanderobj ) in LIB_whitelisted_steamids ) then {
				_idmatch = true;
			};
		};

		if ( !isNil "LIB_whitelisted_names" ) then {
			if ( ( name _commanderobj ) in LIB_whitelisted_names ) then {
				_namematch = true;
			};
		};

		if ( !( _tagmatch || _idmatch || _namematch ) ) then {

			sleep 1;
			if ( alive _commanderobj ) then {
				endMission "END1";
			};
		};
	};
};
