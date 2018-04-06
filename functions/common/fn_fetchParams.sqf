if ( isMultiplayer ) then {
	liberation_difficulty_modifier = ["Difficulty",2] call bis_fnc_getParamValue;
	liberation_time_factor = ["DayDuration",12] call bis_fnc_getParamValue;
	liberation_resources_multiplier = ["ResourcesMultiplier",3] call bis_fnc_getParamValue;
	liberation_fatigue = ["Fatigue",1] call bis_fnc_getParamValue;
	liberation_introduction = ["Introduction",1] call bis_fnc_getParamValue;
	liberation_deployment_cinematic = ["DeploymentCinematic",1] call bis_fnc_getParamValue;
	liberation_unitcap = ["Unitcap",2] call bis_fnc_getParamValue;
	liberation_adaptive_opfor = ["AdaptToPlayercount",1] call bis_fnc_getParamValue;
	liberation_civilian_activity = ["civilians",1] call bis_fnc_getParamValue;
	liberation_teamkill_penalty = ["TeamkillPenalty",0] call bis_fnc_getParamValue;
	liberation_build_first_fob = ["FirstFob",0] call bis_fnc_getParamValue;
	liberation_param_wipe_savegame_1 = ["WipeSave1",0] call bis_fnc_getParamValue;
	liberation_param_wipe_savegame_2 = ["WipeSave2",0] call bis_fnc_getParamValue;
	liberation_permissions_param = ["Permissions",1] call bis_fnc_getParamValue;
	liberation_halo_param = ["HaloJump",1] call bis_fnc_getParamValue;
	liberation_use_whitelist = ["Whitelist",0] call bis_fnc_getParamValue;
	liberation_cleanup_vehicles = ["CleanupVehicles",2] call bis_fnc_getParamValue;
	liberation_csat_aggressivity = ["Aggressivity",2] call bis_fnc_getParamValue;
	liberation_weather_param = ["Weather",3] call bis_fnc_getParamValue;
	liberation_shorter_nights = ["ShorterNights",0] call bis_fnc_getParamValue;
	liberation_remote_sensors = 0;
	liberation_blufor_defenders = [ "BluforDefenders",1] call bis_fnc_getParamValue;
	liberation_autodanger = [ "Autodanger",0] call bis_fnc_getParamValue;
	liberation_maximum_fobs = [ "MaximumFobs",26] call bis_fnc_getParamValue;
	liberation_max_squad_size = ["MaxSquadSize",10] call bis_fnc_getParamValue;
	liberation_arsenalUsePreset = ["ArsenalUsePreset",1] call BIS_fnc_getParamValue;
	liberation_mapmarkers = ["MapMarkers",1] call bis_fnc_getParamValue;
	liberation_mobilerespawn = ["MobileRespawn",1] call bis_fnc_getParamValue;
	liberation_mobilearsenal = ["MobileArsenal",1] call bis_fnc_getParamValue;
	liberation_ailogistics = ["AiLogistics",1] call bis_fnc_getParamValue;
	// Arty Supp deactivated for now - liberation_suppMod_enb = ["SuppMod",1] call BIS_fnc_getParamValue;
	liberation_restart = ["ServerRestart",0] call BIS_fnc_getParamValue;
	liberation_param_buildings = ["CR_Building",0] call BIS_fnc_getParamValue;
	liberation_civinfo_debug = ["DebugCivInfo",0] call bis_fnc_getParamValue;
	liberation_civrep_debug = ["DebugCivRep",0] call bis_fnc_getParamValue;
	liberation_savegame_debug = ["DebugSave",0] call bis_fnc_getParamValue;
	liberation_asymmetric_debug = ["DebugAsymmetric",0] call bis_fnc_getParamValue;
	liberation_logistic_debug = ["DebugLogistic",0] call bis_fnc_getParamValue;
	liberation_sectorspawn_debug = ["DebugSectorSpawn",0] call bis_fnc_getParamValue;
	liberation_kill_debug = ["DebugKill",0] call bis_fnc_getParamValue;
	liberation_production_debug = ["DebugProduction",0] call bis_fnc_getParamValue;
	liberation_respawn_cooldown = ["RespawnCooldown",900] call bis_fnc_getParamValue;
	liberation_clear_cargo = ["ClearCargo",1] call bis_fnc_getParamValue;
} else {
	liberation_difficulty_modifier = 2;
	liberation_time_factor = 12;
	liberation_resources_multiplier = 3;
	liberation_fatigue = 1;
	liberation_introduction = 1;
	liberation_deployment_cinematic = 1;
	liberation_adaptive_opfor = 1;
	liberation_unitcap = 2;
	liberation_civilian_activity = 1;
	liberation_teamkill_penalty = 0;
	liberation_build_first_fob = 0;
	liberation_param_wipe_savegame_1 = 0;
	liberation_param_wipe_savegame_2 = 0;
	liberation_permissions_param = 0;
	liberation_halo_param = 1;
	liberation_use_whitelist = false;
	liberation_cleanup_vehicles = 2;
	liberation_csat_aggressivity = 2;
	liberation_weather_param = 3;
	liberation_shorter_nights = 0;
	liberation_remote_sensors = 0;
	liberation_blufor_defenders = 1;
	liberation_autodanger = 0;
	liberation_maximum_fobs = 26;
	liberation_max_squad_size = 10;
	liberation_arsenalUsePreset = 1;
	liberation_mapmarkers = 1;
	liberation_mobilerespawn = 1;
	liberation_mobilearsenal = 1;
	liberation_ailogistics = 1;
	// Arty Supp deactivated for now - liberation_suppMod_enb = 1;
	liberation_restart = 0;
	liberation_param_buildings = 0;
	liberation_civinfo_debug = 0;
	liberation_civrep_debug = 0;
	liberation_savegame_debug = 0;
	liberation_asymmetric_debug = 0;
	liberation_logistic_debug = 0;
	liberation_sectorspawn_debug = 0;
	liberation_kill_debug = 0;
	liberation_production_debug = 0;
	liberation_respawn_cooldown = 900;
	liberation_clear_cargo = 1;
};

