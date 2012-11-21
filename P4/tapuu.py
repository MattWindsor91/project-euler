



print reduce(
	max,
	map(
		lambda x: (
			reduce(
				max,
				filter(
					lambda y: (
						str(y)==str(y)[::-1]),
					x),
				0)),
		map(
			lambda x: (
				map(
					lambda y: (
						x*y),
					range(
						100,
						999))),
			range(
				100,
				999))),
	0)





