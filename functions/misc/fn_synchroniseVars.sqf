one_synchro_done = false;
synchro_done = false;

waitUntil {!isNil "sync_vars"};

while {true} do {
	waitUntil {sleep 0.2; (count sync_vars) > 0};

	liberation_fob_resources = sync_vars select 0;
	liberation_supplies_global = sync_vars select 1;
	liberation_ammo_global = sync_vars select 2;
	liberation_fuel_global = sync_vars select 3;
	unitcap = sync_vars select 4;
	liberation_heli_count = sync_vars select 5;
	liberation_plane_count = sync_vars select 6;
	liberation_heli_slots = sync_vars select 7;
	liberation_plane_slots = sync_vars select 8;
	combat_readiness = sync_vars select 9;
	resources_intel = sync_vars select 10;
	infantry_cap = sync_vars select 11;
	liberation_civ_rep = sync_vars select 12;
	liberation_guerilla_strength = sync_vars select 13;
	infantry_weight = sync_vars select 14;
	armor_weight = sync_vars select 15;
	air_weight = sync_vars select 16;
	
	sync_vars = [];
	one_synchro_done = true;
	synchro_done = true;
};
