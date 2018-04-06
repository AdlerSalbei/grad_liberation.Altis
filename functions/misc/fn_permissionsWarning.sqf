if ( liberation_permissions_param ) then {

	waitUntil { !(isNil "LIB_permissions") };

	sleep 5;

	while { count LIB_permissions == 0 } do {
		hint localize "STR_PERMISSION_WARNING";
		sleep 5;
	};

	hintSilent "";

};