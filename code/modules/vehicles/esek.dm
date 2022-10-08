
/obj/vehicle/ridden/esek
	name = "Esek"
	desc = "xd."
	icon_state = "esek"
	max_integrity = 150
	armor = list(MELEE = 50, BULLET = 25, LASER = 20, ENERGY = 0, BOMB = 50, BIO = 0, FIRE = 60, ACID = 60)
	key_type = /obj/item/key/havuc
	integrity_failure = 0.5
	var/static/mutable_appearance/esekcover


/obj/vehicle/ridden/esek/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/ridable, /datum/component/riding/vehicle/esek)
	if(!esekcover)
		esekcover = mutable_appearance(icon, "esekcover", MOB_LAYER + 0.1)

/obj/vehicle/ridden/esek/post_buckle_mob(mob/living/M)
	add_overlay(esekcover)
	return ..()

/obj/vehicle/ridden/esek/post_unbuckle_mob(mob/living/M)
	if(!has_buckled_mobs())
		cut_overlay(esekcover)
	return ..()

/obj/vehicle/ridden/esek/atom_break()
	START_PROCESSING(SSobj, src)
	return ..()

/obj/vehicle/ridden/esek/process(delta_time)
	if(atom_integrity >= integrity_failure * max_integrity)
		return PROCESS_KILL
	if(DT_PROB(10, delta_time))
		return
	var/datum/effect_system/fluid_spread/smoke/smoke = new
	smoke.set_up(0, holder = src, location = src)
	smoke.start()

/obj/vehicle/ridden/esek/bullet_act(obj/projectile/P)
	if(prob(50) || !buckled_mobs)
		return ..()
	for(var/m in buckled_mobs)
		var/mob/buckled_mob = m
		buckled_mob.bullet_act(P)
	return TRUE

/obj/vehicle/ridden/esek/atom_destruction()
	explosion(src, devastation_range = -1, light_impact_range = 2, flame_range = 3, flash_range = 4)
	return ..()

/obj/vehicle/ridden/esek/Destroy()
	STOP_PROCESSING(SSobj,src)
	return ..()
