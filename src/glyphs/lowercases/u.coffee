exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 13 * spacing + serifWidth + 15
		spacingRight: 15 * spacing + serifWidth + 25
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (21)
					y: xHeight - serifHeight - serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					# y: xHeight * ( 160 / 500 )
					y: xHeight * ( 30 / 500 ) * width + 130
					dirOut: 90 + 'deg'
					# type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.4
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 72 / 86 )
						angle: 56 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x + 6
					# y: xHeight * ( ( 130 + 10 ) / 500 )
					y: xHeight * ( 30 / 500 ) + 110
					dirIn: Math.max( - 110 , Math.min( - 95 , - ( 120 / 500 ) * xHeight ) ) + 'deg'
					# dirIn: - 115 - ( 5 / 500 ) * xHeight + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( thickness * ( 15 / 86 ) + ( ( 10 / 500 ) * xHeight / 85 ) * thickness ) * contrast
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 305 * width - (21)
					y: xHeight - serifHeight - serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.75
					})
				1:
					x: contours[1].nodes[0].x
					y: 70 + serifHeight
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
				2:
					anchorLine: xHeight
					leftWidth: 1.2
					directionY: -1
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: xHeight
					leftWidth: 1.2
					directionY: -1
					right: false
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: - overshoot
					rightWidth: 20
					left: false
					attaque: true
					attaqueAngle: 14
