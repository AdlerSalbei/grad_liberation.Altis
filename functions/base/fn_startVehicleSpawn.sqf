waitUntil {time > 1};
waitUntil {!isNil "huron"};

for [{_i=0}, {!isNil ("littlebird_" + str _i)}, {_i = _i + 1}] do {
	private _liberation_little_bird_pad = missionNamespace getVariable ("littlebird_" + str _i);
	private _liberation_little_bird = liberation_little_bird_classname createVehicle [((getposATL _liberation_little_bird_pad) select 0),((getposATL _liberation_little_bird_pad) select 1),((getposATL _liberation_little_bird_pad) select 2) + 0.1];
	_liberation_little_bird enableSimulationGlobal false;
	_liberation_little_bird allowdamage false;
	_liberation_little_bird setDir (getDir _liberation_little_bird_pad);
	_liberation_little_bird setposATL [((getposATL _liberation_little_bird_pad) select 0),((getposATL _liberation_little_bird_pad) select 1),((getposATL _liberation_little_bird_pad) select 2) + 0.1];
	if(liberation_clear_cargo) then {
		clearWeaponCargoGlobal _liberation_little_bird;
		clearMagazineCargoGlobal _liberation_little_bird;
		clearItemCargoGlobal _liberation_little_bird;
		clearBackpackCargoGlobal _liberation_little_bird;
	};
	sleep 0.5;
	_liberation_little_bird enableSimulationGlobal true;
	_liberation_little_bird setDamage 0;
	_liberation_little_bird allowdamage true;
	_liberation_little_bird setVariable ["liberation_preplaced", true, true];
};

for [{_i=0}, {!isNil ("boat_" + str _i)}, {_i = _i + 1}] do {
	private _liberation_boat_spawn = missionNamespace getVariable ("boat_" + str _i);
	private _liberation_boat = liberation_boat_classname createVehicle [((getposATL _liberation_boat_spawn) select 0),((getposATL _liberation_boat_spawn) select 1),((getposATL _liberation_boat_spawn) select 2) + 0.1];
	_liberation_boat enableSimulationGlobal false;
	_liberation_boat allowdamage false;
	_liberation_boat setDir (getDir _liberation_boat_spawn);
	_liberation_boat setposATL (getposATL _liberation_boat_spawn);
	if(liberation_clear_cargo) then {
		clearWeaponCargoGlobal _liberation_boat;
		clearMagazineCargoGlobal _liberation_boat;
		clearItemCargoGlobal _liberation_boat;
		clearBackpackCargoGlobal _liberation_boat;
	};
	sleep 0.5;
	_liberation_boat enableSimulationGlobal true;
	_liberation_boat setDamage 0;
	_liberation_boat allowdamage true;
	_liberation_boat setVariable ["liberation_preplaced", true, true];
};
