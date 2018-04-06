params [ "_veh" ];

if ( isNull _veh ) exitWith {};

if ( _veh getVariable ["LIB_captured", 0] == 0 ) then {
	deleteVehicle _veh;
};