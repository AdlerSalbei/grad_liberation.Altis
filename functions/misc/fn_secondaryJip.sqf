waitUntil {
	time > 20;
};

if ( isNil "LIB_secondary_in_progress" ) exitWith {};
if ( LIB_secondary_in_progress < 0 ) exitWith {};

if ( LIB_secondary_in_progress == 0 ) then {
	[ 2 ] call remote_call_intel;
};