///////////////////Computer Boards///////////////////////////////////

/datum/design/board
	name = "Computer Design ( NULL ENTRY )"
	desc = "I promise this doesn't give you syndicate goodies!"
	build_type = IMPRINTER | AWAY_IMPRINTER
	materials = list(/datum/material/glass = 1000)

/datum/design/board/arcade_battle
	name = "Computer Design (Battle Arcade Machine)"
	desc = "Allows for the construction of circuit boards used to build a new arcade machine."
	id = "arcade_battle"
	build_path = /obj/item/circuitboard/computer/arcade/battle
	category = list(RND_CATEGORY_COMPUTER_BOARDS)


/datum/design/board/orion_trail
	name = "Computer Design (Orion Trail Arcade Machine)"
	desc = "Allows for the construction of circuit boards used to build a new Orion Trail machine."
	id = "arcade_orion"
	build_path = /obj/item/circuitboard/computer/arcade/orion_trail
	category = list(RND_CATEGORY_COMPUTER_BOARDS)


/datum/design/board/seccamera
	name = "Computer Design (Security Camera)"
	desc = "Allows for the construction of circuit boards used to build security camera computers."
	id = "seccamera"
	build_path = /obj/item/circuitboard/computer/security
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/board/rdcamera
	name = "Computer Design (Research Monitor)"
	desc = "Allows for the construction of circuit boards used to build research camera computers."
	id = "rdcamera"
	build_path = /obj/item/circuitboard/computer/research
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/xenobiocamera
	name = "Computer Design (Xenobiology Console)"
	desc = "Allows for the construction of circuit boards used to build xenobiology camera computers."
	id = "xenobioconsole"
	build_path = /obj/item/circuitboard/computer/xenobiology
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/aiupload
	name = "Computer Design (AI Upload)"
	desc = "Allows for the construction of circuit boards used to build an AI Upload Console."
	id = "aiupload"
	materials = list(/datum/material/glass = 1000, /datum/material/gold = 2000, /datum/material/diamond = 2000, /datum/material/bluespace = 2000)
	build_path = /obj/item/circuitboard/computer/aiupload
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/borgupload
	name = "Computer Design (Cyborg Upload)"
	desc = "Allows for the construction of circuit boards used to build a Cyborg Upload Console."
	id = "borgupload"
	materials = list(/datum/material/glass = 1000, /datum/material/gold = 2000, /datum/material/diamond = 2000, /datum/material/bluespace = 2000)
	build_path = /obj/item/circuitboard/computer/borgupload
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/med_data
	name = "Computer Design (Medical Records)"
	desc = "Allows for the construction of circuit boards used to build a medical records console."
	id = "med_data"
	build_path = /obj/item/circuitboard/computer/med_data
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL

/datum/design/board/operating
	name = "Computer Design (Operating Computer)"
	desc = "Allows for the construction of circuit boards used to build an operating computer console."
	id = "operating"
	build_path = /obj/item/circuitboard/computer/operating
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL | DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/pandemic
	name = "Computer Design (PanD.E.M.I.C. 2200)"
	desc = "Allows for the construction of circuit boards used to build a PanD.E.M.I.C. 2200 console."
	id = "pandemic"
	build_path = /obj/item/circuitboard/computer/pandemic
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL

/datum/design/board/scan_console
	name = "Computer Design (DNA Console)"
	desc = "Allows for the construction of circuit boards used to build a new DNA console."
	id = "scan_console"
	build_path = /obj/item/circuitboard/computer/scan_consolenew
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/comconsole
	name = "Computer Design (Communications)"
	desc = "Allows for the construction of circuit boards used to build a communications console."
	id = "comconsole"
	build_path = /obj/item/circuitboard/computer/communications
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SECURITY //Honestly should have a bridge techfab for this sometime.

/datum/design/board/crewconsole
	name = "Computer Design (Crew monitoring computer)"
	desc = "Allows for the construction of circuit boards used to build a Crew monitoring computer."
	id = "crewconsole"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/crew
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY | DEPARTMENT_BITFLAG_MEDICAL

/datum/design/board/secdata
	name = "Computer Design (Security Records Console)"
	desc = "Allows for the construction of circuit boards used to build a security records console."
	id = "secdata"
	build_path = /obj/item/circuitboard/computer/secure_data
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/board/atmosalerts
	name = "Computer Design (Atmosphere Alert)"
	desc = "Allows for the construction of circuit boards used to build an atmosphere alert console."
	id = "atmosalerts"
	build_path = /obj/item/circuitboard/computer/atmos_alert
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/atmos_control
	name = "Computer Design (Atmospheric Monitor)"
	desc = "Allows for the construction of circuit boards used to build an Atmospheric Monitor."
	id = "atmos_control"
	build_path = /obj/item/circuitboard/computer/atmos_control
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/robocontrol
	name = "Computer Design (Robotics Control Console)"
	desc = "Allows for the construction of circuit boards used to build a Robotics Control console."
	id = "robocontrol"
	materials = list(/datum/material/glass = 1000, /datum/material/gold = 1000, /datum/material/silver = 1000, /datum/material/bluespace = 2000)
	build_path = /obj/item/circuitboard/computer/robotics
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/slot_machine
	name = "Computer Design (Slot Machine)"
	desc = "Allows for the construction of circuit boards used to build a new slot machine."
	id = "slotmachine"
	build_path = /obj/item/circuitboard/computer/slot_machine
	category = list(RND_CATEGORY_COMPUTER_BOARDS)


