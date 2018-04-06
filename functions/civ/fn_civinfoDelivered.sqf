params ["_informant"];

if (isServer && alive _informant) then {
	resources_intel = resources_intel + liberation_civinfo_intel;
	[2] spawn F_cr_changeCR;
	[1] remoteExec ["civinfo_notifications"];
	
	sleep 6;
	
	if ((random 100) <= liberation_civinfo_task_chance) then {
		private _hc = [] call grad_liberation_common_fnc_lessLoadedHC;

		if (isNull _hc) then {
			[] spawn civinfo_task;
		} else {
			[] remoteExec ["civinfo_task", _hc];
		};	
	};
};
