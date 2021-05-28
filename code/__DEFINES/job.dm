#define get_job_playtime(client, job) (client.player_data? LAZYACCESS(client.player_data.playtimes, job)? client.player_data.playtimes[job].total_minutes MINUTES_TO_DECISECOND : 0 : 0)

// Squad name defines
#define SQUAD_NAME_1					"Alpha"
#define SQUAD_NAME_2					"Bravo"
#define SQUAD_NAME_3					"Charlie"
#define SQUAD_NAME_4					"Delta"
#define SQUAD_NAME_5					"Echo"

// Job name defines
#define JOB_SQUAD_MARINE				"Squad Marine"
#define JOB_SQUAD_LEADER				"Squad Leader"
#define JOB_SQUAD_ENGI					"Squad Engineer"
#define JOB_SQUAD_MEDIC					"Squad Medic"
#define JOB_SQUAD_SPECIALIST			"Squad Specialist"
#define JOB_SQUAD_RTO       			"Squad RT Operator"
#define JOB_SQUAD_SMARTGUN				"Squad Smartgunner"
#define JOB_SQUAD_ROLES					/datum/timelock/squad
#define JOB_SQUAD_ROLES_LIST            list(JOB_SQUAD_MARINE, JOB_SQUAD_LEADER, JOB_SQUAD_ENGI, JOB_SQUAD_MEDIC, JOB_SQUAD_SPECIALIST, JOB_SQUAD_SMARTGUN, JOB_SQUAD_RTO)

var/global/list/job_squad_roles = JOB_SQUAD_ROLES_LIST

#define JOB_COLONIST					"Colonist"
#define JOB_PASSENGER					"Passenger"
#define JOB_SURVIVOR					"Survivor"
#define JOB_SYNTH_SURVIVOR				"Synth Survivor"

#define JOB_CMO							"Chief Medical Officer"
#define JOB_DOCTOR						"Doctor"
#define JOB_NURSE						"Nurse"
#define JOB_RESEARCHER					"Researcher"
#define JOB_MEDIC_ROLES                 /datum/timelock/medic
#define JOB_MEDIC_ROLES_LIST            list(JOB_SQUAD_MEDIC, JOB_CMO, JOB_DOCTOR, JOB_NURSE, JOB_RESEARCHER)

#define JOB_CORPORATE_LIAISON			"Corporate Liaison"
#define JOB_MESS_SERGEANT				"Mess Sergeant"
#define JOB_SYNTH						"Synthetic"

#define JOB_CO							"Commanding Officer"
#define JOB_XO							"Executive Officer"
#define JOB_SO							"Staff Officer"
#define JOB_COMMAND_ROLES				/datum/timelock/command
#define JOB_COMMAND_ROLES_LIST          list(JOB_CO, JOB_XO, JOB_SO)
var/global/list/job_command_roles = JOB_COMMAND_ROLES_LIST

#define JOB_PILOT						"Pilot Officer"
#define JOB_CREWMAN						"Vehicle Crewman"

#define JOB_POLICE						"Military Police"
#define JOB_WARDEN						"Military Warden"
#define JOB_CHIEF_POLICE				"Chief MP"
#define JOB_POLICE_ROLES                /datum/timelock/mp
#define JOB_POLICE_ROLES_LIST           list(JOB_POLICE, JOB_WARDEN, JOB_CHIEF_POLICE)

#define JOB_SEA							"Senior Enlisted Advisor"

#define JOB_CHIEF_ENGINEER				"Chief Engineer"
#define JOB_MAINT_TECH					"Maintenance Technician"
#define JOB_ORDNANCE_TECH				"Ordnance Technician"
#define JOB_ENGINEER_ROLES              /datum/timelock/engineer
#define JOB_ENGINEER_ROLES_LIST         list(JOB_SQUAD_ENGI, JOB_MAINT_TECH, JOB_ORDNANCE_TECH, JOB_CHIEF_ENGINEER)

#define JOB_CHIEF_REQUISITION			"Requisitions Officer"
#define JOB_CARGO_TECH					"Cargo Technician"
#define JOB_REQUISITION_ROLES           /datum/timelock/requisition
#define JOB_REQUISITION_ROLES_LIST      list(JOB_CHIEF_REQUISITION, JOB_CARGO_TECH)

