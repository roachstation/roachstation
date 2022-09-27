/datum/preference/choiced/ipc_screen
	savefile_key = "feature_ipc_screen"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Screen Style"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "ipc_screen"

/datum/preference/choiced/ipc_screen/init_possible_values()
	var/list/values = list()

	var/icon/ipc_head = icon('icons/mob/species/ipc/bodyparts.dmi', "synth_head")

	for (var/screen_name in GLOB.ipc_screens_list)
		var/datum/sprite_accessory/ipc_screen = GLOB.ipc_screens_list[screen_name]

		var/icon/icon_with_screen = new(ipc_head)
		icon_with_screen.Blend(icon(ipc_screen.icon, "m_ipc_screen_[ipc_screen.icon_state]_ADJ"), ICON_OVERLAY)
		values[ipc_screen.name] = icon_with_screen
		icon_with_screen.Scale(64, 64)
		icon_with_screen.Crop(15, 64, 15 + 31, 64 - 31)

	return values

/datum/preference/choiced/ipc_screen/apply_to_human(mob/living/carbon/target, value)
	target.dna.features["ipc_screen"] = value

//antennae

/datum/preference/choiced/ipc_antenna
	savefile_key = "feature_ipc_antenna"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Antenna"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "ipc_antenna"

/datum/preference/choiced/ipc_antenna/init_possible_values()
	var/list/values = list()

	var/icon/ipc_head = icon('icons/mob/species/ipc/bodyparts.dmi', "synth_head")

	for (var/antenna_name in GLOB.ipc_antennas_list)
		var/datum/sprite_accessory/ipc_antenna = GLOB.ipc_antennas_list[antenna_name]

		var/icon/icon_with_antenna = new(ipc_head)
		icon_with_antenna.Blend(icon(ipc_antenna.icon, "m_ipc_antenna_[ipc_antenna.icon_state]_ADJ"), ICON_OVERLAY)
		values[ipc_antenna.name] = icon_with_antenna
		icon_with_antenna.Scale(64, 64)
		icon_with_antenna.Crop(15, 64, 15 + 31, 64 - 31)

	return values

/datum/preference/choiced/ipc_antenna/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ipc_antenna"] = value

//chassis

/datum/preference/choiced/ipc_chassis
	savefile_key = "feature_ipc_chassis"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Chassis"
	should_generate_icons = TRUE
	relevant_mutant_bodypart = "ipc_chassis"

/datum/preference/choiced/ipc_chassis/init_possible_values()
	var/list/values = list()
	var/icon/ipc_body = icon('icons/blanks/32x32.dmi', "nothing")

	var/list/body_parts = list(
		/obj/item/bodypart/head/ipc,
		/obj/item/bodypart/chest/ipc,
		/obj/item/bodypart/l_arm/ipc,
		/obj/item/bodypart/r_arm/ipc,
	)

	for (var/chassis_name in GLOB.ipc_chassis_list)
		var/datum/sprite_accessory/chassis = GLOB.ipc_chassis_list[chassis_name]
		for (var/obj/item/bodypart/body_part in body_parts)
			ipc_body.Blend(icon('icons/mob/species/ipc/bodyparts.dmi', "[chassis_name]_[body_part]"), ICON_OVERLAY)

		var/icon/icon_with_chassis = new(ipc_body)

		if (chassis_name != "None")
			for (var/body_part in body_parts)
				var/icon/body_part_icon = icon(chassis.icon, "[chassis_name]_[body_part]")
				body_part_icon.Crop(1, 1, 32, 32)
				icon_with_chassis.Blend(body_part_icon, ICON_OVERLAY)

		// Zoom in on the top of the head and the chest
		icon_with_chassis.Scale(64, 64)
		icon_with_chassis.Crop(15, 64, 15 + 31, 64 - 31)
		values[chassis.name] = icon_with_chassis

	return values


/datum/preference/choiced/ipc_chassis/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ipc_chassis"] = value
