params ["_sector"];

private _createdcivs = [];
private _sectorpos = getMarkerPos _sector;

private _idx = 0;
private _nbcivs = round ((3 + (floor (random 7))) * liberation_civilian_activity);
private _spread = 1;
if (_sector in sectors_bigtown) then {
	_nbcivs = _nbcivs + 10;
	_spread = 2.5;
};

_nbcivs = _nbcivs * (sqrt (liberation_unitcap));

while {_idx < _nbcivs} do {
	private _spawnpos = [(((_sectorpos select 0) + (75 * _spread)) - (random (150 * _spread))),(((_sectorpos select 1) + (75 * _spread)) - (random (150 * _spread))),0];
	private _grp = createGroup LIB_side_civilian;
	(civilians select (floor (random (count civilians)))) createUnit [_spawnpos, _grp,"this addMPEventHandler [""MPKilled"", {_this spawn [] call grad_liberation_common_fnc_killManager}]"];
	private _nextciv = ((units _grp) select 0);
	_createdcivs pushBack _nextciv;
	[_grp] call addCivWaypoints;
	_idx = _idx + 1;
};

_createdcivs
