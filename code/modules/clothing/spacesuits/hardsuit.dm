/// Code is from Hyper-Station-13, #698
/// Spirites from HippieStation, #12726

/obj/item/clothing/head/helmet/space/hardsuit/rd/hev
	name = "HEV Suit helmet"
	desc = "A Hazardous Environment Helmet. It fits snug over the suit and has a heads-up display for researchers. The flashlight seems broken, fitting considering this was made before the start of the milennium."
	icon_state = "hev"
	icon = 'icons/obj/clothing/hats.dmi'
	worn_icon = 'icons/mob/clothing/head.dmi'
	inhand_icon_state = "hev"
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	armor = list(MELEE = 30, BULLET = 60, LASER = 50, ENEGRY = 5, BOMB = 80, BIO = 100, RAD = 100, FIRE = 60, ACID = 60)

/obj/item/clothing/suit/space/hardsuit/rd/hev
	name = "HEV Suit"
	desc = "A Hazardous Environment suit, often called the Hazard suit. It was designed to protect scientists from the blunt trauma, radiation, energy discharge that hazardous materials might produce or entail. Fits you like a glove. The automatic medical system seems broken... They're waiting for you, Gordon. In the test chamberrrrrr."
	icon_state = "hev"
	icon = 'icons/obj/clothing/suits/spacesuit.dmi'
	worn_icon = 'icons/mob/clothing/suits/spacesuit.dmi'
	inhand_icon_state = "hev"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT //Same as an emergency firesuit. Not ideal for extended exposure.
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/gun/energy/wormhole_projector,
	/obj/item/hand_tele, /obj/item/aicard)
	armor = list(MELEE = 30, BULLET = 60, LASER = 50, ENERGY = 5, BOMB = 80, BIO = 100, RAD = 100, FIRE = 60, ACID = 60)
	var/firstpickup = TRUE
	slowdown = 0.2

/obj/item/clothing/suit/space/hardsuit/rd/hev/equipped(mob/user, slot)
	. = ..()
	if(!ishuman(user))
		return
	if(!firstpickup)
		SEND_SOUND(user, sound('sound/halflife/hevsuit_pickup.ogg', volume = 50))
	else
		firstpickup = FALSE
		SEND_SOUND(user, sound('sound/halflife/hevsuit_firstpickup.ogg', volume = 50))
		SEND_SOUND(user, sound('sound/halflife/anomalous_materials.ogg', volume = 50))
	return
