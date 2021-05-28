
// nightvision goggles

/obj/item/clothing/glasses/night
	name = "night vision goggles"
	desc = "You can totally see in the dark now!"
	icon_state = "night"
	item_state = "glasses"
	toggle_on_sound = 'sound/handling/toggle_nv1.ogg'
	toggle_off_sound = 'sound/handling/toggle_nv2.ogg'
	darkness_view = 7
	fullscreen_vision = /obj/screen/fullscreen/nvg

/obj/item/clothing/glasses/night/helmet //for the integrated NVGs that are in helmetgarb code
	name = "\improper M2 night vision goggles"
	desc = "The actual goggle part of the M2 night vision system."
	icon_state = "stub" //our actual icon is a part of our helmet.
	item_state = null
	vision_flags = SEE_TURFS
	darkness_view = 12
	flags_item = NODROP|DELONDROP|ITEM_ABSTRACT
	flags_inventory = CANTSTRIP

/obj/item/clothing/glasses/night/M4RA
	name = "\improper M4RA Battle sight"
	desc = "A headset and night vision goggles system for the M4RA Battle Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/items/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 12
	toggleable = TRUE
	fullscreen_vision = null
	actions_types = list(/datum/action/item_action/toggle)
	flags_item = MOB_LOCK_ON_EQUIP|NO_CRYO_STORE

/obj/item/clothing/glasses/night/m42_night_goggles
	name = "\improper M42 scout sight"
	desc = "A headset and night vision goggles system for the M42 Scout Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/items/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 12
	toggleable = TRUE
	fullscreen_vision = null
	actions_types = list(/datum/action/item_action/toggle)
	flags_item = MOB_LOCK_ON_EQUIP|NO_CRYO_STORE

/obj/item/clothing/glasses/night/m42_night_goggles/upp
	name = "\improper Type 9 commando goggles"
	desc = "A headset and night vision goggles system used by UPP forces. Allows highlighted imaging of surroundings. Click it to toggle."
	icon_state = "upp_goggles"
	deactive_state = "upp_goggles_0"
	req_skill = null
	req_skill_level = null

/obj/item/clothing/glasses/night/m56_goggles
	name = "\improper M56 head mounted sight"
	desc = "A headset and goggles system for the M56 Smartgun. Has a low-res short range imager, allowing for view of terrain."
	icon = 'icons/obj/items/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	darkness_view = 5
	toggleable = TRUE
	actions_types = list(/datum/action/item_action/toggle)
	vision_flags = SEE_TURFS
	fullscreen_vision = null
	req_skill = SKILL_SPEC_WEAPONS
	req_skill_level = SKILL_SPEC_SMARTGUN

/obj/item/clothing/glasses/night/m56_goggles/mob_can_equip(mob/user, slot)
	if(slot == WEAR_EYES)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			if(!istype(H.back, /obj/item/smartgun_powerpack))
				to_chat(user, "You must be wearing an M56 Powerpack on your back to wear these.")
				return FALSE
	return ..()

/obj/item/clothing/glasses/night/cultist
	name = "\improper Unusual Thermal Imaging Goggles"
	desc = "Seems to be thermal imaging goggles, except they have an unusual design. Looking at it makes you nauseous."
	icon_state = "thermal"
	item_state = "glasses"
	w_class = SIZE_SMALL
	vision_flags = SEE_MOBS
	darkness_view = 7
	fullscreen_vision = null

/obj/item/clothing/glasses/night/cultist/mob_can_equip(mob/user, slot)
	if(slot == WEAR_EYES)
		if(iscarbon(user))
			var/mob/living/carbon/H = user
			if(!H.hivenumber)
				to_chat(user, SPAN_WARNING("You do not want to put these on, they're making you nauseous."))
				return FALSE
	return ..()
