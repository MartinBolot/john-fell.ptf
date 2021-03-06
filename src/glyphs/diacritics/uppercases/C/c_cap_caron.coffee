exports.glyphs['c_cap_caron'] =
	unicode: 'Č'
	glyphName: 'Ccaron'
	characterName: 'LATIN CAPITAL LETTER C WITH CARON'
	base: 'C_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'caron'
			copy: true
			parentAnchors:
				0:
					x: anchors[0].x
					y: anchors[0].y
