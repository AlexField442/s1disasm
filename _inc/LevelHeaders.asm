; ---------------------------------------------------------------------------
; Level Headers
; ---------------------------------------------------------------------------

LevelHeaders:

lhead:	macro plc1,lvlgfx,plc2,sixteen,pal,twofivesix
	dc.l (plc1<<24)+lvlgfx
	dc.l (plc2<<24)+sixteen
	dc.l (pal<<24)+twofivesix
	endm

; 1st PLC, level gfx (unused), 2nd PLC, 16x16 data, palette, 256x256 data

;		1st PLC				2nd PLC				palette
;				level gfx*			16x16 data			256x256 data

	lhead	plcid_GHZ,	Nem_GHZ_2nd,	plcid_GHZ2,	Blk16_GHZ,	palid_GHZ,	Blk256_GHZ	; Green Hill
	lhead	plcid_LZ,	Nem_LZ,		plcid_LZ2,	Blk16_LZ,	palid_LZ,	Blk256_LZ	; Labyrinth
	lhead	plcid_MZ,	Nem_MZ,		plcid_MZ2,	Blk16_MZ,	palid_MZ,	Blk256_MZ	; Marble
	lhead	plcid_SLZ,	Nem_SLZ,	plcid_SLZ2,	Blk16_SLZ,	palid_SLZ,	Blk256_SLZ	; Star Light
	lhead	plcid_SYZ,	Nem_SYZ,	plcid_SYZ2,	Blk16_SYZ,	palid_SYZ,	Blk256_SYZ	; Spring Yard
	lhead	plcid_SBZ,	Nem_SBZ,	plcid_SBZ2,	Blk16_SBZ,	palid_SBZ1,	Blk256_SBZ	; Scrap Brain
	zonewarning LevelHeaders,$C
	lhead	0,		Nem_GHZ_2nd,	0,		Blk16_GHZ,	palid_GHZ,	Blk256_GHZ	; Ending
	even