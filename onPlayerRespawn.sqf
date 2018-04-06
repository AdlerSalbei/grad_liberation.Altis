if ( isNil "LIB_respawn_loadout" ) then {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "ItemRadio";
} else {
	sleep 4;
	[ player, LIB_respawn_loadout ] call grad_liberation_shared_fnc_setLoadout;
};
