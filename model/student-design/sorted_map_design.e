note
	description: "Summary description for {SORTED_MAP_DESIGN}."
	author: "Taehoon Kim"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SORTED_MAP_DESIGN[K -> COMPARABLE, V -> ANY]

inherit
	SORTED_MAP_ADT[K, V]
		export
			
		end


feature{NONE} -- attributes
	implementation: FUN[K,V]
			-- inefficient but abstract implementation of sorted map
		attribute
			create Result.make_empty
		end


feature{NONE} -- constructors

	make_empty
			-- creates a sorted map without any elements
		deferred
		end

	make_from_array (array: ARRAY [TUPLE [key: K; val: V]])
			-- creates a sorted map with the elements of the `array'
		deferred
		end

	make_from_sorted_map (map: SORTED_MAP_ADT [K, V])
			-- creates a sorted map from `other'
		deferred
		end

feature -- commands

	put (val: V; key: K) --(key: K; val: V)
			-- puts an element of `key' and `value' into map
			-- behaves like `extend' if `key' does not exist
			-- otherwise behaves like `update'
			-- NOTE: This method follows the convention of `val'/`key'
		deferred
		end

	extend (key: K; val: V)
			-- inserts an element of `key' and `value' into map
		deferred
		end

	remove (key: K)
			-- removes an element whose value is `key' from the map
		deferred
		end

	prune (val: V; i: INTEGER)
			-- removes `i'th occurrence of `val' from the map
			-- demanding version
		deferred
		end

	prune_all (val: V)
			-- removes all occurences of `val' from the map
			-- does nothing if element does not exist
		deferred
		end

	replace (key: K; val: V)
			-- replaces `value' for a given `key'
		deferred
		end

	replace_key (old_key, new_key: K)
			-- replaces `old_key' with `new_key' for an element
		deferred
		end

	wipe_out
			--makes an existing map empty
		deferred
		end

	merge (other: SORTED_MAP_ADT[K,V])
			-- merges `Current' map with `other' map
		deferred
		end

feature -- queries

	item alias "[]" (key: K): V assign put
			--returns the value associated with `key'
		deferred
		end

	as_array: ARRAY [TUPLE [key: K; value: V]]
			-- returns an array of tuples sorted by key
		deferred
		end

	sorted_keys: ARRAY [K]
			-- returns a sorted array of keys
		deferred
		end

	values: ARRAY [V]
			--returns an array of values sorted by key
		deferred
		end

	has (key: K): BOOLEAN
			-- returns whether `key' exists in the map
		deferred
		end

	has_value(val: V): BOOLEAN
			-- returns whether `val' exists in the map
		deferred
		end

	element (key: K): detachable TUPLE [key: K; val:V]
			-- returns an element of the map (i.e. a tuple [`key', value])
			-- associated with `key'
		deferred
		end

	count: INTEGER
			--returns number of elements in the map
		deferred
		end

	is_empty: BOOLEAN
			-- returns whether the map is empty
		deferred
		end

	min: TUPLE [key: K; val: V]
			--returns the pairing with the smallest key in the map
		deferred
		end

	max: TUPLE [key: K; val: V]
			--returns the element with the largest key in the map
		deferred
		end

	occurrences (val: V): ARRAY [K]
			-- returns a sorted array of keys who have `val' as their value
			-- may return an empty array
		deferred
		end

end
