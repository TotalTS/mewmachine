Trade_PrintPlayerMonInfoText:
	hlcoord 6, 0
	ld de, Trade_MonInfoText
	call PlaceString
	ld a, [wTradedEnemyMonSpecies]
	ld [wd11e], a
	predef IndexToPokedex
	hlcoord 11, 0
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 3
	call PrintNumber
	hlcoord 6, 2
	ld de, wcd6d
	call PlaceString
	hlcoord 9, 4
	ld de, wTradedEnemyMonOT
	call PlaceString
	hlcoord 10, 6
	ld de, wTradedEnemyMonOTID
	lb bc, LEADING_ZEROES | 2, 5
	jp PrintNumber

Trade_PrintEnemyMonInfoText:
	hlcoord 5, 10
	ld de, Trade_MonInfoText
	call PlaceString
	ld a, [wTradedEnemyMonSpecies]
	ld [wd11e], a
	predef IndexToPokedex
	hlcoord 10, 10
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 3
	call PrintNumber
	hlcoord 5, 12
	ld de, wcd6d
	call PlaceString
	hlcoord 8, 14
	ld de, wTradedEnemyMonOT
	call PlaceString
	hlcoord 9, 16
	ld de, wTradedEnemyMonOTID
	lb bc, LEADING_ZEROES | 2, 5
	jp PrintNumber

Trade_MonInfoText:
	db   "───№<DOT>"
	next ""
	next "OT/"
	next " <ID>№0@"
