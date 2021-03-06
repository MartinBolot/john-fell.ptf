exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + (20) + serifWidth * 1.8
		spacingRight: 15 * spacing + serifWidth + 15
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 200 + 232 * width + (20)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 105 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					# x: ( 245 + 250 * width + (20) ) * ( ( 295 + 10 ) / 495 )
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.53
					# A like avant-garde:
					# x: ( 495 + 20 ) * width
					y: capHeight - capHeight * ( 30 / 750 ) * thickness / 85
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: Utils.onLine({
					# 	y: 0
					# 	on: [ contours[0].nodes[1].point, anchors[1].point ]
					# })
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: contours[0].nodes[1].y - 10
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: contours[0].nodes[1].y - 10
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: capHeight * ( 280 / 750 ) * crossbar
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: capHeight * ( 298 / 750 ) * crossbar
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 85 ) * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: contours[2].nodes[0].y
						on: [ contours[1].nodes[1].point, contours[1].nodes[0].point ]
					})
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 85 ) * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.75
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				1:
					x: Utils.onLine({
						y: capHeight + overshoot * 2
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight + overshoot * 2
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - Math.min( 15, thickness * ( 10 / 85 ) )
					y: contours[3].nodes[1].y
					dirOut: Math.min(
						- 80,
						Math.max(
							- 140,
							- 140 + serifCurve )
						) + 'deg'
					tensionOut: serifRoundness
				3:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirIn: 8 + 'deg'
					tensionIn: serifRoundness
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[1].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 150 / 15 ) )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: Math.min( contours[1].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 150 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[1].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 150 / 15 ) )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: Math.min( contours[1].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 150 / 15 ) )
				2:
					anchorLine: 0
					leftWidth: 70
					rightWidth: 100
					# rightCurve: 0.0
					# leftCurve: 0.5
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					anchor_0: contours[1].nodes[0].expandedTo[1].x
					anchor_1: contours[1].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[1].nodes[0].point ,contours[1].nodes[1].point )
			# parentParameters:
			# 	serifCurve: serifCurve * 20
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: Math.min( contours[0].nodes[1].expandedTo[1].y, serifHeight + serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: Math.min( contours[0].nodes[1].expandedTo[1].y, serifHeight + serifCurve * ( 120 / 15 ) )
				1:
					x: Utils.onLine({
						y: Math.min( contours[0].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 120 / 15 ) )

						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: Math.min( contours[0].nodes[1].expandedTo[0].y, serifHeight + serifCurve * ( 120 / 15 ) )

				2:
					anchorLine: 0
					leftWidth: 70
					rightWidth: 30
					# leftCurve: 1.2
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					anchor_0: contours[0].nodes[0].expandedTo[1].x
					anchor_1: contours[0].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[0].nodes[0].point ,contours[0].nodes[1].point )