#define JOB_MARSOC "MARSOC Operator"

#define JOB_HUMAN_ROLES                 /datum/timelock/human
#define JOB_XENO_ROLES                  /datum/timelock/xeno

#define JOB_STOWAWAY					"Stowaway"

#define JOB_ADMIRAL						"USCM Admiral"

// Used to add a timelock to a job. Will be passed onto derivatives
#define AddTimelock(Path, timelockList) \
##Path/setup_requirements(var/list/L){\
    L += timelockList;\
    . = ..(L);\
}

// Used to add a timelock to a job. Will be passed onto derivates. Will not include the parent's timelocks.
#define OverrideTimelock(Path, timelockList) \
##Path/setup_requirements(var/list/L){\
    L = timelockList;\
    . = ..(L);\
}

//-------- PMC --------//
#define JOB_PMC							"PMC Standard"
#define JOB_PMC_ENGINEER				"PMC Mechanic"
#define JOB_PMC_DOCTOR					"PMC Triage"
#define JOB_PMC_INVESTIGATOR			"PMC Medical Investigator"
#define JOB_PMC_ELITE					"PMC Elite"
#define JOB_PMC_GUNNER					"PMC Support Specialist" //Renamed from Specialist to Support Specialist as it only has SG skills.
#define JOB_PMC_SNIPER					"PMC Specialist" //Renamed from Sharpshooter to specialist as it uses specialist skills.
#define JOB_PMC_NINJA					"PMC Ninja"
#define JOB_PMC_XENO_HANDLER            "PMC Xeno Handler"
#define JOB_PMC_COMMANDO				"PMC Commando"
#define JOB_PMC_LEADER					"PMC Leader"
#define JOB_PMC_LEAD_INVEST				"PMC Lead Investigator"

//-------- UPP --------//
#define JOB_UPP							"UPP Private"
#define JOB_UPP_CONSCRIPT				"UPP Conscript"
#define JOB_UPP_ENGI					"UPP Korporal Sapper"
#define JOB_UPP_MEDIC					"UPP Korporal Medic"
#define JOB_UPP_SPECIALIST				"UPP Serzhant"
#define JOB_UPP_LEADER					"UPP Master Serzhant"

#define UPP_JOB_LIST					list(JOB_UPP, JOB_UPP_ENGI, JOB_UPP_MEDIC, JOB_UPP_SPECIALIST, JOB_UPP_LEADER)

#define JOB_UPP_COMMANDO				"UPP Junior Kommando"
#define JOB_UPP_COMMANDO_MEDIC			"UPP 2nd Kommando"
#define JOB_UPP_COMMANDO_LEADER			"UPP 1st Kommando"

#define UPP_COMMANDO_JOB_LIST			list(JOB_UPP_COMMANDO, JOB_UPP_COMMANDO_MEDIC, JOB_UPP_COMMANDO_LEADER)

#define JOB_UPP_REPRESENTATIVE			"UPP Representative"

#define JOB_UPP_CREWMAN					"UPP Tankist"

//-------- CLF --------//
#define JOB_CLF							"CLF Guerilla"
#define JOB_CLF_ENGI					"CLF Field Technician"
#define JOB_CLF_MEDIC					"CLF Field Medic"
#define JOB_CLF_SPECIALIST				"CLF Field Specialist"
#define JOB_CLF_LEADER					"CLF Cell Leader"

#define CLF_JOB_LIST					list(JOB_CLF, JOB_CLF_ENGI, JOB_CLF_MEDIC, JOB_CLF_SPECIALIST, JOB_CLF_LEADER)

//-------- RESS --------//
#define JOB_RESS_REPRESENTATIVE			"RESS Representative"

#define JOB_RESS_YONTO					"RMC Yonto"
#define JOB_RESS_SANTO					"RMC Santo"
#define JOB_RESS_NITO					"RMC Nito"
#define JOB_RESS_ITTO					"RMC Itto"

#define RESS_COMMANDO_JOB_LIST			list(JOB_RESS_YONTO, JOB_RESS_SANTO, JOB_RESS_NITO, JOB_RESS_ITTO)

