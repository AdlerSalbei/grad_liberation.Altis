[] call compileFinal preprocessFileLineNumbers "scripts\client\misc\init_markers";
switch (KP_liberation_arsenal) do {
   case 1: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\custom";};
   case 2: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\killahpotatoes";};
   case 3: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf";};
   case 4: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf_ace";};
   case 5: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rhsusaf_ace_acre";};
   case 6: {[] call compileFinal preprocessFileLineNumbers "arsenal_presets\3cbBAF";};
   default {GRLIB_arsenal_weapons = [];GRLIB_arsenal_magazines = [];GRLIB_arsenal_items = [];GRLIB_arsenal_backpacks = [];};
};

if ( typeOf player == "VirtualSpectator_F" ) exitWith {
   [] call grad_liberation_markers_fnc_empty_vehicles_marker;
   [] call grad_liberation_markers_fnc_fob_markers;
   [] call grad_liberation_markers_fnc_group_icons;
   [] call grad_liberation_markers_fnc_hostile_groups;
   [] call grad_liberation_markers_fnc_sector_manager;
   [] call grad_liberation_markers_fnc_spot_timer;
   [] call grad_liberation_misc_fnc_synchronise_vars;
   [] call grad_liberation_ui_fnc_ui_manager;
};

// This causes the script error with not defined variable _display in File A3\functions_f_bootcamp\Inventory\fn_arsenal [BIS_fnc_arsenal], line 2122
// ["Preload"] call BIS_fnc_arsenal;
spawn_camera = compileFinal preprocessFileLineNumbers "scripts\client\spawn\spawn_camera;
cinematic_camera = compileFinal preprocessFileLineNumbers "scripts\client\ui\cinematic_camera;
write_credit_line = compileFinal preprocessFileLineNumbers "scripts\client\ui\write_credit_line;
do_load_box = compileFinal preprocessFileLineNumbers "scripts\client\ammoboxes\do_load_box;
kp_fuel_consumption = compileFinal preprocessFileLineNumbers "scripts\client\misc\kp_fuel_consumption;
kp_cr_checkVehicle = compileFinal preprocessFileLineNumbers "scripts\client\civrep\kp_cr_checkVehicle;

[] call grad_liberation_ui_fnc_actions\action_manager;
[] call grad_liberation_ui_fnc_actions\intel_manager;
[] call grad_liberation_ui_fnc_actions\recycle_manager;
[] call grad_liberation_ui_fnc_actions\unflip_manager;
[] call grad_liberation_ui_fnc_ammoboxes\ammobox_action_manager;
[] call grad_liberation_ui_fnc_build\build_overlay;
[] call grad_liberation_ui_fnc_build\do_build;
[] call grad_liberation_ui_fnc_commander\enforce_whitelist;
if (KP_liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_empty_vehicles_marker;};
[] call grad_liberation_markers_fnc_fob_markers;
if (KP_liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_group_icons;};
[] call grad_liberation_markers_fnc_hostile_groups;
if (KP_liberation_mapmarkers) then {[] call grad_liberation_markers_fnc_huron_marker;} else {deleteMarker "huronmarker"};
[] call grad_liberation_markers_fnc_sector_manager;
[] call grad_liberation_markers_fnc_spot_timer;
[] call grad_liberation_misc_fnc_broadcast_squad_colors;
[] call grad_liberation_misc_fnc_disable_remote_sensors;
[] call grad_liberation_misc_fnc_init_arsenal;
[] call grad_liberation_misc_fnc_offload_diag;
[] call grad_liberation_misc_fnc_permissions_warning;
if (!KP_liberation_ace) then {[] call grad_liberation_misc_fnc_resupply_manager;};
[] call grad_liberation_misc_fnc_secondary_jip;
[] call grad_liberation_misc_fnc_stay_leader;
[] call grad_liberation_misc_fnc_stop_renegade;
[] call grad_liberation_misc_fnc_synchronise_vars;
[] call grad_liberation_misc_fnc_synchronise_eco;
[] call grad_liberation_misc_fnc_vehicle_permissions;
[] call grad_liberation_ui_fnc_spawn\redeploy_manager;
[] call grad_liberation_ui_fnc_ui_manager;
[] call grad_liberation_ui_fnc_tutorial_manager;
[] call grad_liberation_markers_fnc_update_production_sites;

player addMPEventHandler ["MPKilled", {_this spawn kill_manager;}];
player addEventHandler ["GetInMan", {[_this select 2] spawn kp_fuel_consumption;}];
player addEventHandler ["GetInMan", {[_this select 2] spawn kp_cr_checkVehicle;}];

{
   [_x] call BIS_fnc_drawCuratorLocations;
} foreach allCurators;

[] call grad_liberation_ui_fnc_intro;

[] execVM "onPlayerRespawn";

[player] joinSilent (createGroup GRLIB_side_friendly);
