//action given to antag clowns
/datum/action/innate/toggle_clumsy
	name = "Toggle Clown Clumsy"
	button_icon_state = "clown"

/datum/action/innate/toggle_clumsy/Activate()
	var/mob/living/carbon/human/H = owner
	H.dna.SetSEState(GLOB.clumsyblock, TRUE)
	singlemutcheck(H, GLOB.clumsyblock, 1)
	active = TRUE
	background_icon_state = "bg_spell"
	UpdateButtons()
	to_chat(H, "<span class='notice'>You start acting clumsy to throw suspicions off. Focus again before using weapons.</span>")

/datum/action/innate/toggle_clumsy/Deactivate()
	var/mob/living/carbon/human/H = owner
	H.dna.SetSEState(GLOB.clumsyblock, FALSE)
	singlemutcheck(H, GLOB.clumsyblock, 1)
	active = FALSE
	background_icon_state = "bg_default"
	UpdateButtons()
	to_chat(H, "<span class='notice'>You focus and can now use weapons regularly.</span>")
