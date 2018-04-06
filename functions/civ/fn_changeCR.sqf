params ["_amount", ["_negative", false]];

if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] changeCR called on: %1 - Parameters [%2, %3]", debug_source, _amount, _negative];_text remoteExec ["diag_log",2];};

if (_negative) then {
	liberation_civ_rep = liberation_civ_rep - _amount;
} else {
	liberation_civ_rep = liberation_civ_rep + _amount;
};

if (liberation_civ_rep < -100) then {liberation_civ_rep = -100;};
if (liberation_civ_rep > 100) then {liberation_civ_rep = 100;};

if (liberation_civ_rep <= -25) then {
	LIB_side_resistance setFriend [LIB_side_enemy, 1];
	LIB_side_enemy setFriend [LIB_side_resistance, 1];
	LIB_side_resistance setFriend [LIB_side_friendly, 0];
	LIB_side_friendly setFriend [LIB_side_resistance, 0];
};
if (liberation_civ_rep > -25 && liberation_civ_rep < 25) then {
	LIB_side_resistance setFriend [LIB_side_enemy, 1];
	LIB_side_enemy setFriend [LIB_side_resistance, 1];
	LIB_side_resistance setFriend [LIB_side_friendly, 1];
	LIB_side_friendly setFriend [LIB_side_resistance, 1];
};
if (liberation_civ_rep >= 25) then {
	LIB_side_resistance setFriend [LIB_side_friendly, 1];
	LIB_side_friendly setFriend [LIB_side_resistance, 1];
	LIB_side_resistance setFriend [LIB_side_enemy, 0];
	LIB_side_enemy setFriend [LIB_side_resistance, 0];
};

if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] changeCR finished on: %1 - New value: %2", debug_source, liberation_civ_rep];_text remoteExec ["diag_log",2];};
if (liberation_civrep_debug > 0) then {private _text = format ["[KP LIBERATION] [CIVREP] %1 getFriend %2: %3 - %1 getFriend %4: %5", LIB_side_resistance, LIB_side_enemy, (LIB_side_resistance getFriend LIB_side_enemy), LIB_side_friendly, (LIB_side_resistance getFriend LIB_side_friendly)];_text remoteExec ["diag_log",2];};
