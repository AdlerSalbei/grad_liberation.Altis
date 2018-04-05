private [ "_sleeptime", "_countplayers" ];

sleep ( 900 / liberation_csat_aggressivity );

while { liberation_csat_aggressivity > 0.9 && GRLIB_endgame == 0 } do {

	_sleeptime =  (2100 + (random 2100)) / (([] call  grad_liberation_shared_fnc_adaptiveOpforFactor) * liberation_csat_aggressivity);

	if ( combat_readiness >= 80 ) then { _sleeptime = _sleeptime * 0.75 };
	if ( combat_readiness >= 90 ) then { _sleeptime = _sleeptime * 0.75 };
	if ( combat_readiness >= 95 ) then { _sleeptime = _sleeptime * 0.75 };

	sleep _sleeptime;

	if ( !isNil "GRLIB_last_battlegroup_time" ) then {
		waitUntil { sleep 5; time > ( GRLIB_last_battlegroup_time + ( 2100 / liberation_csat_aggressivity ) ) };
	};

	if ( (count allPlayers >= (10 / liberation_csat_aggressivity) ) && ([] call grad_liberation_shared_fnc_opforCap < GRLIB_battlegroup_cap) && (combat_readiness >= 70) && (diag_fps > 15.0))  then {
		[] spawn spawn_battlegroup;
	};
};