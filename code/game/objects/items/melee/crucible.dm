/obj/item/melee/crucible
	icon = 'icons/obj/weapons/crucible.dmi'
	var/blade_active = FALSE
	var/active_heat = 3500
	var/active_hitsound = 'sound/weapons/crucible.ogg'

/obj/item/melee/crucible/Initialize(mapload)
	. = ..()
	make_transformable()
	AddComponent(/datum/component/butchering, \
	butcher_sound = active_hitsound, \
	)

/obj/item/melee/crucible/proc/make_transformable()
	AddComponent(/datum/component/transforming, \
		hitsound_on = active_hitsound)
	RegisterSignal(src, COMSIG_TRANSFORMING_ON_TRANSFORM, .proc/on_transform)

/obj/item/melee/crucible/proc/on_transform(obj/item/source, mob/user, active)
	SIGNAL_HANDLER

	blade_active = active
	if(active)
		icon_state = "c_sword_on"
		heat = active_heat
		START_PROCESSING(SSobj, src)
	else
		icon_state = "c_sword"
		heat = initial(heat)
		STOP_PROCESSING(SSobj, src)

	balloon_alert(user, "[name] [active ? "enabled":"disabled"]")
	playsound(user ? user : src, active ? 'sound/weapons/crucible_on.ogg' : 'sound/weapons/null.ogg', 35, TRUE)
	set_light_on(active)
	return COMPONENT_NO_DEFAULT_MESSAGE

/obj/item/melee/crucible/sword
	name = "Crucible"
	desc = "A weapon powered by raw wrath or hell energy."
	icon_state = "c_sword"
	lefthand_file = 'icons/mob/inhands/weapons/crucible_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/crucible_righthand.dmi'
	hitsound = 'sound/weapons/crucible.ogg'
	force = 6
	throwforce = 6
	throw_speed = 2
	throw_range = 5
	armour_penetration = 40
	block_chance = 45

/obj/item/melee/crucible/process(delta_time)
	if(heat)
		open_flame()

/obj/item/melee/crucible/sword/attack(mob/living/Y, mob/living/user, /obj/item/X)
	if(blade_active)
		var/mob/living/carbon/C = Y
		if (HAS_TRAIT(C, TRAIT_NODISMEMBER))
			return ..()

		var/list/parts = list()
		var/undismembermerable_limbs = 0

		for(var/X in C.bodyparts)
			var/obj/item/bodypart/BP = X

			if (BP.body_part != HEAD && BP.body_part != CHEST)
				if (BP.dismemberable)
					parts += BP
				else
					undismembermerable_limbs++

		if(!LAZYLEN(parts))
			if (undismembermerable_limbs)
				return ..()

			Y.Paralyze(60)
			visible_message(span_danger("[user], [Y] uzuvlarini parcaliyor!"))
			return FALSE

		do_attack_animation(Y)
		var/obj/item/bodypart/BP = pick(parts)

		BP.dismember()
		return ..()