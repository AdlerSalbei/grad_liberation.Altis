params [ "_source", "_permission" ];
private [ "_uidvar", "_ret" ];

if ( isNil "LIB_last_permission_check_time" ) then { LIB_last_permission_check_time = -1000; };
if ( isNil "LIB_permissions_cache" ) then { LIB_permissions_cache = []; };

_ret = false;

if ( !liberation_permissions_param ) then {
	_ret = true;
} else {
	if ( !(isNil "LIB_permissions") && !(isNull _source) ) then {

		if ( time > LIB_last_permission_check_time + 10 ) then {
			LIB_last_permission_check_time = time;
			_uidvar = getPlayerUID _source;
			{ if ( _uidvar == _x select 0 ) exitWith { LIB_permissions_cache  = [] + (_x select 1) }; } foreach LIB_permissions;
		};

		if ( count LIB_permissions_cache > _permission ) then {
			_ret = LIB_permissions_cache select _permission;
		};
	};
};

_ret