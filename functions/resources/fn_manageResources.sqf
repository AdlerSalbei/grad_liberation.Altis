waitUntil {!isNil "save_is_loaded"};
waitUntil {!isNil "liberation_production"};

sectors_recalculating = false;
sectors_timer = false;

if (liberation_production_debug > 0) then {diag_log "[KP LIBERATION] [PRODUCTION] Production management started";};

while {LIB_endgame == 0} do {

	recalculate_sectors = false;
	
	if (((count allPlayers) > 0) && ((count liberation_production) > 0)) then {
		waitUntil {sleep 0.5; !sectors_recalculating};
		sectors_recalculating = true;

		private _time_update = false;
		if (sectors_timer) then {_time_update = true; sectors_timer = false;};

		if (liberation_production_debug > 0) then {diag_log format ["[KP LIBERATION] [PRODUCTION] Production interval started: %1 - _time_update: %2", time, _time_update];};

		private _tempProduction = [];
		{
			private _storageArray = [];
			private _supplyValue = 0;
			private _ammoValue = 0;
			private _fuelValue = 0;
			private _time = _x select 8;

			private _storage = nearestObjects [(markerPos (_x select 1)), [liberation_small_storage_building], LIB_fob_range];
			_storage = [_storage, {(_x getVariable ["liberation_storage_type",-1]) == 1}] call BIS_fnc_conditionalSelect;
			if ((count _storage) > 0) then {
				_storage = (_storage select 0);
				_storageArray = [(getPosATL _storage),(getDir _storage),(vectorUpVisual _storage)];
				
				if (_time_update) then {
				
					if ((_time - 1) < 1) then {
						_time = liberation_production_interval;
						
						if (((count (attachedObjects _storage)) < 12) && !((_x select 7) == 3)) then {
							private _crateType = liberation_supply_crate;
							switch (_x select 7) do {
								case 1: {_crateType = liberation_ammo_crate;};
								case 2: {_crateType = liberation_fuel_crate;};
								default {_crateType = liberation_supply_crate;};
							};

							private _crate = [_crateType, 100, getPosATL _storage] call grad_liberation_common_fnc_createCrate;
							[_crate, _storage] call grad_liberation_common_fnc_crateToStorage;
						};
					} else {
						_time = _time - 1;
					};
				};

				{
					switch ((typeOf _x)) do {
						case liberation_supply_crate: {_supplyValue = _supplyValue + (_x getVariable ["liberation_crate_value",0]);};
						case liberation_ammo_crate: {_ammoValue = _ammoValue + (_x getVariable ["liberation_crate_value",0]);};
						case liberation_fuel_crate: {_fuelValue = _fuelValue + (_x getVariable ["liberation_crate_value",0]);};
						default {diag_log format ["[KP LIBERATION] [ERROR] Invalid object (%1) at storage area", (typeOf _x)];};
					};
				} forEach (attachedObjects _storage);
			};

			_tempProduction pushBack [
				(markerText (_x select 1)),
				(_x select 1),
				(_x select 2),
				_storageArray,
				(_x select 4),
				(_x select 5),
				(_x select 6),
				(_x select 7),
				_time,
				_supplyValue,
				_ammoValue,
				_fuelValue
			];
			if (liberation_production_debug > 0) then {diag_log format ["[KP LIBERATION] [PRODUCTION] Production Update: %1", _tempProduction select _forEachIndex];};
		} forEach liberation_production;

		_tempProduction sort true;

		liberation_production = +_tempProduction;
		sectors_recalculating = false;
	};
	if (liberation_production_debug > 0) then {diag_log format ["[KP LIBERATION] [PRODUCTION] Production interval finished: %1", time];};
	waitUntil {sleep 1; recalculate_sectors};
};
