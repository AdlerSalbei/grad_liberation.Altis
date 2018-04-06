one_eco_done = false;
waitUntil {!isNil "sync_eco"};

while {true} do {
	waitUntil {
		sleep 0.2;
		count sync_eco > 0;
	};
	liberation_production = sync_eco select 0;
	liberation_logistics = sync_eco select 1;
	liberation_production_markers = sync_eco select 2;
	sync_eco = [];
	one_eco_done = true;
};
