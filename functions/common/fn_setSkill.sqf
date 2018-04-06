params ["_unit"];

if (!(liberation_autodanger) && ((side _unit) == LIB_side_friendly)) then {
	_unit disableAI "AUTOCOMBAT";
};

(group _unit) allowFleeing 0;