if (liberation_fatigue < 0.1) then {liberation_fatigue = false} else {liberation_fatigue = true};
if (liberation_introduction == 1) then {liberation_introduction = true} else {liberation_introduction = false};
if (liberation_deployment_cinematic == 1) then {liberation_deployment_cinematic = true} else {liberation_deployment_cinematic = false};
if (liberation_build_first_fob == 1) then {liberation_build_first_fob = true} else {liberation_build_first_fob = false};
if (liberation_teamkill_penalty == 1) then {liberation_teamkill_penalty = true} else {liberation_teamkill_penalty = false};
if (liberation_adaptive_opfor == 1) then {liberation_adaptive_opfor = true} else {liberation_adaptive_opfor = false};
if (liberation_permissions_param == 1) then {liberation_permissions_param = true} else {liberation_permissions_param = false};
if (liberation_use_whitelist == 1) then {liberation_use_whitelist = true} else {liberation_use_whitelist = false};
if (liberation_shorter_nights == 1) then {liberation_shorter_nights = true} else {liberation_shorter_nights = false};
if (liberation_blufor_defenders == 1) then {liberation_blufor_defenders = true} else {liberation_blufor_defenders = false};
if (liberation_autodanger == 1) then {liberation_autodanger = true} else {liberation_autodanger = false};
if (liberation_arsenalUsePreset == 1) then {liberation_arsenalUsePreset = true} else {liberation_arsenalUsePreset = false};
if (liberation_mapmarkers == 1) then {liberation_mapmarkers = true; GREUH_allow_mapmarkers = true; GREUH_allow_platoonview = true} else {liberation_mapmarkers = false; GREUH_allow_mapmarkers = false; GREUH_allow_platoonview = false; show_platoon = false; show_teammates = false; show_nametags = false};
if (liberation_mobilerespawn == 1) then {liberation_mobilerespawn = true} else {liberation_mobilerespawn = false};
if (liberation_mobilearsenal == 1) then {liberation_mobilearsenal = true} else {liberation_mobilearsenal = false};
if (liberation_ailogistics == 1) then {liberation_ailogistics = true} else {liberation_ailogistics = false};
if (liberation_param_buildings == 1) then {liberation_param_buildings = true} else {liberation_param_buildings = false};
if (liberation_clear_cargo == 1) then {liberation_clear_cargo = true} else {liberation_clear_cargo = false};

// Check if ACE is running
if (isClass (configFile >> "CfgVehicles" >> "ACE_module")) then {liberation_ace = true; diag_log "[KP LIBERATION] ACE detected. Deactivating resupply and weather scripts from Liberation."} else {liberation_ace = false};

// Fix for not working float values in mission params
switch (liberation_unitcap) do {
	case 0: {liberation_unitcap = 0.5;};
	case 1: {liberation_unitcap = 0.75;};
	case 2: {liberation_unitcap = 1;};
	case 3: {liberation_unitcap = 1.25;};
	case 4: {liberation_unitcap = 1.5;};
	case 5: {liberation_unitcap = 2;};
	default {liberation_unitcap = 1;};
};

switch (liberation_difficulty_modifier) do {
	case 0: {liberation_difficulty_modifier = 0.5;};
	case 1: {liberation_difficulty_modifier = 0.75;};
	case 2: {liberation_difficulty_modifier = 1;};
	case 3: {liberation_difficulty_modifier = 1.25;};
	case 4: {liberation_difficulty_modifier = 1.5;};
	case 5: {liberation_difficulty_modifier = 2;};
	case 6: {liberation_difficulty_modifier = 4;};
	case 7: {liberation_difficulty_modifier = 10;};
	default {liberation_difficulty_modifier = 1;};
};

switch (liberation_csat_aggressivity) do {
	case 0: {liberation_csat_aggressivity = 0.25;};
	case 1: {liberation_csat_aggressivity = 0.5;};
	case 2: {liberation_csat_aggressivity = 1;};
	case 3: {liberation_csat_aggressivity = 2;};
	case 4: {liberation_csat_aggressivity = 4;};
	default {liberation_csat_aggressivity = 1;};
};

switch (liberation_civilian_activity) do {
	case 0: {liberation_civilian_activity = 0;};
	case 1: {liberation_civilian_activity = 0.5;};
	case 2: {liberation_civilian_activity = 1;};
	case 3: {liberation_civilian_activity = 2;};
	default {liberation_csat_aggressivity = 1;};
};

switch (liberation_resources_multiplier) do {
	case 0: {liberation_resources_multiplier = 0.25;};
	case 1: {liberation_resources_multiplier = 0.5;};
	case 2: {liberation_resources_multiplier = 0.75;};
	case 3: {liberation_resources_multiplier = 1;};
	case 4: {liberation_resources_multiplier = 1.25;};
	case 5: {liberation_resources_multiplier = 1.5;};
	case 6: {liberation_resources_multiplier = 2;};
	case 7: {liberation_resources_multiplier = 3;};
	default {liberation_resources_multiplier = 1;};
};
