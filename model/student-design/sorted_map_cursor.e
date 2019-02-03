note
	description: "[
		Question:
		- Where is data array located? 
		- How should I call each data? is it key and value? or something else? 
			=> How to set values
	]"
	author: "Taehoon Kim"
	date: "$Date$"
	revision: "$Revision$"


class
	SORTED_MAP_CURSOR[K -> COMPARABLE, V]

inherit
	ITERATION_CURSOR [TUPLE[K,V]]

create
	make

feature {NONE} -- Initialization

	make (map: ARRAY[TUPLE[K,V]])
		-- Added Extra condition with counting container
		-- because if container is empty, it cannot call the 1st index of it
		-- actually it should't try to set anything.
		do
			cursor_position := map.lower
			container := map
			print("%NMake Cursor...lower, upper: " + map.lower.out + ", " + map.upper.out)

			if container.count > 0 then
				item := container[cursor_position]
			else
				after := true
				item := create {TUPLE[K,V]}.default_create
			end

		end

	container: ARRAY[TUPLE[K,V]]

feature {NONE} -- Hide
	cursor_position: INTEGER
	--cursor_key: detachable separate ANY
	--cursor_value: detachable separate ANY

feature
	-- Returns Tuple item (pair of item) that is placed in current cursor_position
	--	so, cursor_position works like array index.
	item: TUPLE[key: K; value: V]

	-- When no more item, True. Otherwise false.
	after: BOOLEAN

	-- update(increment) cursor_position
	-- For example, if it was 1, then becomes 2.
	forth
		do
	
			if cursor_position < container.upper then
				cursor_position := cursor_position + 1
				item := container[cursor_position]
				after := false
			else
				after := true
			end

		end

end
