/*
Needed Mods:
- None

Optional Mods:
- BWMod
- RHSUSAF
- F-15C
- F/A-18
*/

/* - Support classnames.
Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not, just don't try!	*/
FOB_typename = "Land_Cargo_HQ_V4_F";									// This is the main FOB HQ building. 																									Default is "Land_Cargo_HQ_V1_F".
FOB_box_typename = "B_Slingload_01_Cargo_F";							// This is the FOB as a container. 																										Default is "B_Slingload_01_Cargo_F".
FOB_truck_typename = "B_T_Truck_01_box_F";								// This is the FOB as a vehicle.																										Default is "B_Truck_01_box_F".
Arsenal_typename = "B_supplyCrate_F";									// This is the virtual arsenal as portable supply crates.  																				Default is "B_supplyCrate_F".
Respawn_truck_typename = "B_T_Truck_01_medical_F";						// This is the mobile respawn (and medical) truck. 																						Default is "B_Truck_01_medical_F".
huron_typename = "B_Heli_Transport_03_unarmed_F";						// This is Spartan 01, a multipurpose mobile respawn as a helicopter. 																	Default is "B_Heli_Transport_03_unarmed_F".
crewman_classname = "B_T_crew_F";										// This defines the crew for vehicles. 																									Default is "B_crew_F".
pilot_classname = "B_T_Helipilot_F";									// This defines the pilot for helicopters. 																								Default is "B_Helipilot_F".
liberation_little_bird_classname = "B_Heli_Light_01_F"; 				// These are the little birds which spawn on the Freedom or at Chimera base.															Default is "B_Heli_Light_01_F".
liberation_boat_classname = "B_Boat_Transport_01_F"; 				// These are the boats which spawn at the stern of the Freedom.																			Default is "B_Boat_Transport_01_F".
liberation_truck_classname = "B_T_Truck_01_transport_F";				// These are the trucks which are used in the logistic convoy system.																	Default is "B_Truck_01_transport_F".
liberation_small_storage_building = "ContainmentArea_02_sand_F";		// A small storage area for resources.																									Default is "ContainmentArea_02_sand_F".
liberation_large_storage_building = "ContainmentArea_01_sand_F";		// A large storage area for resources.																									Default is "ContainmentArea_01_sand_F".
liberation_recycle_building = "Land_CarService_F";					// The building defined to unlock FOB recycling functionality.																			Default is "Land_CarService_F".
liberation_air_vehicle_building = "Land_Radar_Small_F";				// The building defined to unlock FOB air vehicle functionality.																		Default is "Land_Radar_Small_F".
liberation_heli_slot_building = "Land_HelipadSquare_F";				// The helipad used to increase the GLOBAL rotary-wing cap.																				Default is "Land_HelipadSquare_F".
liberation_plane_slot_building = "Land_TentHangar_V1_F";				// The hangar used to increase the GLOBAL fixed-wing cap.																				Default is "Land_TentHangar_V1_F".
liberation_supply_crate = "CargoNet_01_box_F";						// This defines the supply crates, as in resources.																						Default is "CargoNet_01_box_F".
liberation_ammo_crate = "B_CargoNet_01_ammo_F";						// This defines the ammunition crates.																									Default is "B_CargoNet_01_ammo_F".
liberation_fuel_crate = "CargoNet_01_barrels_F";						// This defines the fuel crates.																										Default is "CargoNet_01_barrels_F".

