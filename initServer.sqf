[] call grad_liberation_base_fnc_create_suppMods;*/
[] call grad_liberation_base_fnc_startgame;
[] call grad_liberation_base_fnc_huron_manager;
[] call grad_liberation_base_fnc_startvehicle_spawn;
[] call grad_liberation_base_fnc_counter_battlegroup;
[] call grad_liberation_base_fnc_random_battlegroups;
[] call grad_liberation_base_fnc_readiness_increase;
[] call grad_liberation_game_fnc_apply_default_permissions;
[] call grad_liberation_game_fnc_apply_saved_scores;
[] call grad_liberation_game_fnc_capture_vehicles;
[] call grad_liberation_game_fnc_clean;
[] call grad_liberation_game_fnc_cleanup_vehicles;
[] call grad_liberation_game_fnc_fucking_set_fog;
[] call grad_liberation_game_fnc_manage_time;
if (!liberation_ace) then {[] call grad_liberation_game_fnc_manage_weather;};
[] call grad_liberation_game_fnc_periodic_save;
[] call grad_liberation_game_fnc_playtime;
[] call grad_liberation_game_fnc_save_manager;
[] call grad_liberation_game_fnc_spawn_radio_towers;
[] call grad_liberation_game_fnc_synchronise_vars;
[] call grad_liberation_game_fnc_synchronise_eco;
[] call grad_liberation_game_fnc_zeus_synchro;
[] call grad_liberation_offloading_fnc_offload_calculation;
[] call grad_liberation_offloading_fnc_offload_manager;
[] call grad_liberation_offloading_fnc_show_fps;
[] call grad_liberation_patrols_fnc_civilian_patrols;
[] call grad_liberation_patrols_fnc_manage_patrols;
[] call grad_liberation_patrols_fnc_reinforcements_resetter;
if (liberation_ailogistics) then {[] call grad_liberation_resources_fnc_manageLogistics;};
[] call grad_liberation_resources_fnc_manage_resources;
[] call grad_liberation_resources_fnc_recalculate_resources;
[] call grad_liberation_resources_fnc_recalculate_timer;
[] call grad_liberation_resources_fnc_recalculate_timer_sector;
[] call grad_liberation_resources_fnc_unitCap;
[] call grad_liberation_sector_fnc_loseSectors;
[] call grad_liberation_sector_fnc_manageSectors;

// Civil Reputation
[] call grad_liberation_civ_fnc_initModule;

// Civil Informant
[] call grad_liberation_civ_fnc_init_module;

// Asymmetric Threats
[] call grad_liberation_asymmetric_fnc_init_module;

{
	if ( (_x != player) && (_x distance (getmarkerpos LIB_respawn_marker) < 200 ) ) then {
		deleteVehicle _x;
	};
} foreach allUnits;

// Server Restart Script from K4s0
if (liberation_restart > 0) then {
	[] call grad_liberation_game_fnc_server_restart;
};
