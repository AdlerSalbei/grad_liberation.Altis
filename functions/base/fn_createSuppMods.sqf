if (liberation_suppMod_enb > 0) then {
	liberation_suppMod_grp = createGroup sideLogic;
	liberation_suppMod_req = liberation_suppMod_grp createUnit ["SupportRequester", getPos huronspawn, [], 0, "NONE"];
	//liberation_suppMod_req spawn BIS_fnc_moduleSupportsInitRequester;
	[liberation_suppMod_req] execVM "A3\modules_f\supports\init_requester.sqf";
	{
		[liberation_suppMod_req, _x, -1] call BIS_fnc_limitSupport;
	} forEach ["Artillery","CAS_Heli","CAS_Bombing","UAV","Drop","Transport"];

	liberation_suppMod_arty = liberation_suppMod_grp createUnit ["SupportProvider_Artillery", liberation_suppMod_grp, [], 0, "NONE"];
	//liberation_suppMod_arty spawn BIS_fnc_moduleSupportsInitProvider;
	[liberation_suppMod_arty] execVM "A3\modules_f\supports\init_provider.sqf";

	publicVariable "liberation_suppMod_grp";
	publicVariable "liberation_suppMod_arty";
	liberation_suppMod_created = true; publicVariable "liberation_suppMod_created";
};