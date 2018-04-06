private [ "_dialog", "_fob", "_fobbox" ];

dorepackage = 0;

_dialog = createDialog "liberation_repackage_fob";
waitUntil { dialog };

while { dialog && alive player && dorepackage == 0 } do {
	sleep 0.1;
};

if ( dorepackage > 0 ) then {
	closeDialog 0;
	waitUntil { !dialog };

	_fob = [] call grad_liberation_shared_fnc_getNearestFob;

	if ( count _fob > 0 ) then {
		LIB_all_fobs = LIB_all_fobs - [ _fob ];
		publicVariable "LIB_all_fobs";
	};

	{ deleteVehicle _x }  foreach ( [ ( (getpos player) nearobjects [ FOB_typename, 250 ] ) , { getObjectType _x >= 8 } ] call BIS_fnc_conditionalSelect );

	sleep 0.5;

	_spawnpos = zeropos;
	while { _spawnpos distance zeropos < 1000 } do {
		_spawnpos = ( getpos player ) findEmptyPosition [10, 250, 'B_Heli_Transport_01_F'];
		if ( count _spawnpos == 0 ) then { _spawnpos = zeropos; };
	};

	if ( dorepackage == 1 ) then {
		_fobbox = FOB_box_typename createVehicle _spawnpos;
		_fobbox call grad_liberation_shared_fnc_setFobMass;
	};

	if ( dorepackage == 2 ) then {
		FOB_truck_typename createVehicle _spawnpos;
	};

	hint localize "STR_FOB_REPACKAGE_HINT";

};