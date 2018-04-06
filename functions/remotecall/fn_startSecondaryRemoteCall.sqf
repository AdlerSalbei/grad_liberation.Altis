if ( !isServer ) exitWith {};
if ( isNil "LIB_secondary_starting" ) then { LIB_secondary_starting = false; };
if ( LIB_secondary_starting ) exitWith { diag_log "[KP LIBERATION] [ERROR] Multiple calls to start secondary mission : shouldn't be possible, isn't allowed"; };
if ( isNil "used_positions" ) then { used_positions = []; };

LIB_secondary_starting = true; publicVariable "LIB_secondary_starting";
params [ "_mission_index" ];

resources_intel = resources_intel - ( LIB_secondary_missions_costs select _mission_index );

if ( _mission_index == 0 ) then { [] call fobHunting; };
if ( _mission_index == 1 ) then { [] call convoyHijack; };
if ( _mission_index == 2 ) then { [] call searchAndRescue; };

LIB_secondary_starting = false; publicVariable "LIB_secondary_starting";
