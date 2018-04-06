_troupTransport = _this select 0;
_transport_group = (group (driver _troupTransport));
_start_pos = getpos _troupTransport;
_dat_objective =  ([getpos _troupTransport] call grad_liberation_common_fnc_getNearestBluforObjective) select 0;
_unload_distance = 1000;
sleep 1;
_initial_crewcount = count crew _troupTransport;

waitUntil { sleep 0.2; !(alive _troupTransport) || !(alive (driver _troupTransport)) || (((_troupTransport distance _dat_objective) < _unload_distance) && (!(surfaceIsWater (getpos _troupTransport)))) };

if ((alive _troupTransport) && (alive (driver _troupTransport))) then {
	_troupgrp = createGroup LIB_side_enemy;

	while {(count (waypoints _troupgrp)) != 0} do {deleteWaypoint ((waypoints _troupgrp) select 0);};

	{
		_x createUnit [_start_pos, _troupgrp,"this addMPEventHandler [""MPKilled"", {_this spawn [] call grad_liberation_common_fnc_killManager}]", 0.5, "private"];
	} foreach (["army"] call grad_liberation_common_fnc_getAdaptiveSquadComp);

	{ _x moveInCargo _troupTransport } foreach (units _troupgrp);
	while {(count (waypoints _troupgrp)) != 0} do {deleteWaypoint ((waypoints _troupgrp) select 0);};

	sleep 3;

	_transport_waypoint =  _transport_group addWaypoint [getpos _troupTransport, 0,0];
	_transport_waypoint setWaypointType "TR UNLOAD";
	_transport_waypoint setWaypointCompletionRadius 200;

	_troops_waypoint = _troupgrp addWaypoint [getpos _troupTransport, 0];
	_troops_waypoint setWaypointType "GETOUT";
	_troops_waypoint setWaypointCompletionRadius 200;

	_troops_waypoint synchronizeWaypoint [_transport_waypoint];

	{ unassignVehicle _troupTransport } forEach (units _troupgrp);
	_troupgrp leaveVehicle _troupTransport;
	(units _troupgrp) allowGetIn false;

	_troops_waypoint_2 = _troupgrp addWaypoint [getpos _troupTransport, 250];
	_troops_waypoint_2 setWaypointType "MOVE";
	_troops_waypoint_2 setWaypointCompletionRadius 5;

	waitUntil { sleep 0.3; _initial_crewcount >= count crew _troupTransport };

	sleep 5;

	while {(count (waypoints _transport_group)) != 0} do {deleteWaypoint ((waypoints _transport_group) select 0);};

	_waypoint2 = _transport_group addWaypoint [_dat_objective, 100];
	_waypoint2 setWaypointType "SAD";
	_waypoint2 setWaypointSpeed "NORMAL";
	_waypoint2 setWaypointBehaviour "COMBAT";
	_waypoint2 setWaypointCombatMode "RED";
	_waypoint2 setWaypointCompletionRadius 30;

	_waypoint2 = _transport_group addWaypoint [_dat_objective, 100];
	_waypoint2 setWaypointType "SAD";

	_waypoint2 = _transport_group addWaypoint [_dat_objective, 100];
	_waypoint2 setWaypointType "CYCLE";

	sleep 10;

	[_troupgrp, true] spawn battlegroupAi;
};