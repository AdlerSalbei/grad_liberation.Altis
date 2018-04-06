[] call grad_liberation_markers_fnc_initMarkers;
switch (KP_liberation_arsenal) do {
   case 1: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\custom";};
   case 2: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\killahpotatoes";};
   case 3: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf";};
   case 4: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf_ace";};
   case 5: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf_ace_acre";};
   case 6: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\3cbBAF";};
   default {
       LIB_arsenal_weapons = [];
       LIB_arsenal_magazines = [];
       LIB_arsenal_items = [];
       LIB_arsenal_backpacks = [];};
};

if ( typeOf player == "VirtualSpectator_F" ) exitWith {
   [] call grad_liberation_markers_fnc_empty_vehiclesMarker;
   [] call grad_liberation_markers_fnc_fobMarkers;
   [] call grad_liberation_markers_fnc_groupIcons;
   [] call grad_liberation_markers_fnc_hostileGroups;
   [] call grad_liberation_markers_fnc_sectorManager;
   [] call grad_liberation_markers_fnc_spotTimer;
   [] call grad_liberation_misc_fnc_synchroniseVars;
   [] call grad_liberation_ui_fnc_manager;
};

// This causes the script error with not defined variable _display in File A3\functions_f_bootcamp\Inventory\fn_arsenal [BIS_fnc_arsenal], line 2122
// ["Preload"] call BIS_fnc_arsenal;

[] call grad_liberation_ui_fnc_actionManager;
[] call grad_liberation_ui_fnc_intelManager;
[] call grad_liberation_ui_fnc_recycleManager;
[] call grad_liberation_ui_fnc_unflipManager;
[] call grad_liberation_ui_fnc_actionManager;
[] call grad_liberation_ui_fnc_buildOverlay;
[] call grad_liberation_ui_fnc_doBuild;
[] call grad_liberation_commander_fnc_enforceWhitelist;
if (liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_emptyVehiclesMarker;};
[] call grad_liberation_markers_fnc_fobMarkers;
if (liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_groupIcons;};
[] call grad_liberation_markers_fnc_hostileGroups;
if (liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_huronMarker;} else {deleteMarker "huronmarker"};
[] call grad_liberation_markers_fnc_sectorManager;
[] call grad_liberation_markers_fnc_spotTimer;
[] call grad_liberation_misc_fnc_broadcastSquadColors;
[] call grad_liberation_misc_fnc_disableRemoteSensors;
[] call grad_liberation_misc_fnc_initArsenal;
[] call grad_liberation_misc_fnc_offloadDiag;
[] call grad_liberation_misc_fnc_permissionsWarning;
if (!liberation_ace) then {[] call grad_liberation_misc_fnc_resupplyManager;};
[] call grad_liberation_misc_fnc_secondaryJip;
[] call grad_liberation_misc_fnc_stayLeader;
[] call grad_liberation_misc_fnc_stopRenegade;
[] call grad_liberation_misc_fnc_synchroniseVars;
[] call grad_liberation_misc_fnc_synchroniseEco;
[] call grad_liberation_misc_fnc_vehiclePermissions;
[] call grad_liberation_spawn_fnc_redeployManager;
[] call grad_liberation_ui_fnc_ui_manager;
[] call grad_liberation_ui_fnc_tutorialManager;
[] call grad_liberation_markers_fnc_updateProductionSites;

player addMPEventHandler ["MPKilled", {_this call grad_liberation_shared_fnc_killManager;}];
player addEventHandler ["GetInMan", {[_this select 2] call grad_liberation_shared_fnc_fuelConsumption;}];
player addEventHandler ["GetInMan", {[_this select 2] call grad_liberation_shared_fnc_checkVehicle;}];

{
   [_x] call BIS_fnc_drawCuratorLocations;
} foreach allCurators;

[] call grad_liberation_ui_fnc_intro;

[] execVM "onPlayerRespawn";

[player] joinSilent (createGroup LIB_side_friendly);
