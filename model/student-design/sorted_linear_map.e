note
	description: "Summary description for {SORTED_LINEAR_MAP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SORTED_LINEAR_MAP[K -> COMPARABLE, V ->ANY]

inherit
	SORTED_MAP_DESIGN[K, V]

create
	make_empty, make_from_array, make_from_sorted_map

end