/* - Friendly classnames.
Each array below represents one of the 7 pages within the build menu. 
Format: ["vehicle_classname",supplies,ammunition,fuel],	Example: ["B_APC_Tracked_01_AA_F",300,150,150],
The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.	*/
infantry_units = [
	["B_T_Soldier_F",20,0,0],											//Rifleman
	["B_T_Soldier_LAT_F",30,0,0],										//Rifleman (AT)
	["B_T_Soldier_GL_F",25,0,0],										//Grenadier
	["B_T_Soldier_AR_F",25,0,0],										//Autorifleman
	["B_T_soldier_M_F",30,0,0],											//Marksman
	["B_T_Soldier_AT_F",50,10,0],										//AT Specialist
	["B_T_Soldier_AA_F",50,10,0],										//AA Specialist
	["B_T_Medic_F",30,0,0],												//Combat Life Saver
	["B_T_Engineer_F",30,0,0],											//Engineer
	["B_T_Soldier_Exp_F",30,0,0],										//Explosives Specialist
	["B_T_Recon_F",20,0,0],												//Recon Scout
	["B_T_Recon_LAT_F",30,0,0],											//Recon Scout (AT)
	["B_T_Recon_M_F",30,0,0],											//Recon Marksman
	["B_T_Recon_Medic_F",30,0,0],										//Recon Paramedic
	["B_T_Recon_exp_F",30,0,0],											//Recon Demolition Expert
	["B_T_Sniper_F",70,5,0],											//Sniper
	["B_T_ghillie_tna_F",70,5,0],										//Sniper (Jungle)
	["B_T_Spotter_F",20,0,0],											//Spotter
	["B_T_Crew_F",10,0,0],												//Crewman
	["B_T_Soldier_PG_F",20,0,0],										//Para Trooper
	["B_T_Helicrew_F",10,0,0],											//Helicopter Crew
	["B_T_Helipilot_F",10,0,0],											//Helicopter Pilot
	["B_T_Pilot_F",10,0,0]												//Pilot
];

light_vehicles = [
	["B_T_Quadbike_01_F",50,0,25],										//Quad Bike
	["B_T_LSV_01_unarmed_F",75,0,50],									//Prowler
	["B_T_LSV_01_armed_F",75,40,50],									//Prowler (HMG)
	["B_T_MRAP_01_F",100,0,50],											//Hunter
	["B_T_MRAP_01_hmg_F",100,40,50],									//Hunter (HMG)
	["B_T_MRAP_01_gmg_F",100,60,50],									//Hunter (GMG)
	["I_MRAP_03_F",100,0,50],											//Strider
	["I_MRAP_03_hmg_F",100,40,50],										//Strider (HMG) 
	["I_MRAP_03_gmg_F",100,60,50],										//Strider (GMG)
	["rhsusf_m1025_w",100,0,50],										//M1025A2
	["rhsusf_m1025_w_m2",100,40,50],									//M1025A2 (M2)
	["rhsusf_m1025_w_mk19",100,60,50],									//M1025A2 (Mk19)
	["rhsusf_m998_w_2dr_fulltop",100,0,50],								//M1097A2 (2D)
	["rhsusf_m998_w_2dr_halftop",100,0,50],								//M1097A2 (2D / open back)
	["BWA3_Eagle_Fleck",100,0,50],										//Eagle IV
	["BWA3_Eagle_FLW100_Fleck",100,100,50],								//Eagle IV (FLW 100)
	["rhsusf_M1230a1_usarmy_wd",120,0,60],								//M1230A1 (MEDEVAC)
	["B_T_Truck_01_transport_F",125,0,75],								//HEMTT Transport
	["B_T_Truck_01_covered_F",125,0,75],								//HEMTT Transport (Covered)
	["rhsusf_M1083A1P2_wd_open_fmtv_usarmy",125,0,75],					//M1083A1P2 Transport
	["rhsusf_M1083A1P2_wd_fmtv_usarmy",125,0,75],						//M1083A1P2 Transport (Covered)
	["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy",100,0,50],				//M1083A1P2
	["rhsusf_M977A4_BKIT_usarmy_wd",125,0,75],							//M977A4 BKIT 
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",125,40,75],						//M977A4 BKIT (HMG)
	["B_UGV_01_F",150,0,50],											//UGV Stomper
	["B_UGV_01_rcws_F",150,40,50],										//UGV Stomper (RCWS)
	["B_T_Boat_Transport_01_F",100,0,25],								//Assault Boat
	["B_T_Boat_Armed_01_minigun_F",200,80,75],							//Speedboat Minigun
	["rhsusf_mkvsoc",250,200,100],										//Mk.V SOCOM
	["B_SDV_01_F",150,0,50]												//SDV
];

