sync_vars = []; publicVariable "sync_vars";

waitUntil{!isNil "save_is_loaded"};
waitUntil{!isNil "liberation_fob_resources"};
waitUntil{!isNil "liberation_supplies_global"};
waitUntil{!isNil "liberation_ammo_global"};
waitUntil{!isNil "liberation_fuel_global"};
waitUntil{!isNil "combat_readiness"};
waitUntil{!isNil "unitcap"};
waitUntil{!isNil "liberation_heli_count"};
waitUntil{!isNil "liberation_plane_count"};
waitUntil{!isNil "liberation_heli_slots"};
waitUntil{!isNil "liberation_plane_slots"};
waitUntil{!isNil "resources_intel"};
waitUntil{!isNil "infantry_cap"};
waitUntil{!isNil "liberation_civ_rep"};
waitUntil{!isNil "liberation_guerilla_strength"};
waitUntil{!isNil "infantry_weight"};
waitUntil{!isNil "armor_weight"};
waitUntil{!isNil "air_weight"};

private _liberation_fob_resources_old = [];
private _liberation_supplies_global_old = -1;
private _liberation_ammo_global_old = -1;
private _liberation_fuel_global_old = -1;
private _unitcap_old = -1;
private _liberation_heli_count_old = -1;
private _liberation_plane_count_old = -1;
private _liberation_heli_slots_old = -1;
private _liberation_plane_slots_old = -1;
private _combat_readiness_old = -1;
private _resources_intel_old = -999;
private _infantry_cap_old = -999;
private _liberation_civ_rep_old = -999;
private _liberation_guerilla_strength_old = -999;
private _infantry_weight_old = -1;
private _armor_weight_old = -1;
private _air_weight_old = -1;

while {true} do {
	waitUntil {sleep 0.25;
		!(_liberation_fob_resources_old isEqualTo liberation_fob_resources)
		|| _liberation_supplies_global_old != liberation_supplies_global
		|| _liberation_ammo_global_old != liberation_ammo_global
		|| _liberation_fuel_global_old != liberation_fuel_global
		|| _unitcap_old != unitcap
		|| _liberation_heli_count_old != liberation_heli_count
		|| _liberation_plane_count_old != liberation_plane_count
		|| _liberation_heli_slots_old != liberation_heli_slots
		|| _liberation_plane_slots_old != liberation_plane_slots
		|| _combat_readiness_old != combat_readiness
		|| _resources_intel_old != resources_intel
		|| _infantry_cap_old != infantry_cap
		|| _liberation_civ_rep_old != liberation_civ_rep
		|| _liberation_guerilla_strength_old != liberation_guerilla_strength
		|| _infantry_weight_old != infantry_weight
		|| _armor_weight_old != armor_weight
		|| _air_weight_old != air_weight
	};
	
	if (liberation_guerilla_strength < 0) then {liberation_guerilla_strength = 0;};

	sleep 0.25;
	sync_vars = [
		liberation_fob_resources,
		liberation_supplies_global,
		liberation_ammo_global,
		liberation_fuel_global,
		unitcap,
		liberation_heli_count,
		liberation_plane_count,
		liberation_heli_slots,
		liberation_plane_slots,
		combat_readiness,
		resources_intel,
		infantry_cap,
		liberation_civ_rep,
		liberation_guerilla_strength,
		infantry_weight,
		armor_weight,
		air_weight
	];
	publicVariable "sync_vars";
	
	_liberation_fob_resources_old = +liberation_fob_resources;
	_liberation_supplies_global_old = liberation_supplies_global;
	_liberation_ammo_global_old = liberation_ammo_global;
	_liberation_fuel_global_old = liberation_fuel_global;
	_unitcap_old = unitcap;
	_liberation_heli_count_old = liberation_heli_count;
	_liberation_plane_count_old = liberation_plane_count;
	_liberation_heli_slots_old = liberation_heli_slots;
	_liberation_plane_slots_old = liberation_plane_slots;
	_combat_readiness_old = combat_readiness;
	_resources_intel_old = resources_intel;
	_infantry_cap_old = infantry_cap;
	_liberation_civ_rep_old = liberation_civ_rep;
	_liberation_guerilla_strength_old = liberation_guerilla_strength;
	_infantry_weight_old = infantry_weight;
	_armor_weight_old = armor_weight;
	_air_weight_old = air_weight;
};
