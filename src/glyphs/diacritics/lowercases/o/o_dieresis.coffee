exports.glyphs['o_dieresis'] =
	unicode: 'ö'
	base: 'o'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: anchors[0].x - 60 - ( 15 / 85 ) * thickness
					y: anchors[0].y
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: anchors[0].x + 60 + ( 15 / 85 ) * thickness
					y: anchors[0].y
