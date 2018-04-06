if (isDedicated) exitWith {};

[liberation_suppMod_req, liberation_suppMod_arty] call BIS_fnc_removeSupportLink;
deleteVehicle liberation_suppMod_req;
liberation_suppMod_req = nil;
