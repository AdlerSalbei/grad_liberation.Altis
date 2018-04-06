if (!isServer) exitWith {};

params ["_index", "_clientID"];

private ["_time","_nextState"];

logiError = 0;

if ((((liberation_logistics select _index) select 7) == 0) || (((liberation_logistics select _index) select 7) == 5) || (((liberation_logistics select _index) select 7) == 6)) exitWith {logiError = 1;(localize "STR_LOGISTIC_STANDBY_ERROR") remoteExec ["hint",_clientID]; _clientID publicVariableClient "logiError";};

switch ((liberation_logistics select _index) select 7) do {
	case 1;
	case 3: {
		_time = ceil (((ceil ((((liberation_logistics select _index) select 6) select 0) / 100)) + (ceil ((((liberation_logistics select _index) select 6) select 1) / 100)) + (ceil ((((liberation_logistics select _index) select 6) select 2) / 100))) / 3);
		_time = _time + 1;
	};
	case 2;
	case 4: {
		_time = ceil ((((liberation_logistics select _index) select 2) distance2D ((liberation_logistics select _index) select 3)) / 400);
		_time = _time - ((liberation_logistics select _index) select 8);

		_time = _time + (ceil (((ceil ((((liberation_logistics select _index) select 6) select 0) / 100)) + (ceil ((((liberation_logistics select _index) select 6) select 1) / 100)) + (ceil ((((liberation_logistics select _index) select 6) select 2) / 100))) / 3));
		_time = _time + 1;
	};
};

_nextState = switch ((liberation_logistics select _index) select 7) do {case 1; case 2: {5}; case 3; case 4: {6};};

liberation_logistics set [_index,[
	(liberation_logistics select _index) select 0,
	(liberation_logistics select _index) select 1,
	(liberation_logistics select _index) select 2,
	(liberation_logistics select _index) select 3,
	(liberation_logistics select _index) select 4,
	(liberation_logistics select _index) select 5,
	(liberation_logistics select _index) select 6,
	_nextState,
	_time,
	0
]];
