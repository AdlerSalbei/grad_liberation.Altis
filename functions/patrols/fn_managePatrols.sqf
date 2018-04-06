_combat_triggers = [20,40,50,65,80,95];
if ( liberation_unitcap < 0.9 ) then { _combat_triggers = [20,45,90]; };
if ( liberation_unitcap > 1.3 ) then { _combat_triggers = [15,25,40,65,75,85,95]; };

_combat_triggers_infantry = [15,35,45,60,70,85];
if ( liberation_unitcap < 0.9 ) then { _combat_triggers_infantry = [15,40,80]; };
if ( liberation_unitcap > 1.3 ) then { _combat_triggers_infantry = [10,20,35,55,70,80,90]; };

sleep 5;

waitUntil { sleep 0.3; !isNil "blufor_sectors" };
waitUntil { sleep 0.3; count blufor_sectors > 3 };

{
	[_x, false] spawn manageOnePatrol;
	sleep 1;
} foreach _combat_triggers;

{
	[_x, true] spawn manageOnePatrol;
	sleep 1;
} foreach _combat_triggers_infantry;
