/*
[] call grad_liberation_shared_fnc_fuelConsumption.sqf
Author: Wyqer
Website: www.killahpotatoes.de
Date: 2017-02-02

Description:
This script handles the fuel consumption of vehicles, so that refueling will be necessary more often.

Parameters:
_this select 0 - OBJECT - Vehicle

Method:
execVM

Example for initPlayerLocal.sqf:
player addEventHandler ["GetInMan", {[ _this select 2] execVM "scripts\[] call grad_liberation_shared_fnc_fuelConsumption.sqf";}];
*/

//CONFIG
// Time in Minutes till a full tank depletes when the vehicle is standing with running engine
private _kp_neutral_consumption = KP_liberation_fuel_neutral;
// Time in Minutes till a full tank depletes when the vehicle is driving
private _kp_normal_consumption = KP_liberation_fuel_normal;
// Time in Minutes till a full tank depletes when the vehicle is driving at max speed
private _kp_max_consumption = KP_liberation_fuel_max;

/*
DO NOT EDIT BELOW
*/

if (isNil "[] call grad_liberation_shared_fnc_fuelConsumption_vehicles") then {
	[] call grad_liberation_shared_fnc_fuelConsumption_vehicles = [];
};

if (!((_this select 0) in [] call grad_liberation_shared_fnc_fuelConsumption_vehicles)) then {
	[] call grad_liberation_shared_fnc_fuelConsumption_vehicles pushBack (_this select 0);
	while {local (_this select 0)} do {
		if (isEngineOn (_this select 0)) then {
			if (speed (_this select 0) > 5) then {
				if (speed (_this select 0) > (getNumber (configFile >> "CfgVehicles" >> typeOf (_this select 0) >> "maxSpeed") * 0.9)) then {
					(_this select 0) setFuel (fuel (_this select 0) - (1 / (_kp_max_consumption * 60)));
				} else {
					(_this select 0) setFuel (fuel (_this select 0) - (1 / (_kp_normal_consumption * 60)));
				};
			} else {
				(_this select 0) setFuel (fuel (_this select 0) - (1 / (_kp_neutral_consumption * 60)));
			};
		};
		uiSleep 1;
	};
	[] call grad_liberation_shared_fnc_fuelConsumption_vehicles deleteAt ([] call grad_liberation_shared_fnc_fuelConsumption_vehicles find (_this select 0));
};