private [ "_huronlocal" ];

while { true } do {
	_huronlocal = [] call grad_liberation_common_fnc_spartanScan;
	if ( !( isNull _huronlocal) ) then {
		"huronmarker" setmarkerposlocal (getpos _huronlocal);
	} else {
		"huronmarker" setmarkerposlocal markers_reset;
	};
	sleep 4.9;
};