#define JOB_RESS_SEAMAN					"RESS Seaman"
#define JOB_RESS_LSEAMAN				"RESS Leading Seaman"
#define JOB_RESS_SO						"RESS Standing Officer"
#define JOB_RESS_WO						"RESS Warrant Officer"
#define JOB_RESS_CPT					"RESS Captain"
#define JOB_RESS_ADM					"RESS Admiral"
#define JOB_RESS_GADM					"RESS Grand Admiral"
#define JOB_RESS_ER						"RESS Emperor"

#define RESS_OFFICER_JOB_LIST			list(JOB_RESS_SEAMAN, JOB_RESS_LSEAMAN, JOB_RESS_SO, JOB_RESS_WO, JOB_RESS_CPT, JOB_RESS_ADM, JOB_RESS_GADM, JOB_RESS_ER)

//-------- PROVOST --------//
#define JOB_PROVOST_OFFICER				"Provost Officer"
#define JOB_PROVOST_ENFORCER			"Provost Enforcer"
#define JOB_PROVOST_TML					"Provost Team Leader"
#define JOB_PROVOST_ADVISOR				"Provost Advisor"
#define JOB_PROVOST_INSPECTOR			"Provost Inspector"
#define JOB_PROVOST_MARSHALL			"Provost Marshall"
#define JOB_PROVOST_SMARSHALL			"Provost Sector Marshall"
#define JOB_PROVOST_CMARSHALL			"Provost Chief Marshall"

#define PROVOST_JOB_LIST				list(JOB_PROVOST_OFFICER, JOB_PROVOST_ENFORCER, JOB_PROVOST_TML, JOB_PROVOST_ADVISOR, JOB_PROVOST_INSPECTOR, JOB_PROVOST_MARSHALL, JOB_PROVOST_SMARSHALL, JOB_PROVOST_CMARSHALL)

//antag jobs supported by adaptive antag vendors
#define VENDOR_ANTAG_JOBS				list(JOB_UPP_COMMANDO, JOB_UPP_COMMANDO_MEDIC, JOB_UPP_COMMANDO_LEADER, JOB_UPP, JOB_UPP_ENGI, JOB_UPP_MEDIC, JOB_UPP_SPECIALIST, JOB_UPP_LEADER, JOB_CLF, JOB_CLF_ENGI, JOB_CLF_MEDIC, JOB_CLF_SPECIALIST, JOB_CLF_LEADER)

#define JOB_XENOMORPH                   "Xenomorph"
#define JOB_XENOMORPH_QUEEN             "Queen"

// For colouring the ranks in the statistics menu
#define JOB_PLAYTIME_TIER_1         (10 HOURS)
#define JOB_PLAYTIME_TIER_2         (25 HOURS)
#define JOB_PLAYTIME_TIER_3         (70 HOURS)
#define JOB_PLAYTIME_TIER_4         (175 HOURS)

#define XENO_NO_AGE     -1
#define XENO_NORMAL		0
#define XENO_MATURE		1
#define XENO_ELDER		2
#define XENO_ANCIENT	3
#define XENO_PRIME	4

#define JOB_OBSERVER                    "Observer" // For monthly time tracking

#define TIMELOCK_JOB(role_id, hours) new/datum/timelock(role_id, hours, role_id)

//For displaying groups of jobs. Used by new player's latejoin menu and by crew manifest.
#define FLAG_SHOW_CIC			1
#define FLAG_SHOW_AUXIL_SUPPORT	2
#define FLAG_SHOW_MISC			4
#define FLAG_SHOW_POLICE		8
#define FLAG_SHOW_ENGINEERING	16
#define FLAG_SHOW_REQUISITION	32
#define FLAG_SHOW_MEDICAL		64
#define FLAG_SHOW_MARINES		128
#define FLAG_SHOW_ALL_JOBS		FLAG_SHOW_CIC|FLAG_SHOW_AUXIL_SUPPORT|FLAG_SHOW_MISC|FLAG_SHOW_POLICE|FLAG_SHOW_ENGINEERING|FLAG_SHOW_REQUISITION|FLAG_SHOW_MEDICAL|FLAG_SHOW_MARINES