heavy_vehicles = [
	["rhsusf_m113_usarmy",200,40,100],									//M113A3 (M2)
	["rhsusf_m113_usarmy_MK19",200,60,100],								//M113A3 (Mk19)
	["rhsusf_m113_usarmy_medical",200,0,100],							//M113A3 (Medical)
	["B_T_APC_Wheeled_01_cannon_F",200,75,125],							//AMV-7 Marshall
	["I_APC_Wheeled_03_cannon_F",200,75,125],							//AFV-4 Gorgon
	["B_T_APC_Tracked_01_rcws_F",300,100,150],							//IFV-6c Panther
	["I_APC_tracked_03_cannon_F",300,150,150],							//FV-720 Mora
	["RHS_M2A2_BUSKI_WD",300,200,150],									//M2A2ODS (Busk I)
	["BWA3_Puma_Fleck",300,225,150],									//IFV Puma
	["RHS_M2A3_BUSKIII_wd",300,250,175],								//M2A3 (Busk III)
	["B_T_APC_Tracked_01_AA_F",300,250,175],							//IFV-6a Cheetah
	["RHS_M6_wd",300,250,175],											//M6A2
	["B_T_MBT_01_cannon_F",400,300,200],								//M2A1 Slammer
	["I_MBT_03_cannon_F",400,300,200],									//MBT-52 Kuma
	["rhsusf_m1a1aim_tuski_wd",400,350,225],							//M1A1SA (Tusk I)
	["B_T_MBT_01_TUSK_F",500,350,225],									//M2A4 Slammer UP
	["rhsusf_m1a2sep1tuskiiwd_usarmy",500,400,250],						//M1A2SEPv1 (Tusk II)
	["BWA3_Leopard2A6M_Fleck",500,400,250],								//MBT Leopard 2A6M
	["B_T_MBT_01_arty_F",600,1250,300],									//M4 Scorcher
	["rhsusf_m109_usarmy",600,1250,300],								//M109A6
	["B_T_MBT_01_mlrs_F",800,1750,400]									//M5 Sandstorm MLRS
];

