exports.glyphs['o_cap_circumflex'] =
	unicode: 'Ô'
	glyphName: "Ocircumflex"
	characterName: "LATIN CAPITAL LETTER O WITH CIRCUMFLEX"
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'circumflex'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
