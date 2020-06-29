/datum/preferences/load_character(slot)
	..()
	S["jumpsuit_style"]		>> jumpsuit_style
	//sanitize
	jumpsuit_style	= sanitize_inlist(jumpsuit_style, GLOB.jumpsuitlist, initial(jumpsuit_style))

/datum/preferences/save_character()
	..()
	WRITE_FILE(S["jumpsuit_style"]		, jumpsuit_style)
