/obj/item/synthesizer
	name = "synthesizer"
	icon = 'icons/obj/radio.dmi'
	icon_state = "radio"
	inhand_icon_state = "radio"
	lefthand_file = 'icons/mob/inhands/items/devices_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/devices_righthand.dmi'
	desc = "A basic synthesizer that will play your sounds"
	w_class = WEIGHT_CLASS_TINY

	var/flag = 0
	var/selected_sound = "sound/synthesizer/homo.ogg"
	var/shiftpitch = 1
	var/volume = 50
	var/list/sounds = list(
	"test" = "inputsound=sound/synthesizer/homo.ogg&volume=100&shiftpitch=1",
	"test2" = "inputsound=sound/synthesizer/homo.ogg&volume=100&shiftpitch=0",
	"test3" = "inputsound=sound/synthesizer/alert.ogg&volume=100&shiftpitch=1",
	"test4" = "inputsound=sound/synthesizer/alert.ogg&volume=100&shiftpitch=0"
	)

/obj/item/synthesizer/verb/pick_sound()
	set category = "Object"
	set name = "Select your sound here"

	var/sound_input = input("Sound:", null) as null|anything in sounds
	if (!sound_input)
		return

	to_chat(usr, "Synthesizer sound set to: [sound_input]")

	var/list/sound_params = params2list(sounds[sound_input])
	shiftpitch = text2num(sound_params["shiftpitch"])
	selected_sound = sound_params["inputsound"]
	volume = text2num(sound_params["volume"])

/obj/item/synthesizer/proc/on_transform(obj/item/source, mob/user, active)
	SIGNAL_HANDLER

	icon_state = "radio"
	balloon_alert(user, "[name] popup opened")
	pick_sound()

	return COMPONENT_NO_DEFAULT_MESSAGE

/obj/item/synthesizer/proc/initializer()
	AddComponent(/datum/component/transforming)
	RegisterSignal(src, COMSIG_TRANSFORMING_ON_TRANSFORM, .proc/on_transform)

/obj/item/synthesizer/attack_self(mob/user as mob)
	pick_sound()

/obj/item/synthesizer/Initialize(mapload)
	. = ..()
	initializer()

/obj/item/synthesizer/attack(mob/living/M as mob, mob/living/user as mob, def_zone)
	if (M == user)
		playsound(user, selected_sound, volume, shiftpitch)
	else
		M.playsound_local(get_turf(user), selected_sound, volume, shiftpitch)
