waitUntil {!isNil "save_is_loaded"};
waitUntil {!isNil "liberation_production_markers"};

private _liberation_production_markers_old = [0];

while {LIB_endgame == 0} do {
	waitUntil {sleep 5;
		!(_liberation_production_markers_old isEqualTo liberation_production_markers)
	};
	
	{
		private _marker_text = (_x select 4) + " [";
		if (_x select 1) then {_marker_text = _marker_text + "S";};
		if (_x select 2) then {_marker_text = _marker_text + "A";};
		if (_x select 3) then {_marker_text = _marker_text + "F";};
		_marker_text = _marker_text + "]";
		(_x select 0) setMarkerTextLocal _marker_text;
	} forEach liberation_production_markers;

	_liberation_production_markers_old = +liberation_production_markers;
};
