if ( isDedicated ) exitWith {};

params [ "_battlegroup_position" ];

"opfor_bg_marker" setMarkerPosLocal ( getMarkerPos _battlegroup_position );
[ "lib_battlegroup", [ markerText ( [ 10000, getMarkerPos _battlegroup_position ] call grad_liberation_common_fnc_getNearestSector ) ] ] call BIS_fnc_showNotification;

sleep 600;

"opfor_bg_marker" setMarkerPosLocal markers_reset;