air_vehicles = [
	["B_UAV_01_F",75,0,25],												//AR-2 Darter
	["B_UAV_06_F",80,0,30],												//AL-6 Pelican (Cargo)
	["B_Heli_Light_01_F",200,0,100],									//MH-9 Hummingbird
	["B_Heli_Light_01_dynamicLoadout_F",200,100,100],					//AH-9 Pawnee
	["RHS_MELB_MH6M",200,0,100],										//MH-6M Little Bird
	["RHS_MELB_AH6M",200,200,100],										//AH-6M Pawnee
	["I_Heli_light_03_unarmed_F",225,0,125],							//WY-55 Hellcat
	["I_Heli_light_03_dynamicLoadout_F",225,200,125],					//WY-55 Hellcat (Armed)
	["RHS_UH1Y_UNARMED",225,0,125],										//UH-1Y (Unarmed)
	["RHS_UH1Y_GS",225,200,125],										//UH-1Y (Ground Suppression)
	["B_Heli_Attack_01_dynamicLoadout_F",500,400,200],					//AH-99 Blackfoot
	["RHS_AH1Z",500,500,200],											//AH-1Z (Multi-Role)
	["RHS_AH64D_wd",750,750,250],										//AH-64D (Multi-Role)
	["BWA3_Tiger_RMK_Universal",750,750,250],							//UH Tiger RMK (Universal)
	["B_Heli_Transport_01_F",250,80,150],								//UH-80 Ghost Hawk
	["B_Heli_Transport_01_camo_F",250,80,150],							//UH-80 Ghost Hawk (Camo)
	["RHS_UH60M2",250,0,150],											//UH-60M (Unarmed)
	["RHS_UH60M",250,80,150],											//UH-60M
	["RHS_UH60M_MEV2",300,0,150],										//UH-60M MEV2
	["RHS_CH_47F",275,80,175],											//CH-47 Chinook (Armed)
	["I_Heli_Transport_02_F",275,0,175],								//CH-49 Mohawk
	["rhsusf_CH53E_USMC",300,0,175],									//CH-53E Super Stallion
	["B_Heli_Transport_03_F",300,80,175],								//CH-67 Huron (Armed)
	["B_UAV_02_dynamicLoadout_F",400,300,200],							//MQ-4A Greyhawk
	["B_T_UAV_03_dynamicLoadout_F",450,500,250],						//MQ-12 Falcon
	["B_UAV_05_F",500,500,200],											//UCAV Sentinel
	["I_Plane_Fighter_03_dynamicLoadout_F",500,400,350],				//A-143 Buzzard (AA)
	["B_Plane_CAS_01_dynamicLoadout_F",1000,800,400],					//A-164 Wipeout (CAS)
	["RHS_A10",1000,1000,400],											//A-10A (CAS)
	["I_Plane_Fighter_04_F",1000,1200,400],								//A-149 Gryphon
	["FIR_F15C",1250,1250,450],											//F-15C Eagle
	["FIR_F15D",1250,1250,450],											//F-15D Eagle
	["FIR_F15E",1250,1500,450],											//F-15E Strike Eagle
	["JS_JC_FA18E",1500,1750,450],										//F/A-18 E Super Hornet
	["JS_JC_FA18F",1500,1750,450],										//F/A-18 F Super Hornet
	["B_Plane_Fighter_01_F",1500,1750,450],								//F/A-181 Black Wasp II
	["B_Plane_Fighter_01_Stealth_F",1500,1750,450],						//F/A-181 Black Wasp II (Stealth)
	["B_T_VTOL_01_armed_F",750,1500,500],								//V-44 X Blackfish (Armed)
	["B_T_VTOL_01_infantry_F",750,0,500],								//V-44 X Blackfish (Infantry)
	["B_T_VTOL_01_vehicle_F",750,0,500]									//V-44 X Blackfish (Vehicle)
];

static_vehicles = [
	["B_HMG_01_F",25,40,0],												//Mk30A HMG .50
	["B_HMG_01_high_F",25,40,0],										//Mk30 HMG .50 (Raised)
	["B_HMG_01_A_F",35,40,0],											//Mk30 HMG .50 (Autonomous)
	["B_GMG_01_F",35,60,0],												//Mk32A GMG 20mm
	["B_GMG_01_high_F",35,60,0],										//Mk32 GMG 20mm (Raised)
	["B_GMG_01_A_F",45,60,0],											//Mk32 GMG 20mm (Autonomous)
	["B_T_Static_AT_F",50,100,0],										//Static Titan Launcher (AT)
	["B_T_Static_AA_F",50,100,0],										//Static Titan Launcher (AA)
	["B_Mortar_01_F",80,150,0],											//Mk6 Mortar
	["RHS_M119_WD",100,200,0]											//M119A2
];

