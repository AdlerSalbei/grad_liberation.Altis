params [ "_unit1", "_unit2" ];
private [ "_loadout" ];

_loadout = [ _unit1, ["repetitive"] ] call grad_liberation_shared_fnc_getLoadout;
[ _unit2, _loadout ] call grad_liberation_shared_fnc_setLoadout;