/datum/design/board/powermonitor
	name = "Computer Design (Power Monitor)"
	desc = "Allows for the construction of circuit boards used to build a new power monitor."
	id = "powermonitor"
	build_path = /obj/item/circuitboard/computer/powermonitor
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/solarcontrol
	name = "Computer Design (Solar Control)"
	desc = "Allows for the construction of circuit boards used to build a solar control console."
	id = "solarcontrol"
	build_path = /obj/item/circuitboard/computer/solar_control
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/prisonmanage
	name = "Computer Design (Prisoner Management Console)"
	desc = "Allows for the construction of circuit boards used to build a prisoner management console."
	id = "prisonmanage"
	build_path = /obj/item/circuitboard/computer/prisoner
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/board/mechacontrol
	name = "Computer Design (Exosuit Control Console)"
	desc = "Allows for the construction of circuit boards used to build an exosuit control console."
	id = "mechacontrol"
	build_path = /obj/item/circuitboard/computer/mecha_control
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/mechapower
	name = "Computer Design (Mech Bay Power Control Console)"
	desc = "Allows for the construction of circuit boards used to build a mech bay power control console."
	id = "mechapower"
	build_path = /obj/item/circuitboard/computer/mech_bay_power_console
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/rdconsole
	name = "Computer Design (R&D Console)"
	desc = "Allows for the construction of circuit boards used to build a new R&D console."
	id = "rdconsole"
	build_path = /obj/item/circuitboard/computer/rdconsole
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/cargo
	name = "Computer Design (Supply Console)"
	desc = "Allows for the construction of circuit boards used to build a Supply Console."
	id = "cargo"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/cargo
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_CARGO

/datum/design/board/cargorequest
	name = "Computer Design (Supply Request Console)"
	desc = "Allows for the construction of circuit boards used to build a Supply Request Console."
	id = "cargorequest"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/cargo/request
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_CARGO

/datum/design/board/mining
	name = "Computer Design (Outpost Status Display)"
	desc = "Allows for the construction of circuit boards used to build an outpost status display console."
	id = "mining"
	build_path = /obj/item/circuitboard/computer/mining
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_CARGO | DEPARTMENT_BITFLAG_SECURITY

/datum/design/board/comm_monitor
	name = "Computer Design (Telecommunications Monitoring Console)"
	desc = "Allows for the construction of circuit boards used to build a telecommunications monitor."
	id = "comm_monitor"
	build_path = /obj/item/circuitboard/computer/comm_monitor
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/comm_server
	name = "Computer Design (Telecommunications Server Monitoring Console)"
	desc = "Allows for the construction of circuit boards used to build a telecommunication server browser and monitor."
	id = "comm_server"
	build_path = /obj/item/circuitboard/computer/comm_server
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/message_monitor
	name = "Computer Design (Messaging Monitor Console)"
	desc = "Allows for the construction of circuit boards used to build a messaging monitor console."
	id = "message_monitor"
	build_path = /obj/item/circuitboard/computer/message_monitor
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/aifixer
	name = "Computer Design (AI Integrity Restorer)"
	desc = "Allows for the construction of circuit boards used to build an AI Integrity Restorer."
	id = "aifixer"
	build_path = /obj/item/circuitboard/computer/aifixer
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SCIENCE

/datum/design/board/libraryconsole
	name = "Computer Design (Library Console)"
	desc = "Allows for the construction of circuit boards used to build a new library console."
	id = "libraryconsole"
	build_path = /obj/item/circuitboard/computer/libraryconsole
	category = list(RND_CATEGORY_COMPUTER_BOARDS)


/datum/design/board/apc_control
	name = "Computer Design (APC Control)"
	desc = "Allows for the construction of circuit boards used to build a new APC control console."
	id = "apc_control"
	build_path = /obj/item/circuitboard/computer/apc_control
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING

/datum/design/board/advanced_camera
	name = "Computer Design (Advanced Camera Console)"
	desc = "Allows for the construction of circuit boards used to build advanced camera consoles."
	id = "advanced_camera"
	build_path = /obj/item/circuitboard/computer/advanced_camera
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY

/datum/design/board/bountypad_control
	name = "Computer Design (Civilian Bounty Pad Control)"
	desc = "Allows for the construction of circuit boards used to build a new civilian bounty pad console."
	id = "bounty_pad_control"
	build_path = /obj/item/circuitboard/computer/bountypad
	category = list(RND_CATEGORY_COMPUTER_BOARDS)

/datum/design/board/exoscanner_console
	name = "Computer Design (Scanner Array Control Console)"
	desc = "Allows for the construction of circuit boards used to build a new scanner array control console."
	id = "exoscanner_console"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/exoscanner_console
	category = list(RND_CATEGORY_COMPUTER_BOARDS)

/datum/design/board/exodrone_console
	name = "Computer Design (Exploration Drone Control Console)"
	desc = "Allows for the construction of circuit boards used to build a new exploration drone control console."
	id = "exodrone_console"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/exodrone_console
	category = list(RND_CATEGORY_COMPUTER_BOARDS)

/datum/design/board/accounting_console
	name = "Computer Design (Account Lookup Console)"
	desc = "Allows for the construction of circuit boards used to assess the wealth of crewmates on station."
	id = "account_console"
	build_type = IMPRINTER
	build_path = /obj/item/circuitboard/computer/accounting
	category = list(RND_CATEGORY_COMPUTER_BOARDS)
	departmental_flags = DEPARTMENT_BITFLAG_SECURITY