buildings = [
	["Land_Cargo_House_V4_F",0,0,0],
	["Land_Cargo_Patrol_V4_F",0,0,0],
	["Land_Cargo_Tower_V4_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Flag_US_F",0,0,0],
	["BWA3_Flag_Ger_F",0,0,0],
	["Flag_UK_F",0,0,0],
	["GRAD_flag_gruppeAdlerWhite",0,0,0],
	["Land_Medevac_house_V1_F",0,0,0],
	["Land_Medevac_HQ_V1_F",0,0,0],
	["Flag_RedCrystal_F",0,0,0],	
	["CamoNet_ghex_F",0,0,0],
	["CamoNet_ghex_open_F",0,0,0],
	["CamoNet_ghex_big_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_PortableLight_double_F",0,0,0],
	["Land_LampSolar_F",0,0,0],
	["Land_LampHalogen_F",0,0,0],
	["Land_LampStreet_small_F",0,0,0],
	["Land_LampAirport_F",0,0,0],
	["Land_HelipadCircle_F",0,0,0],										//Strictly aesthetic - as in it does not increase helicopter cap!
	["Land_HelipadRescue_F",0,0,0],										//Strictly aesthetic - as in it does not increase helicopter cap!
	["PortableHelipadLight_01_blue_F",0,0,0],
	["PortableHelipadLight_01_green_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["MapBoard_stratis_F",0,0,0],
	["MapBoard_seismic_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_empty_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_PaperBox_closed_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_GasTank_01_blue_F",0,0,0],
	["Land_GasTank_01_khaki_F",0,0,0],
	["Land_GasTank_01_yellow_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_BarrelWater_F",0,0,0],
	["Land_BarrelWater_grey_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_BagFence_01_round_green_F",0,0,0],
	["Land_BagFence_01_short_green_F",0,0,0],
	["Land_BagFence_01_long_green_F",0,0,0],
	["Land_BagFence_01_corner_green_F",0,0,0],
	["Land_BagFence_01_end_green_F",0,0,0],	
	["Land_BagBunker_01_small_green_F",0,0,0],
	["Land_BagBunker_01_large_green_F",0,0,0],
	["Land_HBarrier_01_tower_green_F",0,0,0],
	["Land_HBarrier_01_line_1_green_F",0,0,0],
	["Land_HBarrier_01_line_3_green_F",0,0,0],
	["Land_HBarrier_01_line_5_green_F",0,0,0],
	["Land_HBarrier_01_big_4_green_F",0,0,0],
	["Land_HBarrier_01_wall_4_green_F",0,0,0],
	["Land_HBarrier_01_wall_6_green_F",0,0,0],
	["Land_HBarrier_01_wall_corner_green_F",0,0,0],
	["Land_HBarrier_01_wall_corridor_green_F",0,0,0],
	["Land_HBarrier_01_big_tower_green_F",0,0,0],
	["Land_CncBarrierMedium_F",0,0,0],
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_Concrete_SmallWall_4m_F",0,0,0],	
	["Land_Concrete_SmallWall_8m_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_CncWall1_F",0,0,0],	
	["Land_CncWall4_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,100,200,0],
	[Respawn_truck_typename,200,0,100],
	[FOB_box_typename,300,500,0],
	[FOB_truck_typename,300,500,75],
	[liberation_small_storage_building,0,0,0],
	[liberation_large_storage_building,0,0,0],
	[liberation_recycle_building,250,0,0],
	[liberation_air_vehicle_building,1000,0,0],
	[liberation_heli_slot_building,250,0,0],
	[liberation_plane_slot_building,500,0,0],
	["ACE_medicalSupplyCrate_advanced",50,0,0],
	["ACE_Box_82mm_Mo_HE",50,40,0],
	["ACE_Box_82mm_Mo_Smoke",50,10,0],
	["ACE_Box_82mm_Mo_Illum",50,10,0],
	["ACE_Wheel",10,0,0],
	["ACE_Track",10,0,0],
	["B_T_APC_Tracked_01_CRV_F",500,250,350],							//CRV-6e Bobcat
	["B_T_Truck_01_Repair_F",325,0,75],									//HEMTT Repair
	["B_T_Truck_01_fuel_F",125,0,275],									//HEMTT Fuel
	["B_T_Truck_01_ammo_F",125,200,75],									//HEMTT Ammo
	["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],					//M977A4 Repair
	["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],							//M978A4 Fuel
	["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],					//M977A4 Ammo
	["B_Slingload_01_Repair_F",275,0,0],								//Huron Repair
	["B_Slingload_01_Fuel_F",75,0,200],									//Huron Fuel
	["B_Slingload_01_Ammo_F",75,200,0]									//Huron Ammo
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad.
blufor_squad_inf_light = [
	"B_T_Soldier_TL_F",
	"B_T_Soldier_F",
	"B_T_Soldier_F",
	"B_T_Soldier_LAT_F",
	"B_T_Soldier_GL_F",
	"B_T_Soldier_AR_F",
	"B_T_Soldier_AR_F",
	"B_T_soldier_M_F",
	"B_T_Medic_F",
	"B_T_Engineer_F"
];

// Heavy infantry squad.
blufor_squad_inf = [
	"B_T_Soldier_TL_F",
	"B_T_Soldier_LAT_F",
	"B_T_Soldier_LAT_F",
	"B_T_Soldier_GL_F",
	"B_T_Soldier_AR_F",
	"B_T_Soldier_AR_F",
	"B_T_Soldier_AR_F",
	"B_T_soldier_M_F",
	"B_T_Medic_F",
	"B_T_Engineer_F"
];

// AT specialists squad.
blufor_squad_at = [
	"B_T_Soldier_TL_F",
	"B_T_Soldier_F",
	"B_T_Soldier_F",
	"B_T_Soldier_AT_F",
	"B_T_Soldier_AT_F",
	"B_T_Soldier_AT_F",
	"B_T_Medic_F",
	"B_T_Soldier_F"
];

// AA specialists squad.
blufor_squad_aa = [
	"B_T_Soldier_TL_F",
	"B_T_Soldier_F",
	"B_T_Soldier_F",
	"B_T_Soldier_AA_F",
	"B_T_Soldier_AA_F",
	"B_T_Soldier_AA_F",
	"B_T_Medic_F",
	"B_T_Soldier_F"
];

// Force recon squad.
blufor_squad_recon = [
	"B_T_Recon_TL_F",
	"B_T_Recon_F",
	"B_T_Recon_F",
	"B_T_Recon_LAT_F",
	"B_T_Recon_M_F",
	"B_T_Recon_M_F",
	"B_T_Sniper_F",
	"B_T_Spotter_F",
	"B_T_Recon_Medic_F",
	"B_T_Recon_Exp_F"
];

// Paratroopers squad.
blufor_squad_para = [
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F",
	"B_T_Soldier_PG_F"
];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles = [
	"rhsusf_mkvsoc",													//Mk.V SOCOM
	"rhsusf_m1a1aim_tuski_wd",											//M1A1SA (Tusk I)
	"B_T_MBT_01_TUSK_F",												//M2A4 Slammer UP
	"rhsusf_m1a2sep1tuskiiwd_usarmy",									//M1A2SEPv1 (Tusk II)
	"BWA3_Leopard2A6M_Fleck",											//MBT Leopard 2A6M
	"B_T_MBT_01_arty_F",												//M4 Scorcher
	"rhsusf_m109_usarmy",												//M109A6
	"B_T_MBT_01_mlrs_F",												//M5 Sandstorm MLRS
	"B_Heli_Attack_01_dynamicLoadout_F",								//AH-99 Blackfoot
	"RHS_AH64D_wd",														//AH-64D (Multi-Role)
	"BWA3_Tiger_RMK_Universal",											//UH Tiger RMK (Universal)
	"B_UAV_02_dynamicLoadout_F",										//MQ-4A Greyhawk
	"B_T_UAV_03_dynamicLoadout_F",										//MQ-12 Falcon
	"B_UAV_05_F",														//UCAV Sentinel
	"B_Plane_CAS_01_dynamicLoadout_F",									//A-164 Wipeout (CAS)
	"I_Plane_Fighter_04_F",												//A-149 Gryphon
	"RHS_A10",															//A-10A (CAS)
	"FIR_F15C",															//F-15C Eagle
	"FIR_F15D",															//F-15D Eagle
	"FIR_F15E",															//F-15E Strike Eagle
	"JS_JC_FA18E",														//F/A-18 E Super Hornet
	"JS_JC_FA18F",														//F/A-18 F Super Hornet
	"B_Plane_Fighter_01_F",												//F/A-181 Black Wasp II
	"B_Plane_Fighter_01_Stealth_F",										//F/A-181 Black Wasp II (Stealth)
	"B_T_VTOL_01_armed_F"												//V-44 X Blackfish (Armed)
];
