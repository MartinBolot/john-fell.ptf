exports.glyphs['quoteleft'] =
	unicode: '‘'
	glyphName: 'quoteleft'
	characterName: 'LEFT SINGLE QUOTATION MARK'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (10)
		spacingRight: 10 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: '_quoteleft'
			parentAnchors:
				0:
					x: 42 + (48)
					y: capHeight + overshoot
