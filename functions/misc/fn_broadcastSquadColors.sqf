while { true } do {

	if ( local group player ) then {
		{
			if ( _x getVariable ["LIB_squad_color", "MAIN"] != assignedTeam _x ) then {
				_x setVariable ["LIB_squad_color", assignedTeam _x, true ];
			};
		} foreach (units group player);
	};

	sleep 5;
};