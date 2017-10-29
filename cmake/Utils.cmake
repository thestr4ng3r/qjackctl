
function(prefix_entries OUT_VAR PREFIX)
	set(out "")
	foreach(entry ${ARGN})
		list(APPEND out "${PREFIX}${entry}")
	endforeach()
	set("${OUT_VAR}" "${out}" PARENT_SCOPE)
endfunction()