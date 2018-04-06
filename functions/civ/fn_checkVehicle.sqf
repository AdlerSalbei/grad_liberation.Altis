params ["_vehicle"];

if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] checkVehicle called on: %1 - Vehicle: %2", debug_source, _vehicle];_text remoteExec ["diag_log",2];};

if (isNil "liberation_cr_vehicles") then {
	liberation_cr_vehicles = [];
};

if (((typeOf _vehicle) in civilian_vehicles) && !(_vehicle in liberation_cr_vehicles)) then {
	if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] Vehicle was stolen by: %1", debug_source];_text remoteExec ["diag_log",2];};
	[0] remoteExec ["grad_liberation_common_fnc_globalMsg"];
	[liberation_cr_vehicle_penalty, true] remoteExec ["F_cr_changeCR", 2];

	liberation_cr_vehicles pushBack _vehicle;
	publicVariable "liberation_cr_vehicles";
};

if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] checkVehicle finished on: %1 - Stolen vehicle list: %2", debug_source, liberation_cr_vehicles];_text remoteExec ["diag_log",2];};
