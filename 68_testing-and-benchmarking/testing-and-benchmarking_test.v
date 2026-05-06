fn test_int_min_basic() {
	assert int_min(2, -2) == -2
}

fn test_int_min_table_driven() {
	tests := [
		[0, 1, 0],
		[1, 0, 0],
		[2, -2, -2],
		[0, -1, -1],
		[-1, 0, -1],
	]
	for tt in tests {
		assert int_min(tt[0], tt[1]) == tt[2]
	}
}
