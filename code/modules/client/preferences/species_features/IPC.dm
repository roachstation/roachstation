/datum/preference/choiced/ipc_screen
	savefile_key = "feature_ipc_screen"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = = "Screen Style"
	can_randomize = FALSE
	relevant_external_organ = /obj/item/organ/external/tail/cat

/datum/preference/choiced/ipc_Screen/init_possible_values()
	var/list/values = list()

	var/icon/ipc_head = icon('icons/mob/species/ipc/bodyparts.dmi', "synth_head")

	for (var/screen_name in GLOB.ipc_screens_list)
		var/datum/sprite_accessory/ipc_screen = GLOB.ipc_screens_list[screen_name]

		var/icon/icon_with_screen = new(ipc_head)
		icon_with_screen.Blend(icon(ipc_screen.icon, "m_ipc_screen_[ipc_screen.icon_state]_ADJ"), ICON_OVERLAY)
		icon_with_screen.Scale(64, 64)
		icon_with_screen.Crop(15, 64, 15 + 31, 64 - 31)

		values[ipc_screen.name] = icon_with_screen

	return values

/datum/preference/choiced/ipc_screen/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["ipc_screen"] = value
