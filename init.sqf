enableSaving [ false, false ];

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call grad_liberation_common_fnc_initSectors;
[] call grad_liberation_common_fnc_fetchParams;
[] call compileFinal preprocessFileLineNumbers "liberation_config.sqf";
[] call compileFinal preprocessFileLineNumbers "presets\init_presets.sqf";

[] call grad_liberation_common_fnc_initShared;

if (!isDedicated && !hasInterface && isMultiplayer) then {
	[] call grad_liberation_offloading_fnc_hcManager;
};

if (!isDedicated && hasInterface) then {
	waitUntil {alive player};
	if (debug_source != name player) then {debug_source = name player};
} else {
	setViewDistance 1600;
};
