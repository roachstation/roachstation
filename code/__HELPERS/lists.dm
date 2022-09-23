

/proc/pick_multiple_unique(list/listfrom, amount)
	var/list/result = list()
	var/list/copy = listfrom.Copy() // Ensure the original ain't modified
	while(length(copy) && length(result) < amount)
		var/picked = pick(copy)
		result += picked
		copy -= picked
	return result

/proc/view_or_range(distance = world.view , center = usr , type)
	switch(type)
		if("view")
			. = view(distance,center)
		if("range")
			. = range(distance,center)
	return
