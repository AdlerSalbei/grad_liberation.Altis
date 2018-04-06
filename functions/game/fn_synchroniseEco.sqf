sync_eco = []; publicVariable "sync_eco";

waitUntil{!isNil "save_is_loaded"};
waitUntil{!isNil "liberation_production"};
waitUntil{!isNil "liberation_logistics"};
waitUntil{!isNil "liberation_production_markers"};

if (liberation_production_markers isEqualTo []) then {
	{
		private _facility = selectRandom [[true,false,false], [false,true,false], [false,false,true]];
		liberation_production_markers pushBack [_x, _facility select 0, _facility select 1, _facility select 2, markerText _x];
	} forEach sectors_factory;
};

private _liberation_production_old = [0];
private _liberation_logistics_old = [0];

while {true} do {

	waitUntil {sleep 0.25;
		!(_liberation_production_old isEqualTo liberation_production)
		|| !(_liberation_logistics_old isEqualTo liberation_logistics)
	};
	{
		private _sector = _x;
		{		
			if ((_sector select 1) == (_x select 0)) exitWith {
				_x set [1, (_sector select 4)];
				_x set [2, (_sector select 5)];
				_x set [3, (_sector select 6)];
			};
		} forEach liberation_production_markers;
	} forEach liberation_production;
	sleep 0.25;
	sync_eco = [liberation_production,liberation_logistics,liberation_production_markers];
	publicVariable "sync_eco";
	
	_liberation_production_old = +liberation_production;
	_liberation_logistics_old = +liberation_logistics;
};
