
PAGE  59,132

; Simple Tandy Deskmate disassembly: KERNEL

target		EQU   'M5'                      ; Target assembler: MASM-5.0

include  srmacros.inc


; The following equates show data references outside the range of the program.

data_1e		equ	30h
data_2e		equ	65h
PSP_free_seg	equ	2
data_3e		equ	2Ch

;------------------------------------------------------  stack_seg_a   ----

stack_seg_a	segment	word stack 'STACK'

		db	256 dup (0)

stack_seg_a	ends



;------------------------------------------------------------  seg_b   ----

seg_b		segment	byte public
		assume cs:seg_b  , ds:seg_b , ss:stack_seg_a

data_5		db	0			; Data table (indexed access)
data_6		db	0
		db	18 dup (0)
data_7		db	0
data_8		dw	0			; segment storage
data_9		db	0
data_10		dw	0
data_11		dw	0
data_12		dw	0
data_13		dw	0
data_14		dw	0
data_15		db	'twsave.tws', 0
		db	59 dup (0)
		db	'TWSAVE.TWS'
		db	0
data_17		dw	0
		db	0Dh
data_18		db	0Ah, 0Ah, 'Enter Password: $'
		db	'   Date mm/dd/yyyy:$'
		db	'Time hh:mm(a or p):$'
		db	'Press ENTER to print next page o'
		db	'r BREAK to cancel ', 0
		db	'Printer fault  Press ENTER to re'
		db	'try or BREAK to cancel ', 0
		db	'FIND:$'
		db	'PREFIX1:            PREFIX2:    '
		db	'         PREFIX3:            ACO'
		db	'DE:$'
		db	'[F1]    [F2]    [F3]    [F4]    '
		db	'[F5]    [F6]    [F7]    [F8]    '
		db	'[F9]    [F10]$'
		db	'Find    Call    Prefix1 Prefix2 '
		db	'Prefix3 Sort    Print           '
		db	'Delete  Add$'
		db	'[ALT:F1]  [ALT:F2]   [ALT:F3]   '
		db	'  [ALT:F4]     [ALT:F5]    [ALT:'
		db	'F6]   [ALT:F7]$'
		db	0FFh, 48h, 65h
		db	'lp      Calc     Show Alarm   Al'
		db	'arm On/Off   Phone      Printer '
		db	'    Date$'
		db	'Press [ENTER] for next page of H'
		db	'elp or [ALT/F10] to exit Help $'
		db	'Press [ALT/F10] to exit Help $'
		db	'[F1]    [F2]    [F3]    [F4]    '
		db	'[F5]    [F6]    [F7]    [F8]$'
		db	'Add     Sub     Mul     Div     '
		db	'Percent CA      CE      +/-     '
		db	' +$'
data_21		db	'Left Margin:                    '
		db	'0  $'
		db	'Printed Line Width:             '
data_23		db	38h
		db	'0 $'
		db	'Total Lines per Page:   '
data_24		db	'        '
data_25		db	36h
		db	'6 $'
		db	'Printed Lines per Page:         '
data_26		db	36h
		db	 30h, 20h, 24h
data_27		db	'Double Space (Y/N):             '
data_28		db	4Eh
		db	'$'
		db	'Pause between Pages (Y/N):      '
data_29		db	59h
		db	'$'
		db	'New Page after Print (Y/N):     '
data_30		db	59h
		db	24h
data_31		db	0
data_32		db	50h
data_33		db	42h
data_34		db	3Ch
data_35		db	0FFh
data_36		db	0
data_37		db	0FFh
data_38		dw	0B800h
data_39		db	0
		db	0
		db	9 dup (0)
data_41		db	'STATUS: N,30,8,N,1,ON ,OFF,OFF,O'
		db	'FF,0$'
		db	11 dup (0)
data_46		db	7
data_47		db	70h
data_48		db	0Fh
data_49		db	78h
data_50		db	8
		db	0C6h, 32h, 0Dh, 0Ah,0C2h
		db	'*C*GM@^\DT', 0Dh, 0Ah
		db	0C1h, 54h, 0Dh, 0Ah,0C0h, 0Dh
		db	 0Ah,0C2h, 50h, 50h, 58h, 0Dh
		db	 0Ah,0C1h, 58h, 0Dh, 0Ah,0C3h
		db	 32h, 0Dh, 0Ah,0C2h, 2Ah, 0Dh
		db	 0Ah, 1Ah
		db	185 dup (0)
data_52		db	6
		db	0C2h
		db	'*C*GM@^\DT', 0Dh, 0Ah
		db	0C1h, 54h, 0Dh, 0Ah,0C0h, 0Dh
		db	 0Ah,0C2h, 58h, 0Dh, 0Ah,0C1h
		db	 58h, 0Dh, 0Ah,0C5h, 0Dh, 0Ah
		db	 1Ah
		db	180 dup (0)
data_54		db	2
		db	0C2h
		db	'*C*MG@^\AX', 0Dh, 0Ah
		db	0C1h, 58h, 0Dh, 0Ah, 1Ah
		db	181 dup (0)
data_56		db	0
data_57		db	0
data_58		db	0
		db	1Ah
data_59		db	0
		db	13 dup (0)
data_61		db	'TWMENU.EXE'
		db	0, 0
data_63		db	0
		db	69 dup (0)
data_64		db	0
		db	13 dup (0)
		db	'TWMENU.HLP'
		db	0
data_65		dw	0
		db	 80h, 00h
data_66		dw	0
		db	 5Ch, 00h
data_67		dw	0
		db	5Ch
		db	0
data_69		dw	0
data_70		dw	0
data_71		dw	0			; segment storage
data_72		dw	0
data_73		db	0
data_74		db	0
data_75		db	0
data_76		dw	0
data_77		db	41h
		db	 3Ah, 5Ch
data_78		db	0
		db	63 dup (0)
data_80		db	0
		db	79 dup (0)
data_81		db	0
		db	11 dup (0)
data_82		db	8, ' ', 8, '$'
		db	0
		db	'DeskMate II', 0Dh, 0Ah, 'Version'
		db	' 01.00.00', 0Dh, 0Ah, 'Copyright'
		db	' 1985,1986', 0Dh, 0Ah, 'Tandy Co'
		db	'rporation', 0Dh, 0Ah, 'All Right'
		db	's Reserved$'
		db	'TWINTER.TWS'
		db	60 dup (0)
		db	'TWINTER.TWS'
		db	0
data_87		db	0
data_88		dw	0
data_89		db	0
data_90		db	0
		db	198 dup (0)
data_91		db	0
data_92		db	0

;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program	Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


desk		proc	far

start:
		mov	dx,es
		mov	ah,4Ah			; 'J'
		mov	bx,0FFFFh
		int	21h			; DOS Services  ah=function 4Ah
						;  change memory allocation
						;   bx=bytes/16, es=mem segment
		add	dx,bx
		mov	es:PSP_free_seg,dx
		mov	ax,cs
		mov	bx,data_3e
		mov	bx,[bx]
		mov	ds,ax
		mov	data_8,es
		mov	data_70,sp
		mov	data_71,ss
		mov	es,ax
		mov	data_65,bx
		mov	ax,data_8
		mov	data_66,ax
		mov	data_67,ax
		mov	data_69,ax
		mov	ax,seg_c
		mov	cx,ax
		sub	cx,data_8
		add	cx,8
		mov	data_72,cx
		mov	ah,0Fh
		int	10h			; Video display   ah=functn 0Fh
						;  get state, al=mode, bh=page
						;   ah=columns on screen
		mov	data_92,al
		call	sub_12
		mov	ah,al
		mov	al,4
		sub	al,ah
		mov	ah,0
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 00h
						;  set display mode in al
		push	es
		mov	ax,40h
		mov	es,ax
		mov	al,es:data_2e
		and	al,0DFh
		mov	es:data_2e,al
		pop	es
		mov	dx,3D8h
		out	dx,al			; port 3D8h, CGA video control
		lea	dx,cs:[872h]		; Load effective addr
		call	sub_17
		call	sub_38
		call	sub_117
		lea	cx,cs:[73Ch]		; Load effective addr
		sub	cx,378h
		mov	data_17,cx
		mov	ax,3D00h
		lea	dx,data_15		; ('twsave.tws') Load effective addr
		push	cx
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		pop	cx
		jc	loc_1			; Jump if carry Set
		mov	bx,ax
		mov	ah,3Fh			; '?'
		lea	dx,data_21		; ('Left Margin:            ') Load ef
		push	bx
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		pop	bx
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
loc_1:
		mov	ax,3D00h
		lea	dx,ds:[8CDh]		; ('TWINTER.TWS') Load effective addr
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		jc	loc_4			; Jump if carry Set
		mov	data_87,0FFh
		mov	bx,ax
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		xor	al,al			; Zero register
		call	sub_13
		lea	di,cs:[78h]		; Load effective addr
loc_2:
		call	sub_14
		cmp	al,7Eh			; '~'
		je	loc_3			; Jump if equal
		cld				; Clear direction
		stosb				; Store al to es:[di]
		jmp	short loc_2
loc_3:
		mov	ah,3Eh			; '>'
		mov	bx,data_88
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
loc_4:
		int	11h			; Put equipment bits in ax
		test	cx,0E00h
		jz	loc_5			; Jump if zero
		push	ds
		xor	ax,ax			; Zero register
		mov	ds,ax
		lea	bx,cs:[16BAh]		; Load effective addr
		mov	si,data_1e
		mov	[si],bx
		mov	[si+2],cs
		pop	ds
		int	11h			; Put equipment bits in ax
		test	ax,0E00h
		jz	loc_5			; Jump if zero
		in	al,21h			; port 21h, 8259-1 int IMR
		and	al,0EFh
		out	21h,al			; port 21h, 8259-1 int comands
loc_5:
		call	sub_134
		call	sub_132
		call	sub_136
		mov	ax,3301h
		xor	dx,dx			; Zero register
		int	21h			; DOS Services  ah=function 33h
						;  set ctrl-break flag dl=off/on
loc_6:
		cmp	data_39,0
		je	loc_13			; Jump if equal
		lea	dx,cs:[75h]		; Load effective addr
		call	sub_17
		mov	cx,0Bh
		lea	di,cs:[861h]		; Load effective addr
		mov	data_9,0FFh

locloop_7:
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		cmp	al,20h			; ' '
		jb	loc_11			; Jump if below
		cmp	ah,0FFh
		je	locloop_7		; Jump if equal
		mov	[di],al
		inc	di
		mov	byte ptr [di],0
		mov	dl,al
		call	sub_16
		loop	locloop_7		; Loop if cx > 0

loc_8:
		lea	di,data_81		; Load effective addr
		lea	si,data_39		; Load effective addr
		mov	cx,0Bh
		cld				; Clear direction
loc_9:
		cmp	byte ptr [si],0
		je	loc_12			; Jump if equal
		cmpsb				; Cmp [si] to es:[di]
		jz	loc_9			; Jump if zero
loc_10:
		mov	ah,2
		mov	dl,7
		int	21h			; DOS Services  ah=function 02h
						;  display char dl
		mov	ax,9902h
		xor	bx,bx			; Zero register
		int	21h			; ??INT Non-standard interrupt
		or	bx,bx			; Zero ?
		jnz	loc_6			; Jump if not zero
		mov	ah,4Ch
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
loc_11:
		cmp	al,0Dh
		je	loc_8			; Jump if equal
		cmp	al,8
		jne	locloop_7		; Jump if not equal
		cmp	cx,0Bh
		je	locloop_7		; Jump if equal
		dec	di
		mov	byte ptr [di],0
		inc	cx
		lea	dx,cs:[86Dh]		; Load effective addr
		call	sub_17
		jmp	short locloop_7
loc_12:
		cmp	byte ptr [di],0
		je	loc_13			; Jump if equal
		cmp	cx,0
		jne	loc_10			; Jump if not equal
loc_13:
		mov	ah,19h
		int	21h			; DOS Services  ah=function 19h
						;  get default drive al  (0=a:)
		add	al,41h			; 'A'
		mov	data_77,al
		mov	ah,47h			; 'G'
		mov	dl,0
		lea	si,data_78		; Load effective addr
		int	21h			; DOS Services  ah=function 47h
						;  get present dir,drive dl,1=a:
						;   ds:si=ASCIIZ directory name
		lea	di,data_77		; Load effective addr
		cld				; Clear direction
		xor	al,al			; Zero register
		mov	cx,44h
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		mov	al,5Ch			; '\'
		cmp	al,[di-2]
		je	loc_14			; Jump if equal
		mov	[di-1],al
loc_14:
		lea	si,cs:[68h]		; Load effective addr
		lea	di,cs:[22h]		; Load effective addr
		call	sub_4
		lea	si,cs:[17ABh]		; Load effective addr
		lea	di,cs:[17B5h]		; Load effective addr
		call	sub_4
		lea	si,cs:[914h]		; Load effective addr
		lea	di,cs:[8CDh]		; Load effective addr
		call	sub_4
loc_15:
		mov	data_7,0
		mov	data_9,0
		push	es
		mov	ah,4Ah			; 'J'
		mov	bx,data_72
		mov	es,data_8
		int	21h			; DOS Services  ah=function 4Ah
						;  change memory allocation
						;   bx=bytes/16, es=mem segment
		pop	es
		lea	si,cs:[74Ah]		; Load effective addr
		lea	di,cs:[811h]		; Load effective addr
		call	sub_4
		lea	si,cs:[7AAh]		; Load effective addr
		lea	di,cs:[756h]		; Load effective addr
		call	sub_4
		mov	data_73,1
		mov	ah,4Bh			; 'K'
		mov	al,0
		lea	dx,data_80		; Load effective addr
		mov	bx,offset data_65
		int	21h			; DOS Services  ah=function 4Bh
						;  run progm @ds:dx, parm @es:bx
		mov	sp,cs:data_70
		mov	ss,cs:data_71
		jnc	loc_16			; Jump if carry=0
		jmp	loc_20
loc_16:
		push	cs
		push	cs
		pop	ds
		cmp	data_73,0
		je	loc_19			; Jump if equal
loc_17:
		call	sub_135
		call	sub_133
		call	sub_137
		in	al,21h			; port 21h, 8259-1 int IMR
		or	al,10h
		out	21h,al			; port 21h, 8259-1 int comands
		push	es
		mov	ax,40h
		mov	es,ax
		mov	al,es:data_2e
		or	al,20h			; ' '
		mov	es:data_2e,al
		mov	dx,offset data_24	; ('        ')
		out	dx,al			; port 3D8h, CGA video control
		pop	es
		push	cs
		pop	ds
		cmp	data_73,1
		je	loc_18			; Jump if equal
		mov	ah,3Ch			; '<'
		xor	cx,cx			; Zero register
		lea	dx,data_15		; ('twsave.tws') Load effective addr
		int	21h			; DOS Services  ah=function 3Ch
						;  create/truncate file @ ds:dx
		jc	loc_18			; Jump if carry Set
		mov	bx,ax
		mov	ah,40h			; '@'
		mov	cx,data_17
		lea	dx,data_21		; ('Left Margin:            ') Load ef
		push	bx
		int	21h			; DOS Services  ah=function 40h
						;  write file  bx=file handle
						;   cx=bytes from ds:dx buffer
		pop	bx
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
loc_18:
		mov	al,data_92
		mov	ah,0
		int	10h			; Video display   ah=functn 00h
						;  set display mode in al
		mov	ah,4Ch
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
loc_19:
		mov	ah,2
		mov	dl,20h			; ' '
		int	21h			; DOS Services  ah=function 02h
						;  display char dl
		mov	data_7,0
		mov	ah,4Ah			; 'J'
		mov	bx,data_72
		mov	es,data_8
		int	21h			; DOS Services  ah=function 4Ah
						;  change memory allocation
						;   bx=bytes/16, es=mem segment
		pop	es
		lea	si,cs:[73Ch]		; Load effective addr
		lea	di,cs:[811h]		; Load effective addr
		call	sub_4
		lea	si,cs:[79Ch]		; Load effective addr
		lea	di,cs:[756h]		; Load effective addr
		call	sub_4
		mov	ah,4Bh			; 'K'
		mov	al,0
		lea	dx,data_80		; Load effective addr
		mov	bx,offset data_65
		int	21h			; DOS Services  ah=function 4Bh
						;  run progm @ds:dx, parm @es:bx
		mov	sp,cs:data_70
		mov	ss,cs:data_71
		jc	loc_21			; Jump if carry Set
		push	cs
		push	cs
		pop	es
		pop	ds
		jmp	loc_15
loc_20:
		lea	si,data_61		; ('TWMENU.EXE') Load effective addr
		jmp	short loc_22
loc_21:
		lea	si,data_59		; Load effective addr
loc_22:
		push	cs
		push	cs
		pop	ds
		pop	es
		lea	di,data_93+1Ah		; ('              ') Load effective ad
		cld				; Clear direction
		mov	cx,0Eh

locloop_23:
		cmp	byte ptr [si],0
		je	locloop_24		; Jump if equal
		movsb				; Mov [si] to es:[di]
		loop	locloop_23		; Loop if cx > 0


locloop_24:
		jcxz	loc_25			; Jump if cx=0
		mov	byte ptr [di],20h	; ' '
		inc	di
		loop	locloop_24		; Loop if cx > 0

loc_25:
		mov	dx,0D13h
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		cmp	al,51h			; 'Q'
		je	loc_27			; Jump if equal
		cmp	al,71h			; 'q'
		je	loc_27			; Jump if equal
loc_26:
		jmp	loc_15
loc_27:
		mov	ax,9902h
		xor	bx,bx			; Zero register
		int	21h			; ??INT Non-standard interrupt
		or	bx,bx			; Zero ?
		jnz	loc_26			; Jump if not zero
		jmp	loc_17
data_93		db	0Dh, 0Ah, 'ERROR OCCURED EXECUTIN'
		db	'G               ', 0Dh, 0Ah, 'Pr'
		db	'ess Enter to continue or "Q" to '
		db	'Quit$'
		db	 8Dh, 3Eh, 11h, 08h

desk		endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1		proc	near
		lea	si,data_77		; Load effective addr
		call	sub_2
		retn
sub_1		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_2		proc	near
		cld				; Clear direction
loc_28:
		lodsb				; String [si] to al
		cmp	al,0
		je	loc_ret_29		; Jump if equal
		stosb				; Store al to es:[di]
		jmp	short loc_28

loc_ret_29:
		retn
sub_2		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3		proc	near
		push	ds
		push	si
		push	ax
		push	cs
		pop	ds
		call	sub_1
		mov	es:[di],al
		pop	ax
		pop	si
		pop	ds
		retn
sub_3		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4		proc	near
		call	sub_3
loc_30:
		lodsb				; String [si] to al
		stosb				; Store al to es:[di]
		cmp	al,0
		jne	loc_30			; Jump if not equal
		retn
sub_4		endp

data_95		db	0
data_96		db	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5		proc	near
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	bp
		push	es
		push	ds
		push	cs
		push	cs
		pop	ds
		pop	es
		call	sub_9
		jmp	loc_34

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_6:
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	bp
		push	es
		push	ds
		push	cs
		push	cs
		pop	ds
		pop	es
loc_31:
		push	ax
		push	cx
		push	dx
		mov	ah,2Ch
		int	21h			; DOS Services  ah=function 2Ch
						;  get time, cx=hrs/min, dx=sec
		mov	data_76,cx
		pop	dx
		pop	cx
		pop	ax
loc_32:
		mov	data_74,0FFh
		call	sub_9
		jnz	loc_34			; Jump if not zero
		cmp	data_75,0
		jne	loc_32			; Jump if not equal
		cmp	data_74,0
		je	loc_31			; Jump if equal
		call	sub_7
		jnz	loc_32			; Jump if not zero
		call	sub_72
		mov	al,data_144
		mov	data_95,al
		mov	ah,10h
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		push	cx
		mov	ah,24h
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,0
		mov	bh,0
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,9
		xor	bh,bh			; Zero register
		mov	cx,7D0h
		mov	al,20h			; ' '
		mov	bl,7
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
loc_33:
		call	sub_10
		call	sub_59
		mov	ah,1
		int	16h			; Keyboard i/o  ah=function 01h
						;  get status, if zf=0  al=char
		jz	loc_33			; Jump if zero
		mov	ah,0
		int	16h			; Keyboard i/o  ah=function 00h
						;  get keybd char in al, ah=scan
		mov	ah,1
		xor	bh,bh			; Zero register
		pop	cx
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
		mov	al,data_95
		mov	data_144,al
		call	sub_73
		jmp	short loc_31
loc_34:
		pop	ds
		pop	es
		pop	bp
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		retn
sub_5		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7		proc	near
		push	ax
		push	cx
		call	sub_8
		pop	cx
		pop	ax
		retn
sub_7		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8		proc	near
		mov	cx,data_76
		mov	al,data_149
		cmp	al,cl
		jae	loc_35			; Jump if above or =
		add	al,3Ch			; '<'
loc_35:
		sub	al,cl
		cmp	al,0Ah
		ja	loc_36			; Jump if above
		mov	al,1
		or	al,al			; Zero ?
		retn
loc_36:
		xor	al,al			; Zero register
		retn
sub_8		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9		proc	near
		call	sub_22
		call	sub_59
		mov	ah,1
		int	16h			; Keyboard i/o  ah=function 01h
						;  get status, if zf=0  al=char
		jnz	loc_38			; Jump if not zero
loc_37:
		xor	ax,ax			; Zero register
		retn
loc_38:
		mov	data_74,0
		xor	ah,ah			; Zero register
		int	16h			; Keyboard i/o  ah=function 00h
						;  get keybd char in al, ah=scan
		cmp	al,0
		je	loc_42			; Jump if equal
		cmp	ax,4A2Dh
		jne	loc_39			; Jump if not equal
		mov	ax,0FFA7h
		jmp	short loc_41
loc_39:
		cmp	ax,4E2Bh
		jne	loc_40			; Jump if not equal
		mov	ax,0FFA6h
		jmp	short loc_41
loc_40:
		xor	ah,ah			; Zero register
loc_41:
		or	al,al			; Zero ?
		retn
loc_42:
		mov	al,ah
		or	al,al			; Zero ?
		jz	loc_45			; Jump if zero
		mov	di,offset data_101	; (';<=>?@ABCDpqRSG')
		mov	cx,4Ch
		cld				; Clear direction
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jz	loc_43			; Jump if zero
		cmp	al,72h			; 'r'
		jne	loc_37			; Jump if not equal
		mov	al,10h
		jmp	short loc_40
loc_43:
		sub	di,1003h
		mov	ax,80h
		add	ax,di
		mov	ah,0FFh
		cmp	data_9,0
		jne	loc_ret_44		; Jump if not equal
		cmp	al,8Bh
		je	loc_49			; Jump if equal
		cmp	al,0C6h
		je	loc_48			; Jump if equal
		cmp	al,0C5h
		je	loc_51			; Jump if equal
		cmp	al,0C1h
		je	loc_54			; Jump if equal
		cmp	al,0C4h
		je	loc_46			; Jump if equal
		cmp	al,0C3h
		je	loc_47			; Jump if equal
		cmp	al,0C2h
		je	loc_55			; Jump if equal
		cmp	al,0C7h
		je	loc_50			; Jump if equal

loc_ret_44:
		retn
loc_45:
		mov	ax,0FF80h
		or	al,al			; Zero ?
		retn
loc_46:
		jmp	loc_255
loc_47:
		jmp	loc_254
loc_48:
		jmp	loc_59
loc_49:
		jmp	short loc_56
		db	90h
loc_50:
		call	sub_98
		xor	ax,ax			; Zero register
		retn
loc_51:
		mov	data_9,0FFh
		call	sub_72
		mov	al,data_144
		mov	byte ptr data_82+4,al	; ('')
		mov	byte ptr data_144,0FFh
		mov	al,data_75
		mov	data_96,al
		mov	data_75,0FFh
		call	sub_25
		mov	al,byte ptr data_82+4	; ('')
		mov	data_144,al
		mov	al,data_96
		mov	data_75,al
loc_52:
		call	sub_73
loc_53:
		mov	data_9,0
		xor	ax,ax			; Zero register
		retn
loc_54:
		mov	data_9,0FFh
		call	sub_72
		mov	data_75,0FFh
		call	sub_74
		mov	data_75,0
		jmp	short loc_52
loc_55:
		mov	data_9,0FFh
		call	sub_77
		jmp	short loc_53
loc_56:
		call	sub_71
loc_57:
		call	sub_5
		push	ax
		cmp	byte ptr data_156,0
		je	loc_58			; Jump if equal
		pop	ax
		cmp	al,0
		je	loc_57			; Jump if equal
		push	ax
		cmp	byte ptr data_156,0
		je	loc_58			; Jump if equal
		call	sub_71
loc_58:
		pop	ax
		or	ax,ax			; Zero ?
		retn
loc_59:
		mov	data_9,0FFh
		call	sub_72
		mov	data_75,0FFh
		call	sub_64
		mov	data_75,0
		call	sub_73
		mov	data_9,0
		mov	ax,0FF01h
		or	ax,ax			; Zero ?
		retn
sub_9		endp

data_97		db	' DeskMate by Tandy     Press Any'
		db	' Key                            '
		db	'               ', 0Dh, '$'
		db	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10		proc	near
		dec	byte ptr ds:[0FE2h]
		jnz	loc_ret_60		; Jump if not zero
		lea	si,data_97+4Dh		; (' ') Load effective addr
		lea	di,ds:[0FDFh]		; Load effective addr
		mov	ah,[di]
		std				; Set direction flag
		mov	cx,4Eh
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	[di],ah
		lea	dx,cs:[0F91h]		; Load effective addr
		call	sub_17

loc_ret_60:
		retn
sub_10		endp

data_101	db	';<=>?@ABCDpqRSG', 0
		db	'TUVWXYZ[\'
		db	 00h, 00h, 5Dh, 89h, 8Ah, 4Fh
		db	 48h, 50h, 4Dh, 4Bh, 84h, 76h
		db	 00h, 00h, 74h, 73h, 49h, 51h
		db	 77h, 75h, 00h, 00h, 00h
		db	'^_`abcdefg'
		db	 00h, 00h, 0Fh, 00h, 00h, 00h
		db	'hijklmno'
		db	0, 0, 0, 0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11		proc	near
		cmpsw				; Cmp [si] to es:[di]
		or	ax,0D95h
		push	es
		adc	al,0D5h
;*		adc	sp,bx
		db	 11h,0DCh		;  Fixup - byte match
;*		adc	sp,sp
		db	 11h,0E4h		;  Fixup - byte match
;*		adc	bx,di
		db	 11h,0FBh		;  Fixup - byte match
;*		adc	cx,si
		db	 11h,0F1h		;  Fixup - byte match
		adc	[di],ax
		adc	cl,[si]
		adc	bl,[bx]
		adc	ah,byte ptr ds:[7612h]
		adc	bh,[di+12h]
		cmp	[bp+si],dx
		nop
		adc	bl,byte ptr ss:[0F212h][bp+si]
		adc	ah,byte ptr ds:[0AB12h][si]
		adc	bh,byte ptr ss:[0C512h][bp]
		adc	bl,al
		adc	bl,bh
		adc	bh,[bx]
		adc	ax,word ptr ds:[1313h]
		adc	si,[di+16h]
		mov	dh,11h
		mov	bp,0D411h
		adc	[si],ch
		pop	ss
		rcl	word ptr [bx+si],cl	; Rotate thru carry
		rcl	word ptr [bx+si],cl	; Rotate thru carry
		push	di
		adc	ax,[bp+di+17h]
		db	 64h, 13h, 70h, 13h,0DBh, 10h
		db	 7Ah, 0Dh,0C1h, 30h, 7Ch, 13h
		db	 84h, 13h, 8Ch, 13h, 9Ah, 13h
		db	0A6h, 13h,0B2h, 13h,0EEh, 13h
		db	 0Bh, 11h, 48h, 11h,0E2h, 10h
sub_11		endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_E0h_entry	proc	far
		cmp	ah,32h			; '2'
		ja	loc_ret_62		; Jump if above
		push	bx
		push	ax
		push	ds
		push	cs
		pop	ds
		lea	bx,ds:[104Fh]		; Load effective addr
		mov	al,ah

locloop_61:
		xor	ah,ah			; Zero register
		add	ax,ax
		add	bx,ax
		mov	bx,[bx]
		pop	ds
		pop	ax
		call	bx			;*
		pop	bx

loc_ret_62:
		iret				; Interrupt return
int_E0h_entry	endp

			                        ;* No entry point to code
		retn
			                        ;* No entry point to code
		mov	cs:data_73,0FFh
		retn
			                        ;* No entry point to code
		mov	cs:data_73,1
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12		proc	near
		push	bx
		mov	ah,0Fh
		int	10h			; Video display   ah=functn 0Fh
						;  get state, al=mode, bh=page
						;   ah=columns on screen
		pop	bx
		mov	ah,al
		mov	al,1
		cmp	ah,8
		jge	loc_63			; Jump if > or =
		inc	al
		cmp	ah,5
		jge	loc_63			; Jump if > or =
		dec	al
		cmp	ah,3
		jge	loc_63			; Jump if > or =
		cmp	ah,1
		jge	loc_63			; Jump if > or =
		inc	al
loc_63:
		mov	ah,3
		retn
sub_12		endp

data_103	dw	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13		proc	near
		cmp	cs:data_87,0
		je	loc_66			; Jump if equal
		push	ds
		push	dx
		push	cx
		push	cs
		pop	ds
		xor	ah,ah			; Zero register
		push	ax
		mov	ax,3D00h
		lea	dx,ds:[8CDh]		; ('TWINTER.TWS') Load effective addr
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		mov	data_88,ax
		mov	data_103,9EDh
		pop	cx
		jcxz	loc_65			; Jump if cx=0

locloop_64:
		call	sub_15
		cmp	al,7Eh			; '~'
		jne	locloop_64		; Jump if not equal
		loop	locloop_64		; Loop if cx > 0

loc_65:
		mov	ax,0FFFFh
		mov	data_89,0
		pop	cx
		pop	dx
		pop	ds
		retn
loc_66:
		xor	ax,ax			; Zero register
		retn
sub_13		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14		proc	near
		push	ds
		push	dx
		push	cs
		pop	ds
		cmp	data_89,0
		jne	loc_68			; Jump if not equal
loc_67:
		call	sub_15
		cmp	al,7Eh			; '~'
		je	loc_69			; Jump if equal
		cmp	al,7Ch			; '|'
		jne	loc_67			; Jump if not equal
loc_68:
		call	sub_15
		mov	data_89,0FFh
		cmp	al,7Ch			; '|'
		jne	loc_69			; Jump if not equal
		xor	al,al			; Zero register
		mov	data_89,0
loc_69:
		pop	dx
		pop	ds
		retn
sub_14		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15		proc	near
		mov	bx,data_103
		inc	bx
		cmp	bx,offset data_91
		ja	loc_70			; Jump if above
		mov	al,[bx]
		mov	data_103,bx
		retn
loc_70:
		push	cx
		mov	ah,3Fh			; '?'
		mov	cx,0C8h
		lea	dx,data_90		; Load effective addr
		mov	bx,data_88
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		jc	loc_72			; Jump if carry Set
		mov	bx,offset data_90
		cmp	ax,0C8h
		jb	loc_72			; Jump if below
		mov	al,[bx]
		mov	data_103,bx
loc_71:
		pop	cx
		retn
loc_72:
		push	bx
		mov	cx,0Ah
		mov	al,7Eh			; '~'

locloop_73:
		mov	[bx],al
		inc	bx
		loop	locloop_73		; Loop if cx > 0

		pop	bx
		jmp	short loc_71
sub_15		endp

			                        ;* No entry point to code
		push	cs
		pop	ds
		lea	si,cs:[4B2h]		; Load effective addr
		retn
			                        ;* No entry point to code
		call	sub_12
		cmp	al,1
		je	loc_74			; Jump if equal
		retn
loc_74:
		push	di
		push	es
		push	cs
		pop	es
		lea	di,data_46		; Load effective addr
		cld				; Clear direction
		movsb				; Mov [si] to es:[di]
		movsb				; Mov [si] to es:[di]
		movsb				; Mov [si] to es:[di]
		movsb				; Mov [si] to es:[di]
		pop	es
		pop	di
		retn
			                        ;* No entry point to code
		push	cs
		pop	ds
		lea	si,cs:[46Eh]		; Load effective addr
		retn
			                        ;* No entry point to code
		push	ds
		push	cs
		pop	ds
		mov	al,data_7
		pop	ds
		retn
			                        ;* No entry point to code
		push	ds
		push	cs
		pop	ds
		mov	data_7,al
		mov	byte ptr data_156,0
		pop	ds
		retn
			                        ;* No entry point to code
		push	ds
		push	cs
		pop	ds
		mov	data_9,0
		pop	ds
		retn
			                        ;* No entry point to code
		push	ds
		push	cs
		pop	ds
		mov	data_9,0FFh
		pop	ds
		retn
		db	 0Eh, 1Fh
		db	 8Dh, 36h, 77h, 04h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh
		db	 8Dh, 3Eh, 77h, 04h,0B9h, 0Ah
		db	 00h,0F3h,0A4h, 07h, 5Fh, 59h
		db	0C3h, 0Eh, 1Fh
		db	 8Dh, 36h, 00h, 00h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	 10h, 00h
		db	 8Dh, 3Eh, 00h, 00h,0F3h,0A4h
		db	 07h, 5Fh, 59h,0C3h, 2Eh,0C6h
		db	 06h,0C9h, 07h, 00h, 51h, 53h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	 0Dh, 00h
		db	 8Dh, 3Eh, 3Ch, 07h,0F3h,0A4h
		db	 1Eh, 0Eh, 1Fh
		db	 8Dh, 3Eh, 9Ch, 07h
		db	 8Dh, 1Eh, 3Ch, 07h
loc_75:
		mov	al,[bx]
		inc	bx
		mov	[di],al
		inc	di
		cmp	al,2Eh			; '.'
		jne	loc_75			; Jump if not equal
		mov	word ptr [di],4C48h
		mov	byte ptr [di+2],50h	; 'P'
		mov	byte ptr [di+3],0
		pop	ds
		pop	es
		pop	di
		pop	bx
		pop	cx
		retn
		db	 0Eh, 1Fh
		db	 8Dh, 36h, 82h, 04h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	 24h, 00h
		db	 8Dh, 3Eh, 82h, 04h,0F3h,0A4h
		db	 07h, 5Fh, 59h,0C3h, 1Eh, 0Eh
		db	 1Fh,0C6h, 06h,0DAh, 2Eh, 00h
		db	 1Fh,0C3h, 1Eh, 0Eh, 1Fh,0C6h
		db	 06h,0DAh, 2Eh,0FFh, 1Fh,0C3h
		db	 0Eh, 1Fh
		db	 8Dh, 36h,0B6h, 04h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	0C8h, 00h
		db	 8Dh, 3Eh,0B6h, 04h,0F3h,0A4h
		db	 07h, 5Fh, 59h,0C3h, 0Eh, 1Fh
		db	 8Dh, 36h, 9Bh, 05h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	0C8h, 00h
		db	 8Dh, 3Eh, 9Bh, 05h,0F3h,0A4h
		db	 07h, 5Fh, 59h,0C3h, 0Eh, 1Fh
		db	 8Dh, 36h, 70h, 06h,0C3h, 51h
		db	 57h, 06h, 0Eh, 07h,0FCh,0B9h
		db	0C8h, 00h
		db	 8Dh, 3Eh, 70h, 06h,0F3h,0A4h
		db	 07h, 5Fh, 59h,0C3h, 53h, 51h
		db	 52h, 57h, 56h, 55h, 1Eh, 06h
		db	0E8h, 1Dh
		db	3Dh
loc_76:
		pop	es
		pop	ds
		pop	bp
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		retn
			                        ;* No entry point to code
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	bp
		push	ds
		push	es
		call	sub_104
		jmp	short loc_76
		dw	5153h
		db	 52h, 57h, 56h, 55h, 1Eh, 06h
		db	0E8h, 6Ah, 3Dh,0EBh,0DDh
		db	31 dup (0)
		db	 53h, 51h, 57h, 06h, 0Eh, 0Eh
		db	 1Fh, 07h, 8Dh, 3Eh, 20h, 13h
		db	0E8h, 7Ah, 19h, 8Dh, 36h, 20h
		db	 13h, 07h, 5Fh, 59h, 5Bh,0C3h
		db	 2Eh,0C6h, 06h, 70h, 55h, 00h
		db	 2Eh,0C6h, 06h, 71h, 55h, 00h
		db	0C3h, 50h, 51h,0B4h, 01h,0B9h
		db	 00h, 20h,0CDh, 10h, 59h, 58h
		db	0C3h, 50h, 51h,0B4h, 01h,0B9h
		db	 1Fh, 67h,0CDh, 10h, 59h, 58h
		db	0C3h, 50h, 52h,0E8h, 15h, 41h
		db	 5Ah, 58h,0C3h, 50h, 52h,0E8h
		db	 06h, 41h, 5Ah, 58h,0C3h, 50h
		db	 52h, 57h, 1Eh, 0Eh, 1Fh,0E8h
		db	 4Ch, 41h, 1Fh, 5Fh, 5Ah, 58h
		db	0C3h, 52h, 50h,0BAh,0FBh, 03h
		db	0ECh, 0Ch, 40h,0EEh, 58h, 5Ah
		db	0C3h, 52h, 50h,0BAh,0FBh, 03h
		db	0ECh, 24h,0BFh,0EEh, 58h, 5Ah
		db	0C3h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16		proc	near
		call	sub_22
		cmp	dl,9
		je	loc_77			; Jump if equal
		mov	al,dl
		mov	ah,0Eh
		push	bx
		xor	bx,bx			; Zero register
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		pop	bx
		call	sub_22
		retn
loc_77:
		push	dx
		push	cx
		push	bx
		mov	ah,3
		xor	bx,bx			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		and	dl,7
		mov	dh,8
		sub	dh,dl
		xchg	dl,dh
		xor	dh,dh			; Zero register
		mov	cx,dx

locloop_78:
		mov	ax,0E20h
		xor	bx,bx			; Zero register
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		loop	locloop_78		; Loop if cx > 0

		pop	bx
		pop	cx
		call	sub_22
		pop	dx
		retn
sub_16		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17		proc	near
		push	bx
		push	dx
		mov	bx,dx
loc_79:
		mov	dl,[bx]
		inc	bx
		cmp	dl,24h			; '$'
		je	loc_80			; Jump if equal
		or	dl,dl			; Zero ?
		jz	loc_80			; Jump if zero
		call	sub_16
		jmp	short loc_79
loc_80:
		pop	dx
		pop	bx
		retn
sub_17		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18		proc	near
		push	ds
		push	es
		push	cs
		push	cs
		pop	ds
		pop	es
		push	bx
		push	cx
		call	sub_121
		pop	cx
		pop	bx
		pop	es
		pop	ds
		retn
sub_18		endp

		db	600 dup (0)
data_106	dw	1416h
data_107	dw	1416h
data_108	dw	0
data_109	db	0
		db	 53h, 1Eh, 0Eh, 1Fh, 8Bh, 1Eh
		db	 70h, 16h, 3Bh, 1Eh, 6Eh, 16h
		db	 75h, 05h, 33h,0C0h, 1Fh, 5Bh
		db	0C3h, 8Ah, 07h, 43h,0FFh, 0Eh
		db	 72h, 16h, 81h,0FBh, 6Dh, 16h
		db	 75h, 04h, 8Dh, 1Eh, 16h, 14h
loc_81:
		mov	data_107,bx
		cmp	data_108,64h
		ja	loc_82			; Jump if above
		cmp	data_109,0
		je	loc_82			; Jump if equal
		push	ax
		call	sub_20
		pop	ax
		mov	data_109,0
loc_82:
		pop	ds
		pop	bx
		mov	ah,0FFh
		retn
			                        ;* No entry point to code
		sti				; Enable interrupts
		push	dx
		push	ax
		push	bx
		push	ds
		push	cs
		pop	ds
		mov	dx,3FAh
		in	al,dx			; port 3FAh, RS232-1 int identy
		mov	dx,3FDh
		in	al,dx			; port 3FDh, RS232-1 line stat
		and	al,1
		mov	dx,3F8h
		in	al,dx			; port 3F8h, RS232-1 recv buffr
		jz	loc_85			; Jump if zero
		mov	bx,data_106
		mov	[bx],al
		inc	bx
		cmp	bx,166Dh
		jne	loc_83			; Jump if not equal
		lea	bx,cs:[1416h]		; Load effective addr
loc_83:
		mov	data_106,bx
		inc	data_108
		cmp	byte ptr ds:[496h],4Eh	; ('N ,OFF,OFF,OFF,') 'N'
		jne	loc_85			; Jump if not equal
		cmp	data_108,0C8h
		jb	loc_85			; Jump if below
		mov	data_109,0FFh
		cmp	data_108,258h
		jb	loc_84			; Jump if below
		mov	data_108,1
loc_84:
		call	sub_19
		jmp	short loc_85
		db	90h
loc_85:
		cli				; Disable interrupts
		mov	al,20h			; ' '
		out	20h,al			; port 20h, 8259-1 int command
						;  al = 20h, end of interrupt
		pop	ds
		pop	bx
		pop	ax
		pop	dx
		sti				; Enable interrupts
		iret				; Interrupt return

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19		proc	near
		mov	al,13h
		jmp	short loc_86
		db	90h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_20:
		mov	al,11h
loc_86:
		call	sub_21
		or	ah,ah			; Zero ?
		jnz	loc_86			; Jump if not zero
		retn
sub_19		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21		proc	near
		push	dx
		push	ax
		mov	dx,3FDh
		in	al,dx			; port 3FDh, RS232-1 line stat
		and	al,20h			; ' '
		pop	ax
		jnz	loc_87			; Jump if not zero
		pop	dx
		mov	ah,0FFh
		retn
loc_87:
		mov	dx,3F8h
		out	dx,al			; port 3F8h, RS232-1 xmit buffr
		pop	dx
		xor	ah,ah			; Zero register
		retn
sub_21		endp

			                        ;* No entry point to code
		push	ax
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		call	sub_22
		push	cx
		mov	ah,3
		mov	bh,0
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	al,dh
		mov	cl,50h			; 'P'
		mul	cl			; ax = reg * al
		mov	di,ax
		xor	dh,dh			; Zero register
		add	di,dx
		shl	di,1			; Shift w/zeros fill
		pop	cx
		push	es
		call	sub_12
		cmp	al,2
		je	loc_90			; Jump if equal
		mov	ax,cs:data_38
		mov	es,ax
		cld				; Clear direction
		mov	dx,3DAh

locloop_88:
		in	al,dx			; port 3DAh, CGA/EGA vid status
		and	al,9
		jnz	locloop_88		; Jump if not zero
loc_89:
		in	al,dx			; port 3DAh, CGA/EGA vid status
		and	al,9
		jz	loc_89			; Jump if zero
		movsw				; Mov [si] to es:[di]
		loop	locloop_88		; Loop if cx > 0

		jmp	short loc_91
		db	90h
loc_90:
		mov	ax,cs:data_38
		sub	ah,8
		mov	es,ax
		rep	movsw			; Rep when cx >0 Mov [si] to es:[di]
loc_91:
		pop	es
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22		proc	near
		push	ax
		push	dx
		call	sub_12
		cmp	al,2
		je	loc_92			; Jump if equal
		mov	dx,3D8h
		mov	al,9
		out	dx,al			; port 3D8h, CGA video control
loc_92:
		pop	dx
		pop	ax
		retn
sub_22		endp

data_110	db	31h
data_111	db	0
		db	'PHONE.TWS'
		db	0
data_112	db	'PHONE.TWS'
		db	50 dup (0)
data_114	db	0
		db	9 dup (0)
data_115	db	'                                '
		db	'   ... ..................... ...'
		db	'-...-....', 0Dh, 0Ah, '... .....'
		db	'................ ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah, '... ..................... .'
		db	'..-...-....', 0Dh, 0Ah, '... ...'
		db	'.................. ...-...-....', 0Dh
		db	0Ah
		db	0, 0, 0, 0, 0
data_121	db	2Eh
		db	 2Eh, 2Eh
		db	' ..................... ...-...-.'
		db	'...'
data_123	db	3
		db	 19h, 26h, 27h, 28h, 2Ch, 42h
		db	 4Fh,0FFh
data_124	db	1Dh
		db	 21h, 46h, 4Ah
data_125	db	8
		db	 13h, 1Ch, 27h, 31h, 3Ch, 43h
		db	 47h
data_126	dw	100h
data_127	db	0
data_128	db	0
data_129	db	0
		db	40 dup (0)
data_130	db	0
data_131	db	80h
		db	 13h, 26h, 8Ch, 13h, 26h,0A5h
		db	 03h, 28h,0A4h,0FCh, 27h,0A3h
		db	 72h, 26h,0A2h,0BDh, 26h,0A0h
		db	 03h, 27h,0A1h, 23h, 27h,0A6h
		db	 59h, 27h,0A7h,0A6h, 27h, 89h
		db	 0Bh, 28h, 8Ah, 42h, 28h, 87h
		db	 2Eh, 2Ah, 81h, 5Ah, 2Ah, 86h
		db	0B9h, 2Bh,0A8h, 40h, 26h,0A9h
		db	 40h, 26h, 8Fh,0FCh, 27h,0ACh
		db	 40h, 26h,0ADh, 40h, 26h, 82h
		db	 65h, 2Ch, 83h, 60h, 2Dh, 84h
		db	 82h, 2Dh, 85h,0A4h, 2Dh,0FFh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23		proc	near
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		retn
sub_23		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24		proc	near
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		retn
sub_24		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25		proc	near
		call	sub_39
		mov	data_111,0
		call	sub_26
		call	sub_27
		mov	al,data_56
		xor	al,0FFh
		mov	data_56,al
		mov	al,data_57
		xor	al,0FFh
		mov	data_57,al
		mov	al,data_58
		xor	al,0FFh
		mov	data_58,al
		call	sub_55
		call	sub_56
		call	sub_57
		jmp	short loc_95
		db	90h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_26:
		mov	cx,13h
		mov	si,181Dh
		mov	data_110,31h		; '1'

locloop_93:
		push	cx
		call	sub_34
		pop	cx
		loop	locloop_93		; Loop if cx > 0

		mov	dx,29h
		call	sub_24
		mov	cx,14h

locloop_94:
		push	cx
		call	sub_34
		pop	cx
		loop	locloop_94		; Loop if cx > 0

		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_27:
		mov	si,17FAh
		mov	dx,1509h
		call	sub_24
		call	sub_35
		mov	dx,151Dh
		call	sub_24
		call	sub_35
		mov	dx,1532h
		call	sub_24
		call	sub_35
		mov	dx,1544h
		call	sub_24
		call	sub_36
		mov	dx,6
		call	sub_24
		retn
loc_95:
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		or	ah,ah			; Zero ?
		jz	loc_98			; Jump if zero
		mov	bx,offset data_131
loc_96:
		cmp	byte ptr [bx],0FFh
		je	loc_95			; Jump if equal
		cmp	al,[bx]
		je	loc_97			; Jump if equal
		add	bx,3
		jmp	short loc_96
loc_97:
		mov	bx,[bx+1]
		call	bx			;*
		jmp	short loc_95
loc_98:
		cmp	al,20h			; ' '
		jb	loc_99			; Jump if below
		push	ax
		call	sub_43
		pop	ax
		mov	[si],al
		mov	ah,0Ah
		xor	bh,bh			; Zero register
		mov	cx,1
		int	10h			; Video display   ah=functn 0Ah
						;  set char al at present curs
						;   cx=# of chars to replicate
		call	sub_32
		jmp	short loc_95
loc_99:
		cmp	al,0Dh
		jne	loc_104			; Jump if not equal
		call	sub_23
		cmp	dh,13h
		ja	loc_103			; Jump if above
		cmp	dl,42h			; 'B'
		jb	loc_101			; Jump if below
		cmp	dh,13h
		je	loc_103			; Jump if equal
		mov	dl,29h			; ')'
loc_100:
		inc	dh
		call	sub_24
		jmp	short loc_95
loc_101:
		cmp	dl,26h			; '&'
		ja	loc_103			; Jump if above
		cmp	dl,1Ah
		jb	loc_103			; Jump if below
		cmp	dh,13h
		je	loc_102			; Jump if equal
		xor	dl,dl			; Zero register
		jmp	short loc_100
loc_102:
		mov	dx,0FF29h
		jmp	short loc_100
loc_103:
		call	sub_33
		jmp	short loc_95
loc_104:
		cmp	al,8
		jne	loc_95			; Jump if not equal
		call	sub_31
		jmp	short loc_95
sub_25		endp

			                        ;* No entry point to code
		pop	ax
		cmp	data_111,0
		je	loc_105			; Jump if equal
		mov	ah,3Ch			; '<'
		mov	dx,offset data_112	; ('PHONE.TWS')
		xor	cx,cx			; Zero register
		int	21h			; DOS Services  ah=function 3Ch
						;  create/truncate file @ ds:dx
		mov	bx,ax
		mov	ah,40h			; '@'
		mov	cx,0C54h
		mov	dx,offset data_115	; ('                        ')
		int	21h			; DOS Services  ah=function 40h
						;  write file  bx=file handle
						;   cx=bytes from ds:dx buffer
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
loc_105:
		mov	ah,11h
		mov	bl,data_46
		mov	cx,1
		int	10h			; Video display   ah=functn 11h
						;  font load bh=points, bl=block
						;   cx=qty, dx=1st char code
						;   es:bp=ptr to font table
		retn
			                        ;* No entry point to code
		cmp	data_110,31h		; '1'
		je	loc_106			; Jump if equal

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28		proc	near
		mov	dx,100h
		call	sub_24
		call	sub_26
		call	sub_27
		retn
sub_28		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29		proc	near
loc_106:
		mov	dx,100h
		call	sub_24
		call	sub_30
		mov	dx,6
		call	sub_24
		mov	data_110,32h		; '2'
		retn
sub_29		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30		proc	near
		mov	si,1E35h
		mov	cx,13h
		jmp	locloop_93
sub_30		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31		proc	near
		call	sub_23
		cmp	dh,0
		jne	loc_108			; Jump if not equal
		cmp	dl,29h			; ')'
		ja	loc_108			; Jump if above
		jz	loc_ret_107		; Jump if zero
		cmp	dl,7
		jb	loc_ret_107		; Jump if below
		dec	dl
		call	sub_24

loc_ret_107:
		retn
loc_108:
		mov	al,dl
		cld				; Clear direction
		dec	al
		cmp	dh,15h
		je	loc_111			; Jump if equal
		mov	di,offset data_123
		mov	cx,9
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jz	loc_ret_110		; Jump if zero
		mov	di,offset data_124
		mov	cx,4
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jnz	loc_109			; Jump if not zero
		dec	al
loc_109:
		mov	dl,al
		call	sub_24

loc_ret_110:
		retn
loc_111:
		mov	di,offset data_125
		mov	cx,8
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jnz	loc_109			; Jump if not zero
		retn
sub_31		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32		proc	near
		call	sub_23
		cmp	dh,0
		jne	loc_113			; Jump if not equal
		cmp	dl,25h			; '%'
		ja	loc_113			; Jump if above
		jz	loc_ret_112		; Jump if zero
		inc	dl
		call	sub_24

loc_ret_112:
		retn
loc_113:
		mov	al,dl
		cld				; Clear direction
		inc	al
		cmp	dh,15h
		je	loc_116			; Jump if equal
		mov	di,offset data_123
		mov	cx,9
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jz	loc_ret_115		; Jump if zero
		mov	di,offset data_124
		mov	cx,4
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jnz	loc_114			; Jump if not zero
		inc	al
loc_114:
		mov	dl,al
		call	sub_24

loc_ret_115:
		retn
loc_116:
		mov	di,offset data_125
		mov	cx,8
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jnz	loc_114			; Jump if not zero
		retn
sub_32		endp

			                        ;* No entry point to code
		call	sub_23
		cmp	dh,1
		jb	loc_ret_119		; Jump if below
		jnz	loc_117			; Jump if not zero
		cmp	dl,5
		ja	loc_117			; Jump if above
		mov	dl,6
loc_117:
		cmp	dh,14h
		jb	loc_118			; Jump if below
		dec	dh
		xor	dl,dl			; Zero register
loc_118:
		dec	dh
		call	sub_24

loc_ret_119:
		retn
			                        ;* No entry point to code
		call	sub_23
		cmp	dh,0
		jne	loc_121			; Jump if not equal
		cmp	dl,26h			; '&'
		ja	loc_121			; Jump if above
		cmp	dl,3
		je	loc_120			; Jump if equal
		cmp	dl,19h
		je	loc_120			; Jump if equal
		cmp	dl,1Dh
		je	loc_120			; Jump if equal
		cmp	dl,21h			; '!'
		jne	loc_121			; Jump if not equal
loc_120:
		dec	dl
loc_121:
		cmp	dh,13h
		jae	loc_123			; Jump if above or =
		inc	dh
loc_122:
		call	sub_24
		retn
loc_123:
		jnz	loc_122			; Jump if not zero
		mov	dh,15h
		mov	dl,9
		jmp	short loc_122

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33		proc	near
		call	sub_23
		cmp	dh,15h
		je	loc_129			; Jump if equal
		cmp	dl,3
		ja	loc_124			; Jump if above
		mov	dl,4
		jmp	short loc_128
loc_124:
		cmp	dl,19h
		ja	loc_125			; Jump if above
		mov	dl,1Ah
		jmp	short loc_128
loc_125:
		cmp	dl,28h			; '('
		ja	loc_126			; Jump if above
		mov	dl,29h			; ')'
		jmp	short loc_128
loc_126:
		cmp	dl,2Ch			; ','
		ja	loc_127			; Jump if above
		mov	dl,2Dh			; '-'
		jmp	short loc_128
loc_127:
		mov	dl,43h			; 'C'
loc_128:
		call	sub_24
		retn
loc_129:
		cmp	dl,13h
		ja	loc_130			; Jump if above
		mov	dl,1Dh
		jmp	short loc_128
loc_130:
		cmp	dl,30h			; '0'
		ja	loc_131			; Jump if above
		mov	dl,32h			; '2'
		jmp	short loc_128
loc_131:
		cmp	dl,40h			; '@'
		ja	loc_128			; Jump if above
		mov	dl,44h			; 'D'
		jmp	short loc_128
sub_33		endp

			                        ;* No entry point to code
		call	sub_23
		cmp	dh,15h
		je	loc_138			; Jump if equal
		cmp	dl,42h			; 'B'
		jb	loc_132			; Jump if below
		mov	dl,2Dh			; '-'
		jmp	short loc_137
loc_132:
		cmp	dl,2Ch			; ','
		jb	loc_133			; Jump if below
		mov	dl,29h			; ')'
		jmp	short loc_137
loc_133:
		cmp	dl,26h			; '&'
		jb	loc_134			; Jump if below
		mov	dl,1Ah
		jmp	short loc_137
loc_134:
		cmp	dh,0
		ja	loc_135			; Jump if above
		mov	dl,6
		jmp	short loc_137
loc_135:
		cmp	dl,19h
		jb	loc_136			; Jump if below
		mov	dl,4
		jmp	short loc_137
loc_136:
		mov	dl,0
loc_137:
		call	sub_24
		retn
loc_138:
		cmp	dl,43h			; 'C'
		jb	loc_139			; Jump if below
		mov	dl,32h			; '2'
		jmp	short loc_137
loc_139:
		cmp	dl,31h			; '1'
		jb	loc_140			; Jump if below
		mov	dl,1Dh
		jmp	short loc_137
loc_140:
		cmp	dl,1Ch
		jb	loc_137			; Jump if below
		mov	dl,9
		jmp	short loc_137
			                        ;* No entry point to code
		mov	dx,6
		call	sub_24
		retn
			                        ;* No entry point to code
		mov	dh,13h
		mov	dl,29h			; ')'
		call	sub_24
		retn
			                        ;* No entry point to code
		call	sub_23
		cmp	dh,15h
		je	loc_ret_145		; Jump if equal
		cmp	dl,28h			; '('
		ja	loc_141			; Jump if above
		cmp	dh,0
		je	loc_ret_145		; Jump if equal
		mov	dl,0
		jmp	short loc_142
loc_141:
		mov	dl,29h			; ')'
loc_142:
		push	dx
		call	sub_24
		call	sub_43
		call	sub_42
		cmp	data_110,31h		; '1'
		jne	loc_143			; Jump if not equal
		call	sub_28
		jmp	short loc_144
loc_143:
		call	sub_29
loc_144:
		pop	dx
		call	sub_24
		retn

loc_ret_145:
		retn
			                        ;* No entry point to code
		call	sub_23
		cmp	dh,15h
		je	loc_ret_150		; Jump if equal
		cmp	dl,28h			; '('
		ja	loc_147			; Jump if above
		cmp	dh,0
		jne	loc_146			; Jump if not equal
		inc	dh
loc_146:
		mov	dl,0
		jmp	short loc_148
loc_147:
		mov	dl,29h			; ')'
loc_148:
		push	dx
		call	sub_24
		call	sub_43
		call	sub_41
		cmp	data_110,31h		; '1'
		jne	loc_149			; Jump if not equal
		call	sub_28
		jmp	short loc_144
loc_149:
		call	sub_29
		jmp	short loc_144

loc_ret_150:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34		proc	near
		call	sub_23
		push	dx
		mov	cx,26h

locloop_151:
		mov	al,[si]
		inc	si
		mov	ah,0Eh
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		loop	locloop_151		; Loop if cx > 0

		pop	dx
		inc	dh
		call	sub_24
		inc	si
		inc	si
		retn
sub_34		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35		proc	near
		mov	cx,0Ah

locloop_152:
		call	sub_37
		loop	locloop_152		; Loop if cx > 0

		retn
sub_35		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36		proc	near
		mov	cx,3
		jmp	short locloop_152
sub_36		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37		proc	near
		mov	dl,[si]
		inc	si
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_37		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38		proc	near
		mov	ah,3Dh			; '='
		mov	dx,offset data_112	; ('PHONE.TWS')
		mov	al,0
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		jc	loc_ret_153		; Jump if carry Set
		mov	bx,ax
		mov	ah,3Fh			; '?'
		mov	dx,offset data_115	; ('                        ')
		mov	cx,0C54h
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		retn

loc_ret_153:
		retn
sub_38		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39		proc	near
		mov	dx,1600h
		call	sub_24
		mov	ax,920h
		mov	bl,data_47
		mov	cx,0A0h
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	dx,0
		call	sub_24
		mov	ax,920h
		xor	bh,bh			; Zero register
		mov	bl,data_46
		mov	cx,6E0h
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	ah,2Fh			; '/'
		lea	dx,cs:[11Ch]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,1500h
		call	sub_24
		lea	dx,cs:[122h]		; Load effective addr
		call	sub_40
		lea	dx,cs:[166h]		; Load effective addr
		call	sub_40
		lea	dx,cs:[1B4h]		; Load effective addr
		call	sub_40
		mov	dx,27h
		call	sub_24
		mov	ah,2Fh			; '/'
		lea	dx,cs:[2922h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,100h
		call	sub_24
		retn
sub_39		endp

		db	'*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, '*', 0Ah
		db	8, '*', 0Ah, 8, '*', 0Ah, 8, 0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40		proc	near
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2Fh			; '/'
		lea	dx,cs:[296Ch]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_40		endp

			                        ;* No entry point to code
		or	ax,0Ah

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41		proc	near
		mov	di,offset 2425h		; ('... ....................')
loc_154:
		mov	al,[di]
		mov	[di+28h],al
		dec	di
		cmp	di,si
		jae	loc_154			; Jump if above or =
		inc	di
loc_155:
		mov	cx,26h
		mov	bx,offset data_121

locloop_156:
		mov	al,[bx]
		mov	[di],al
		inc	di
		inc	bx
		loop	locloop_156		; Loop if cx > 0

		retn
sub_41		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42		proc	near
		mov	di,si
loc_157:
		cmp	di,offset 2425h		; ('... ....................')
		jae	loc_158			; Jump if above or =
		mov	al,[di+28h]
		mov	[di],al
		inc	di
		jmp	short loc_157
loc_158:
		jmp	short loc_155
sub_42		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43		proc	near
		cmp	data_110,31h		; '1'
		jne	loc_159			; Jump if not equal
		mov	si,181Dh
		jmp	short loc_160
loc_159:
		mov	si,1E35h
loc_160:
		call	sub_23
		cmp	dh,14h
		ja	loc_165			; Jump if above
		cmp	dl,28h			; '('
		ja	loc_163			; Jump if above
		cmp	dh,0
		je	loc_170			; Jump if equal
		mov	data_111,0FFh
		mov	al,dl
		xor	ah,ah			; Zero register
		add	si,ax
loc_161:
		dec	dh
		jz	loc_ret_162		; Jump if zero
		add	si,28h
		jmp	short loc_161

loc_ret_162:
		retn
loc_163:
		mov	data_111,0FFh
		add	si,2F8h
		mov	al,dl
		sub	al,29h			; ')'
		xor	ah,ah			; Zero register
		add	si,ax
loc_164:
		cmp	dh,0
		je	loc_ret_162		; Jump if equal
		add	si,28h
		dec	dh
		jmp	short loc_164
loc_165:
		mov	data_111,0FFh
		mov	si,17FAh
		cmp	dl,1Ch
		ja	loc_167			; Jump if above
		sub	dl,9
loc_166:
		mov	al,dl
		xor	ah,ah			; Zero register
		add	si,ax
		retn
loc_167:
		cmp	dl,31h			; '1'
		ja	loc_168			; Jump if above
		sub	dl,1Dh
		add	dl,0Ah
		jmp	short loc_166
loc_168:
		cmp	dl,43h			; 'C'
		ja	loc_169			; Jump if above
		sub	dl,32h			; '2'
		add	dl,14h
		jmp	short loc_166
loc_169:
		sub	dl,44h			; 'D'
		add	dl,1Eh
		jmp	short loc_166
loc_170:
		mov	si,24B9h
		retn
sub_43		endp

			                        ;* No entry point to code
		mov	si,181Dh
		mov	cx,4Eh
		mov	al,0Dh
		call	sub_18
		or	al,al			; Zero ?
		jnz	loc_ret_173		; Jump if not zero

locloop_171:
		mov	al,[si]
		inc	si
		cmp	al,20h			; ' '
		jb	loc_172			; Jump if below
		call	sub_18
		or	al,al			; Zero ?
		jnz	loc_ret_173		; Jump if not zero
		jmp	short locloop_171
loc_172:
		mov	al,0Dh
		call	sub_18
		or	al,al			; Zero ?
		jnz	loc_ret_173		; Jump if not zero
		inc	si
		loop	locloop_171		; Loop if cx > 0


loc_ret_173:
		retn
			                        ;* No entry point to code
		call	sub_23
		cmp	dh,15h
		je	loc_174			; Jump if equal
		cmp	dl,28h			; '('
		ja	loc_175			; Jump if above
		cmp	dh,0
		ja	loc_176			; Jump if above
loc_174:
		mov	dx,100h
		jmp	short loc_179
loc_175:
		cmp	dh,13h
		je	loc_178			; Jump if equal
		inc	dh
		mov	dl,29h			; ')'
		jmp	short loc_179
loc_176:
		cmp	dh,13h
		je	loc_177			; Jump if equal
		inc	dh
		xor	dl,dl			; Zero register
		jmp	short loc_179
loc_177:
		mov	dx,29h
		jmp	short loc_179
loc_178:
		call	sub_47
		mov	dx,100h
loc_179:
		mov	data_126,dx
		mov	data_127,0
		mov	bp,dx
		call	sub_48
loc_180:
		cmp	data_127,2
		jb	loc_181			; Jump if below
		cmp	data_126,bp
		je	loc_184			; Jump if equal
loc_181:
		call	sub_44
		cmp	ch,4
		je	loc_184			; Jump if equal
loc_182:
		call	sub_46
		cmp	al,ch
		jne	loc_182			; Jump if not equal
loc_183:
		call	sub_45
		cmp	ch,4
		je	loc_184			; Jump if equal
		call	sub_46
		cmp	al,ch
		je	loc_183			; Jump if equal
		jmp	short loc_181
loc_184:
		call	sub_49
		mov	dx,bp
		cmp	dl,28h			; '('
		jb	loc_185			; Jump if below
		mov	dl,29h			; ')'
		jmp	short loc_186
loc_185:
		xor	dl,dl			; Zero register
loc_186:
		call	sub_24
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44		proc	near
		mov	data_128,6

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_45:
		xor	dh,dh			; Zero register
		mov	dl,data_128
		call	sub_24
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		cmp	al,61h			; 'a'
		jb	loc_187			; Jump if below
		cmp	al,7Ah			; 'z'
		ja	loc_187			; Jump if above
		and	al,5Fh			; '_'
loc_187:
		mov	ch,al
		inc	data_128
		retn
sub_44		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46		proc	near
		mov	dx,bp
		cmp	dl,26h			; '&'
		ja	loc_190			; Jump if above
		jz	loc_192			; Jump if zero
loc_188:
		call	sub_24
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		mov	dx,bp
		inc	dl
		mov	bp,dx
		cmp	al,61h			; 'a'
		jb	loc_ret_189		; Jump if below
		cmp	al,7Ah			; 'z'
		ja	loc_ret_189		; Jump if above
		and	al,5Fh			; '_'

loc_ret_189:
		retn
loc_190:
		cmp	dl,4Fh			; 'O'
		jb	loc_188			; Jump if below
		cmp	dh,13h
		je	loc_194			; Jump if equal
		inc	dh
		mov	dl,29h			; ')'
loc_191:
		mov	bp,dx
		pop	ax
		jmp	loc_180
loc_192:
		cmp	dh,13h
		je	loc_193			; Jump if equal
		inc	dh
		xor	dl,dl			; Zero register
		jmp	short loc_191
loc_193:
		mov	dx,29h
		jmp	short loc_191
loc_194:
		call	sub_47
		inc	data_127
		mov	dx,100h
		jmp	short loc_191
sub_46		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_47		proc	near
		push	bp
		push	bx
		push	cx
		push	dx
		cmp	data_110,31h		; '1'
		jne	loc_196			; Jump if not equal
		call	sub_29
loc_195:
		pop	dx
		pop	cx
		pop	bx
		pop	bp
		retn
loc_196:
		call	sub_28
		jmp	short loc_195
sub_47		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_48		proc	near
		mov	dx,26h
loc_197:
		push	dx
		call	sub_24
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		cmp	al,20h			; ' '
		ja	loc_198			; Jump if above
		mov	ah,0Ah
		xor	bh,bh			; Zero register
		mov	cx,1
		mov	al,4
		int	10h			; Video display   ah=functn 0Ah
						;  set char al at present curs
						;   cx=# of chars to replicate
		pop	dx
		dec	dl
		jnz	loc_197			; Jump if not zero
		retn
loc_198:
		pop	ax
		retn
sub_48		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_49		proc	near
		mov	dx,26h
loc_199:
		push	dx
		call	sub_24
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		cmp	al,4
		jne	loc_200			; Jump if not equal
		mov	ah,0Ah
		xor	bh,bh			; Zero register
		mov	cx,1
		mov	al,20h			; ' '
		int	10h			; Video display   ah=functn 0Ah
						;  set char al at present curs
						;   cx=# of chars to replicate
		pop	dx
		dec	dl
		jnz	loc_199			; Jump if not zero
		retn
loc_200:
		pop	ax
		retn
sub_49		endp

			                        ;* No entry point to code
		call	sub_50
		mov	data_111,0FFh
		cmp	data_110,31h		; '1'
		jne	loc_201			; Jump if not equal
		call	sub_28
		retn
loc_201:
		call	sub_29
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_50		proc	near
		mov	si,offset 181Dh		; ('... ....................')
		mov	bx,offset data_129
		mov	cx,4Dh

locloop_202:
		push	si
		push	bx
		push	cx
		mov	cx,26h

locloop_203:
		mov	al,[si]
		mov	[bx],al
		inc	si
		inc	bx
		loop	locloop_203		; Loop if cx > 0

		pop	cx
		pop	bx
		pop	si
		push	cx
		push	si

locloop_204:
		add	si,28h
		call	sub_51
		loop	locloop_204		; Loop if cx > 0

		pop	si
		push	si
		push	bx
		mov	cx,26h

locloop_205:
		mov	al,[bx]
		mov	[si],al
		inc	si
		inc	bx
		loop	locloop_205		; Loop if cx > 0

		pop	bx
		pop	si
		pop	cx
		add	si,28h
		loop	locloop_202		; Loop if cx > 0

		retn
sub_50		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_51		proc	near
		push	cx
		push	si
		push	bx
		mov	cx,15h
		add	bx,4
		add	si,4

locloop_206:
		mov	al,[bx]
		cmp	al,2Eh			; '.'
		jne	loc_207			; Jump if not equal
		mov	al,0FFh
loc_207:
		cmp	al,[si]
		jb	loc_209			; Jump if below
		ja	loc_210			; Jump if above
loc_208:
		inc	bx
		inc	si
		loop	locloop_206		; Loop if cx > 0

loc_209:
		pop	bx
		pop	si
		pop	cx
		retn
loc_210:
		cmp	byte ptr [si],2Eh	; '.'
		je	loc_208			; Jump if equal
		pop	bx
		pop	si
		push	si
		push	bx
		mov	cx,26h

locloop_211:
		mov	ah,[bx]
		mov	al,[si]
		mov	[bx],al
		mov	[si],ah
		inc	bx
		inc	si
		loop	locloop_211		; Loop if cx > 0

		jmp	short loc_209
sub_51		endp

data_134	dw	15 dup (0)
		db	0E8h, 9Ch,0F8h, 80h,0FEh, 13h
		db	 77h, 25h, 80h,0FEh, 00h, 77h
		db	 05h, 80h,0FAh, 28h, 72h, 1Bh
		db	 8Dh, 3Eh, 47h, 2Ch,0E8h, 4Ah
		db	 00h,0E8h, 8Ah, 00h,0C6h, 05h
		db	 00h, 80h, 3Eh,0BAh, 24h, 00h
		db	 75h, 08h
loc_212:
		lea	si,cs:[2C47h]		; Load effective addr
		call	sub_103
		retn
loc_213:
		lea	di,data_134		; Load effective addr
loc_214:
		cmp	byte ptr [di],0
		je	loc_215			; Jump if equal
		inc	di
		jmp	short loc_214
loc_215:
		sub	di,0Ah
		mov	al,byte ptr data_115+1Eh	; (' ')
		cmp	al,[di]
		jne	loc_212			; Jump if not equal
		mov	al,byte ptr ds:[1819h]
		cmp	al,[di+1]
		jne	loc_212			; Jump if not equal
		mov	al,byte ptr ds:[181Ah]
		cmp	al,[di+2]
		jne	loc_212			; Jump if not equal
		mov	si,di
		add	si,3
		cld				; Clear direction
loc_216:
		movsb				; Mov [si] to es:[di]
		cmp	byte ptr [si],0
		jne	loc_216			; Jump if not equal
		movsb				; Mov [si] to es:[di]
		jmp	short loc_212

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_52		proc	near
		cmp	data_56,0
		je	loc_217			; Jump if equal
		mov	cx,1
		call	sub_53
loc_217:
		cmp	data_57,0
		je	loc_218			; Jump if equal
		mov	cx,2
		call	sub_53
loc_218:
		cmp	data_58,0
		je	loc_219			; Jump if equal
		mov	cx,3
		call	sub_53
loc_219:
		mov	byte ptr [di],0
		retn
sub_52		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_53		proc	near
		mov	bx,offset data_114

locloop_220:
		add	bx,0Ah
		loop	locloop_220		; Loop if cx > 0

		mov	cx,0Ah

locloop_221:
		mov	al,[bx]
		inc	bx
		cmp	al,21h			; '!'
		jb	loc_222			; Jump if below
		mov	[di],al
		inc	di
loc_222:
		loop	locloop_221		; Loop if cx > 0

		retn
sub_53		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_54		proc	near
		mov	data_130,0
		call	sub_23
		cmp	dl,28h			; '('
		ja	loc_223			; Jump if above
		mov	dl,1Ah
		jmp	short loc_224
loc_223:
		mov	dl,43h			; 'C'
loc_224:
		mov	bp,dx
		call	sub_24
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		cmp	al,30h			; '0'
		jb	loc_225			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_225			; Jump if above
		mov	data_130,0FFh
loc_225:
		mov	cx,0Ch

locloop_226:
		push	cx
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		cmp	al,39h			; '9'
		ja	loc_227			; Jump if above
		cmp	al,30h			; '0'
		jb	loc_227			; Jump if below
		mov	[di],al
		inc	di
loc_227:
		mov	dx,bp
		inc	dl
		mov	bp,dx
		call	sub_24
		pop	cx
		loop	locloop_226		; Loop if cx > 0

		mov	dx,bp
		sub	dl,26h			; '&'
		call	sub_24
		retn
sub_54		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_55		proc	near
		cmp	data_56,0
		jne	loc_228			; Jump if not equal
		mov	data_56,0FFh
		mov	bl,data_46
		jmp	short loc_229
loc_228:
		mov	data_56,0
		mov	bl,data_47
loc_229:
		mov	cx,1
		call	sub_58
		retn
sub_55		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_56		proc	near
		cmp	data_57,0
		jne	loc_230			; Jump if not equal
		mov	data_57,0FFh
		mov	bl,data_46
		jmp	short loc_231
loc_230:
		mov	data_57,0
		mov	bl,data_47
loc_231:
		mov	cx,2
		call	sub_58
		retn
sub_56		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_57		proc	near
		cmp	data_58,0
		jne	loc_232			; Jump if not equal
		mov	data_58,0FFh
		mov	bl,data_46
		jmp	short loc_233
loc_232:
		mov	data_58,0
		mov	bl,data_47
loc_233:
		mov	cx,3
		call	sub_58
		retn
sub_57		endp

data_135	db	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_58		proc	near
		mov	data_135,bl
		push	cx
		call	sub_23
		pop	cx
		push	dx
		mov	dx,1708h

locloop_234:
		add	dl,8
		loop	locloop_234		; Loop if cx > 0

		call	sub_24
		mov	cx,7

locloop_235:
		push	cx
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		mov	ah,9
		mov	bl,data_135
		xor	bh,bh			; Zero register
		mov	cx,1
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		call	sub_23
		inc	dl
		call	sub_24
		pop	cx
		loop	locloop_235		; Loop if cx > 0

		pop	dx
		call	sub_24
		retn
sub_58		endp

data_136	dw	99 dup (0)
		db	0
data_137	db	0
		db	0
data_138	dw	0
data_139	db	0
data_140	db	0
data_141	db	0FFh
		db	0
		db	0, 0, 0, 0
data_143	db	0
		db	0, 0, 0
data_144	db	0
data_145	dw	0
data_146	db	0
data_147	db	0
data_148	db	0
data_149	db	0
data_150	db	0
		db	'MM/DD/YY  HH:MMam '
data_151	db	20h
		db	24h
data_152	dw	0
data_153	dw	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_59		proc	near
		mov	ah,2Ch			; ','
		push	dx
		push	cx
		int	21h			; DOS Services  ah=function 2Ch
						;  get time, cx=hrs/min, dx=sec
		cmp	dh,data_150
		mov	data_148,ch
		mov	data_149,cl
		mov	data_150,dh
		pop	cx
		pop	dx
		jnz	loc_236			; Jump if not zero
		retn
loc_236:
		push	si
		push	di
		push	dx
		push	cx
		push	bx
		lea	di,cs:[2EE2h]		; Load effective addr
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	data_153,cx
		mov	data_152,dx
		mov	ah,2Ah
		int	21h			; DOS Services  ah=function 2Ah
						;  get date, cx=year, dh=month
						;   dl=day, al=day-of-week 0=SUN
		mov	data_145,cx
		mov	data_146,dh
		mov	data_147,dl
		mov	al,data_146
		call	sub_60
		xchg	ah,al
		mov	data_11,ax
		cmp	data_87,0
		je	loc_237			; Jump if equal
		mov	[di+3],ax
		jmp	short loc_238
loc_237:
		mov	[di],ax
loc_238:
		add	di,3
		mov	al,data_147
		call	sub_60
		xchg	ah,al
		mov	data_12,ax
		cmp	data_87,0
		je	loc_239			; Jump if equal
		mov	[di-3],ax
		jmp	short loc_240
loc_239:
		mov	[di],ax
loc_240:
		add	di,3
		mov	ax,data_145
		sub	ax,7BCh
		call	sub_60
		add	ah,8
		xchg	ah,al
		mov	data_10,ax
		mov	[di],ax
		add	di,4
		mov	al,data_148
		call	sub_60
		xchg	ah,al
		mov	data_13,ax
		cmp	data_87,0
		je	loc_241			; Jump if equal
		mov	word ptr [di+5],2020h
		jmp	short loc_245
loc_241:
		mov	al,data_148
		cmp	al,0Ch
		jb	loc_243			; Jump if below
		jz	loc_242			; Jump if zero
		sub	al,0Ch
loc_242:
		mov	byte ptr [di+5],70h	; 'p'
		jmp	short loc_244
loc_243:
		mov	byte ptr [di+5],61h	; 'a'
		cmp	al,0
		jne	loc_244			; Jump if not equal
		mov	al,0Ch
loc_244:
		call	sub_60
		xchg	ah,al
loc_245:
		mov	[di],ax
		add	di,3
		mov	al,data_149
		call	sub_60
		xchg	ah,al
		mov	data_14,ax
		mov	[di],ax
		cmp	data_144,0
		jne	loc_248			; Jump if not equal
		mov	ah,1
		mov	cx,201Fh
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
		mov	ah,2
		mov	dx,3Dh
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		cmp	data_140,0
		je	loc_246			; Jump if equal
		mov	data_151,40h		; '@'
		jmp	short loc_247
loc_246:
		mov	data_151,20h		; ' '
loc_247:
		lea	dx,cs:[2EE2h]		; Load effective addr
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,data_152
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,1
		xor	bh,bh			; Zero register
		mov	cx,data_153
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
loc_248:
		cmp	data_140,0
		je	loc_251			; Jump if equal
		lea	di,data_141		; Load effective addr
		lea	si,data_10		; Load effective addr
		mov	cx,0Ah
		cld				; Clear direction
		xchg	di,si
		repe	cmpsb			; Rep zf=1+cx >0 Cmp [si] to es:[di]
		ja	loc_251			; Jump if above
		call	sub_139
		mov	cx,8

locloop_249:
		push	cx
		call	sub_61
		xor	cx,cx			; Zero register

locloop_250:
		loop	locloop_250		; Loop if cx > 0

		pop	cx
		loop	locloop_249		; Loop if cx > 0

loc_251:
		pop	bx
		pop	cx
		pop	dx
		pop	di
		pop	si
		retn
sub_59		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_60		proc	near
		xor	ah,ah			; Zero register
loc_252:
		cmp	al,0Ah
		jb	loc_253			; Jump if below
		inc	ah
		sub	al,0Ah
		jmp	short loc_252
loc_253:
		or	ah,30h			; '0'
		or	al,30h			; '0'
		retn
sub_60		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_61		proc	near
		mov	ah,2Eh			; '.'
		mov	dl,7
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_61		endp

loc_254:
		push	ax
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		call	sub_94
		mov	ah,2Fh			; '/'
		lea	dx,cs:[5D7Ch]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	data_9,0FFh
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		call	sub_96
		mov	data_9,0
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		xor	ax,ax			; Zero register
		retn
loc_255:
		cmp	cs:data_140,0
		je	loc_256			; Jump if equal
		mov	cs:data_140,0
		jmp	short loc_257
loc_256:
		mov	cs:data_140,0FFh
		push	ax
		push	bx
		push	cx
		push	dx
		push	di
		push	si
		push	bp
		push	ds
		push	es
		push	cs
		push	cs
		pop	ds
		pop	es
		call	sub_139
		pop	es
		pop	ds
		pop	bp
		pop	si
		pop	di
		pop	dx
		pop	cx
		pop	bx
		pop	ax
loc_257:
		xor	ax,ax			; Zero register
		retn
			                        ;* No entry point to code
		cmp	cs:data_140,0
		jne	loc_256			; Jump if not equal
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_62		proc	near
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		retn
sub_62		endp

		db	 0Dh, 0Ah, 0Dh, 0Ah, 00h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_63		proc	near
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2Fh			; '/'
		lea	dx,cs:[30D1h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_63		endp

data_154	db	59h
data_155	db	4Eh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_64		proc	near
		cld				; Clear direction
		mov	al,2Fh			; '/'
		lea	di,data_27		; ('Double Space (Y/N):     ') Load ef
		mov	cx,32h
		repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
		jnz	loc_258			; Jump if not zero
		mov	al,[di-2]
		mov	data_154,al
		mov	al,[di]
		mov	data_155,al
loc_258:
		mov	dx,200h
		call	sub_62
		lea	dx,cs:[378h]		; Load effective addr
		call	sub_63
		lea	dx,cs:[39Ch]		; Load effective addr
		call	sub_63
		lea	dx,cs:[3C0h]		; Load effective addr
		call	sub_63
		lea	dx,cs:[3E4h]		; Load effective addr
		call	sub_63
		lea	dx,cs:[408h]		; Load effective addr
		call	sub_63
		lea	dx,cs:[42Ah]		; Load effective addr
		call	sub_63
		lea	dx,cs:[44Ch]		; Load effective addr
		call	sub_63
loc_259:
		mov	dx,220h
		call	sub_62
		lea	di,cs:[398h]		; Load effective addr
		call	sub_66
		jc	loc_259			; Jump if carry Set
		jnz	loc_261			; Jump if not zero
loc_260:
		jmp	loc_274
loc_261:
		mov	dx,420h
		call	sub_62
		lea	di,cs:[3BCh]		; Load effective addr
		call	sub_66
		jc	loc_259			; Jump if carry Set
		jz	loc_260			; Jump if zero
loc_262:
		mov	dx,620h
		call	sub_62
		lea	di,cs:[3E0h]		; Load effective addr
		call	sub_66
		jc	loc_261			; Jump if carry Set
		jz	loc_270			; Jump if zero
loc_263:
		mov	dx,820h
		call	sub_62
		lea	di,cs:[404h]		; Load effective addr
		call	sub_66
		jc	loc_262			; Jump if carry Set
		jz	loc_270			; Jump if zero
loc_264:
		mov	dx,0A20h
		call	sub_62
loc_265:
		call	sub_65
		cmp	al,0A0h
		je	loc_263			; Jump if equal
		cmp	al,0Dh
		je	loc_267			; Jump if equal
		cmp	al,0A1h
		je	loc_267			; Jump if equal
		and	al,5Fh			; '_'
		cmp	al,data_154
		je	loc_266			; Jump if equal
		cmp	al,data_155
		jne	loc_265			; Jump if not equal
loc_266:
		mov	data_28,al
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dl,8
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_265
loc_267:
		mov	dx,0C20h
		call	sub_62
loc_268:
		call	sub_65
		cmp	al,0A0h
		je	loc_264			; Jump if equal
		cmp	al,0A1h
		je	loc_271			; Jump if equal
		cmp	al,0Dh
		je	loc_271			; Jump if equal
		and	al,5Fh			; '_'
		cmp	al,data_154
		je	loc_269			; Jump if equal
		cmp	al,data_155
		jne	loc_268			; Jump if not equal
loc_269:
		mov	data_29,al
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dl,8
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_268
loc_270:
		jmp	short loc_274
		db	90h
loc_271:
		mov	dx,0E20h
		call	sub_62
loc_272:
		call	sub_65
		cmp	al,0A0h
		je	loc_267			; Jump if equal
		cmp	al,0Dh
		je	loc_274			; Jump if equal
		and	al,5Fh			; '_'
		cmp	al,data_154
		je	loc_273			; Jump if equal
		cmp	al,data_155
		jne	loc_272			; Jump if not equal
loc_273:
		mov	data_30,al
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dl,8
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_272
loc_274:
		call	sub_68
		retn
sub_64		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_65		proc	near
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		cmp	al,80h
		je	loc_275			; Jump if equal
		cmp	al,8Ch
		je	loc_275			; Jump if equal
		retn
loc_275:
		pop	ax
		jmp	short loc_274
sub_65		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_66		proc	near
loc_276:
		call	sub_67
		cmp	al,30h			; '0'
		jb	loc_282			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_282			; Jump if above
		mov	[di],al
loc_277:
		inc	di
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
loc_278:
		call	sub_67
		cmp	al,20h			; ' '
		je	loc_279			; Jump if equal
		cmp	al,30h			; '0'
		jb	loc_283			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_283			; Jump if above
loc_279:
		mov	[di],al
		inc	di
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
loc_280:
		call	sub_67
		cmp	al,20h			; ' '
		je	loc_281			; Jump if equal
		cmp	al,30h			; '0'
		jb	loc_285			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_280			; Jump if above
loc_281:
		mov	[di],al
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2Eh			; '.'
		mov	dl,8
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_280
loc_282:
		cmp	al,0A2h
		je	loc_287			; Jump if equal
		cmp	al,0Dh
		jne	loc_276			; Jump if not equal
		or	al,al			; Zero ?
		retn
loc_283:
		cmp	al,0A2h
		je	loc_288			; Jump if equal
		cmp	al,0Dh
		jne	loc_284			; Jump if not equal
		or	al,al			; Zero ?
		retn
loc_284:
		cmp	al,8
		jne	loc_278			; Jump if not equal
		dec	di
		mov	ah,2Eh			; '.'
		mov	dl,al
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_276
loc_285:
		cmp	al,0Dh
		jne	loc_286			; Jump if not equal
		or	al,al			; Zero ?
		retn
loc_286:
		cmp	al,8
		jne	loc_280			; Jump if not equal
		dec	di
		mov	ah,2Eh			; '.'
		mov	dl,al
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_278
loc_287:
		mov	al,[di]
		jmp	short loc_277
loc_288:
		mov	al,[di]
		jmp	short loc_279
sub_66		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_67		proc	near
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		or	ah,ah			; Zero ?
		jz	loc_ret_290		; Jump if zero
		cmp	al,0A0h
		je	loc_292			; Jump if equal
		cmp	al,0A1h
		jne	loc_289			; Jump if not equal
		mov	al,0Dh
loc_289:
		cmp	al,80h
		je	loc_291			; Jump if equal
		cmp	al,8Ch
		je	loc_291			; Jump if equal
		cmp	al,0A3h
		jne	loc_ret_290		; Jump if not equal
		mov	al,8

loc_ret_290:
		retn
loc_291:
		pop	ax
		xor	al,al			; Zero register
		retn
loc_292:
		pop	ax
		xor	ax,ax			; Zero register
		stc				; Set carry flag
		retn
sub_67		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_68		proc	near
		lea	si,ds:[398h]		; ('0') Load effective addr
		lea	di,cs:[46Eh]		; Load effective addr
		call	sub_69
		lea	si,data_23		; Load effective addr
		lea	di,cs:[46Fh]		; Load effective addr
		call	sub_69
		lea	si,data_25		; Load effective addr
		lea	di,cs:[470h]		; Load effective addr
		call	sub_69
		lea	si,data_26		; Load effective addr
		lea	di,cs:[471h]		; Load effective addr
		call	sub_69
		mov	al,data_29
		cmp	al,data_154
		jne	loc_293			; Jump if not equal
		mov	data_35,1
		jmp	short loc_294
		db	90h
loc_293:
		mov	data_35,0
loc_294:
		mov	al,0
		mov	ah,data_155
		cmp	ah,data_28
		je	loc_295			; Jump if equal
		mov	al,0FFh
loc_295:
		mov	data_36,al
		mov	al,0
		mov	ah,data_155
		cmp	ah,data_30
		je	loc_296			; Jump if equal
		mov	al,0FFh
loc_296:
		mov	data_37,al
		retn
sub_68		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_69		proc	near
		xor	ah,ah			; Zero register
		xor	cx,cx			; Zero register
		cmp	byte ptr [si+1],20h	; ' '
		je	loc_297			; Jump if equal
		cmp	byte ptr [si+2],20h	; ' '
		je	loc_298			; Jump if equal
		mov	cl,[si]
		and	cl,0Fh
		mov	al,64h			; 'd'
		call	sub_70
		mov	cl,[si+1]
		and	cl,0Fh
		mov	al,0Ah
		call	sub_70
		mov	al,[si+2]
		and	al,0Fh
		add	ah,al
		mov	[di],ah
		retn
loc_297:
		mov	ah,[si]
		and	ah,0Fh
		mov	[di],ah
		retn
loc_298:
		mov	cl,[si]
		and	cl,0Fh
		mov	al,0Ah
		call	sub_70
		mov	al,[si+1]
		and	al,0Fh
		add	ah,al
		mov	[di],ah
		retn
sub_69		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_70		proc	near
		jcxz	loc_ret_300		; Jump if cx=0

locloop_299:
		add	ah,al
		loop	locloop_299		; Loop if cx > 0


loc_ret_300:
		retn
sub_70		endp

data_156	db	0
		db	202 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_71		proc	near
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		push	dx
		mov	ah,2
		xor	bh,bh			; Zero register
		mov	dx,1700h
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		pop	dx
		push	ax
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		pop	ax
		cmp	al,0FFh
		je	loc_301			; Jump if equal
		mov	data_156,0FFh
		lea	di,cs:[3397h]		; Load effective addr
		lea	si,cs:[3438h]		; Load effective addr
		call	sub_95
		lea	dx,cs:[200h]		; Load effective addr
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,1700h
		call	sub_62
		mov	ah,2Fh			; '/'
		lea	dx,cs:[24Fh]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,data_159
		call	sub_62
		mov	ah,1
		mov	cx,data_190
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
		retn
loc_301:
		mov	data_156,0
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	data_159,dx
		mov	data_190,cx
		lea	si,cs:[3397h]		; Load effective addr
		lea	di,cs:[3438h]		; Load effective addr
		call	sub_97
		retn
sub_71		endp

		db	4002 dup (0)
data_159	dw	0
data_160	dw	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_72		proc	near
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	data_159,dx
		mov	data_160,cx
		xor	dx,dx			; Zero register
		call	sub_62
		mov	ah,24h
		int	0E0h			; ??INT Non-standard interrupt
		lea	di,cs:[34DBh]		; Load effective addr
		mov	cx,7D0h

locloop_302:
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		mov	[di],ax
		inc	di
		inc	di
		mov	al,20h			; ' '
		mov	ah,0Eh
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		loop	locloop_302		; Loop if cx > 0

		xor	dx,dx			; Zero register
		call	sub_62
		mov	ax,920h
		xor	bh,bh			; Zero register
		mov	bl,data_46
		mov	cx,7D0h
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	ah,25h
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_72		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_73		proc	near
		lea	si,cs:[34DBh]		; Load effective addr
		xor	dx,dx			; Zero register
		call	sub_62
		mov	ah,24h
		int	0E0h			; ??INT Non-standard interrupt
loc_303:
		mov	ax,[si]
		inc	si
		inc	si
		mov	bl,ah
		mov	ah,9
		xor	bh,bh			; Zero register
		mov	cx,1
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		inc	dl
		cmp	dl,50h			; 'P'
		jb	loc_304			; Jump if below
		xor	dl,dl			; Zero register
		inc	dh
		cmp	dh,19h
		je	loc_305			; Jump if equal
loc_304:
		call	sub_62
		jmp	short loc_303
loc_305:
		mov	dx,data_159
		call	sub_62
		mov	ah,1
		mov	cx,data_160
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
		retn
sub_73		endp

data_161	dw	0
loc_306:
		jmp	loc_315

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_74		proc	near
		mov	data_139,0
		xor	cx,cx			; Zero register
		mov	cl,data_7
		call	sub_75
		jcxz	loc_309			; Jump if cx=0

locloop_307:
		push	cx
loc_308:
		call	sub_76
		cmp	al,1Ah
		je	loc_306			; Jump if equal
		cmp	al,5Ch			; '\'
		jne	loc_308			; Jump if not equal
		pop	cx
		loop	locloop_307		; Loop if cx > 0

loc_309:
		mov	ah,2
		xor	bh,bh			; Zero register
		xor	dx,dx			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,9
		xor	bh,bh			; Zero register
		mov	al,20h			; ' '
		mov	cx,7D0h
		mov	bl,data_48
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
loc_310:
		call	sub_76
		cmp	al,5Ch			; '\'
		je	loc_312			; Jump if equal
		cmp	al,7Ch			; '|'
		je	loc_311			; Jump if equal
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short loc_310
loc_311:
		lea	dx,cs:[29Bh]		; Load effective addr
		mov	data_139,0FFh
		jmp	short loc_313
		db	90h
loc_312:
		mov	data_139,0
		lea	dx,cs:[2DAh]		; Load effective addr
loc_313:
		push	dx
		mov	ah,2
		xor	bh,bh			; Zero register
		mov	dx,1800h
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,2Fh			; '/'
		pop	dx
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		cmp	ax,0FF80h
		je	loc_314			; Jump if equal
		cmp	ax,0FF8Ch
		je	loc_314			; Jump if equal
		cmp	data_139,0
		jne	loc_309			; Jump if not equal
loc_314:
		mov	ah,3Eh			; '>'
		mov	bx,data_138
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		retn
sub_74		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_75		proc	near
		lea	dx,data_63		; Load effective addr
		mov	ax,3D00h
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		jc	loc_315			; Jump if carry Set
		mov	data_138,ax
		mov	data_161,2ECCh
		retn
loc_315:
		mov	dx,4602h
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		pop	ax
		retn
sub_75		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_76		proc	near
		mov	bx,data_161
		inc	bx
		cmp	bx,offset data_137
		ja	loc_316			; Jump if above
		mov	al,[bx]
		mov	data_161,bx
		retn
loc_316:
		mov	ah,3Fh			; '?'
		lea	dx,data_136		; Load effective addr
		mov	cx,0C8h
		mov	bx,data_138
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		jc	loc_317			; Jump if carry Set
		or	ax,ax			; Zero ?
		jz	loc_317			; Jump if zero
		mov	bx,offset data_136
		mov	al,[bx]
		mov	data_161,bx
		retn
loc_317:
		lea	dx,cs:[4602h]		; Load effective addr
		mov	ah,2Fh
		int	0E0h			; ??INT Non-standard interrupt
		mov	al,3
		retn
sub_76		endp

		db	0Ch, 'BAD HELP FILE !'
		db	8 dup (21h)
		db	24h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_77		proc	near
		call	sub_94
loc_318:
		mov	ah,2Fh			; '/'
		lea	dx,cs:[2F8h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,1700h
		call	sub_62
		mov	ah,2Fh			; '/'
		lea	dx,cs:[335h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		lea	di,data_163		; Load effective addr
		cld				; Clear direction
		xor	al,al			; Zero register
		mov	cx,19h
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		mov	byte ptr data_183,2Bh	; '+'
loc_319:
		call	sub_81
		call	sub_78
		call	sub_82
		jmp	short loc_319
sub_77		endp

		db	 58h,0E8h, 8Fh, 06h,0C3h
data_163	db	0
data_164	db	0
data_165	db	0
		db	18 dup (0)
data_166	db	0
data_167	db	0
		db	0, 0
data_168	db	0
		db	0
data_169	db	0
		db	8 dup (0)
data_170	db	0
data_171	db	0
		db	8 dup (0)
data_172	db	0
		db	0
data_173	db	0
data_174	db	0
data_175	db	0
		db	9 dup (0)
data_176	db	0
		db	8 dup (0)
data_177	db	0
		db	20 dup (0)
data_178	db	0
		db	34 dup (0)
data_179	db	0
		db	8 dup (0)
data_180	db	0
		db	37 dup (0)
		db	0FFh,0FFh,0FFh,0FFh,0FFh
data_181	db	0
		db	11 dup (0)
data_183	db	2Bh
		db	12 dup (2Ah)
		db	 24h, 20h
		db	11 dup (20h)
		db	24h
data_186	db	0
loc_320:
		adc	byte ptr [bx+si+46h],8Ch
		push	ax
		inc	si
		or	ax,4844h
		sub	bx,[bp+si]
		dec	ax
		sbb	word ptr [bp+si],2D48h
		push	ds
		dec	ax
;*		sbb	byte ptr ds:[2A48h],22h	; '"'
		db	 82h, 1Eh, 48h, 2Ah, 22h	;  Fixup - byte match
		dec	ax
		and	word ptr [bp+si],48h
		das				; Decimal adjust
		db	 26h, 48h, 84h, 26h, 48h, 2Eh
		db	 9Bh, 48h, 85h, 2Ah, 48h, 25h
		db	 2Ah, 48h, 86h, 10h, 48h, 87h
		db	 94h, 47h, 88h, 62h, 47h,0FFh
		db	 80h, 3Eh, 2Dh, 47h, 00h, 75h
		db	 22h,0C6h, 06h, 2Dh, 47h, 2Dh
		db	0B2h
		db	2Dh
loc_321:
		push	dx
		mov	ah,2
		xor	bh,bh			; Zero register
		mov	dx,1742h
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,2Eh			; '.'
		pop	dx
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2
		xor	bh,bh			; Zero register
		mov	dx,174Eh
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		jmp	short loc_322
			                        ;* No entry point to code
		nop
		mov	dl,20h			; ' '
		mov	data_186,0
		jmp	short loc_321

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_78		proc	near
		mov	data_186,0
		mov	dx,1742h
		call	sub_62
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4720h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		lea	di,data_181		; Load effective addr
		xor	al,al			; Zero register
		cld				; Clear direction
		mov	cx,0Bh
		rep	stosb			; Rep when cx >0 Store al to es:[di]
loc_322:
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		cmp	al,30h			; '0'
		jb	loc_329			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_329			; Jump if above
		call	sub_79
		jz	loc_323			; Jump if zero
		mov	cx,0Ah
		jmp	short loc_324
loc_323:
		mov	cx,0Bh
loc_324:
		lea	di,data_181		; Load effective addr

locloop_325:
		cmp	byte ptr [di],0
		je	loc_326			; Jump if equal
		inc	di
		loop	locloop_325		; Loop if cx > 0

		jmp	short loc_322
loc_326:
		mov	[di],al
		mov	dx,174Eh
loc_327:
		dec	dl
		dec	di
		cmp	byte ptr [di],0FFh
		jne	loc_327			; Jump if not equal
		inc	di
		call	sub_62
loc_328:
		mov	dl,[di]
		cmp	dl,0
		je	loc_322			; Jump if equal
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		inc	di
		jmp	short loc_328
loc_329:
		lea	bx,ds:[472Eh]		; Load effective addr
loc_330:
		cmp	byte ptr [bx],0FFh
		je	loc_322			; Jump if equal
		cmp	al,[bx]
		je	loc_331			; Jump if equal
		add	bx,3
		jmp	short loc_330
loc_331:
		mov	bx,[bx+1]
		jmp	bx			;*
			                        ;* No entry point to code
		mov	dx,1600h
		call	sub_62
		pop	ax
		jmp	loc_318
sub_78		endp

			                        ;* No entry point to code
		mov	al,2Bh			; '+'
		jmp	short loc_332
			                        ;* No entry point to code
		mov	al,2Dh			; '-'
		jmp	short loc_332
			                        ;* No entry point to code
		mov	al,2Ah			; '*'
		jmp	short loc_332
			                        ;* No entry point to code
		mov	al,2Fh			; '/'
		jmp	short loc_332
		db	0B0h, 25h
loc_332:
		mov	data_183,al
		push	ax
		mov	dx,1741h
		call	sub_62
		pop	dx
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,174Eh
		call	sub_62
		jmp	loc_322
		db	 8Dh, 3Eh, 6Eh, 46h,0B9h, 18h
		db	 00h,0FCh, 32h,0C0h,0F3h,0AAh
		db	0E8h, 5Ah, 00h, 74h, 1Fh
		db	 8Dh, 3Eh, 79h, 46h
		db	 8Dh, 36h, 06h, 47h
loc_333:
		cmp	byte ptr [si],0
		je	loc_334			; Jump if equal
		inc	si
		jmp	short loc_333
loc_334:
		dec	si
		mov	al,[si]
		cmp	al,0FFh
		je	loc_ret_335		; Jump if equal
		and	al,0Fh
		mov	[di],al
		dec	di
		jmp	short loc_334

loc_ret_335:
		retn
loc_336:
		lea	si,data_181		; Load effective addr
loc_337:
		cmp	byte ptr [si],2Eh	; '.'
		je	loc_338			; Jump if equal
		inc	si
		jmp	short loc_337
loc_338:
		push	si
		lea	di,data_171		; Load effective addr
loc_339:
		inc	si
		cmp	byte ptr [si],0
		je	loc_340			; Jump if equal
		mov	al,[si]
		and	al,0Fh
		mov	[di],al
		inc	di
		jmp	short loc_339
loc_340:
		pop	si
		lea	di,cs:[4679h]		; Load effective addr
		jmp	short loc_334
			                        ;* No entry point to code
		call	sub_79
		jz	loc_341			; Jump if zero
		mov	cx,0Ah
		lea	di,cs:[4706h]		; Load effective addr
		jmp	locloop_325
loc_341:
		jmp	loc_322

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_79		proc	near
		lea	si,data_181		; Load effective addr
		mov	cx,0Ah

locloop_342:
		cmp	byte ptr [si],2Eh	; '.'
		je	loc_ret_343		; Jump if equal
		inc	si
		loop	locloop_342		; Loop if cx > 0


loc_ret_343:
		retn
sub_79		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_80		proc	near
		lea	si,data_167		; Load effective addr
		mov	al,[si]
		cmp	al,5
		jb	loc_ret_345		; Jump if below
		mov	cx,14h

locloop_344:
		dec	si
		mov	al,[si]
		add	al,1
		aaa				; Ascii adjust
		mov	[si],al
		jnc	loc_ret_345		; Jump if carry=0
		loop	locloop_344		; Loop if cx > 0


loc_ret_345:
		retn
sub_80		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_81		proc	near
		cmp	data_164,0
		je	loc_346			; Jump if equal
		jmp	loc_393
loc_346:
		lea	di,cs:[4657h]		; Load effective addr
		call	sub_93
		jnz	loc_347			; Jump if not zero
		mov	data_163,0
loc_347:
		lea	si,cs:[4657h]		; Load effective addr
		mov	dx,1642h
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	dl,data_163
		or	dl,dl			; Zero ?
		jnz	loc_348			; Jump if not zero
		mov	dl,20h			; ' '
loc_348:
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	cx,0Bh
loc_349:
		mov	al,[si]
		inc	si
		dec	cx
		jcxz	loc_354			; Jump if cx=0
		or	al,al			; Zero ?
		jz	loc_349			; Jump if zero
		push	cx
		dec	si

locloop_350:
		mov	dl,[si]
		or	dl,30h			; '0'
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		inc	si
		loop	locloop_350		; Loop if cx > 0

		pop	cx
loc_351:
		mov	dl,2Eh			; '.'
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		mov	ax,0Ah
		sub	ax,cx
		mov	cx,ax
		jcxz	loc_353			; Jump if cx=0

locloop_352:
		mov	dl,[si]
		or	dl,30h			; '0'
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		inc	si
		loop	locloop_352		; Loop if cx > 0

loc_353:
		mov	dl,20h			; ' '
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		retn
loc_354:
		mov	ah,2Eh			; '.'
		mov	dl,30h			; '0'
		int	0E0h			; ??INT Non-standard interrupt
		dec	si
		jmp	short loc_351
sub_81		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_82		proc	near
		mov	al,data_183
		cmp	al,2Bh			; '+'
		jne	loc_355			; Jump if not equal
		call	sub_88
		retn
loc_355:
		cmp	al,2Dh			; '-'
		jne	loc_356			; Jump if not equal
		call	sub_89
		retn
loc_356:
		cmp	al,2Ah			; '*'
		jne	loc_357			; Jump if not equal
		call	sub_85
		retn
loc_357:
		cmp	al,2Fh			; '/'
		jne	loc_358			; Jump if not equal
		call	sub_92
		jz	loc_ret_359		; Jump if zero
		call	sub_83
		retn
loc_358:
		cmp	al,25h			; '%'
		jne	loc_ret_359		; Jump if not equal
		call	sub_91

loc_ret_359:
		retn
sub_82		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_83		proc	near
		cld				; Clear direction
		mov	cx,44h
		lea	di,data_174		; Load effective addr
		xor	al,al			; Zero register
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		lea	di,data_177		; Load effective addr
		lea	si,data_165		; Load effective addr
		mov	cx,14h
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		lea	di,data_179		; Load effective addr
		xor	al,al			; Zero register
		mov	cx,2Eh
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		lea	si,cs:[46D2h]		; Load effective addr
		lea	di,data_175		; Load effective addr
		mov	cx,1Fh

locloop_360:
		call	sub_84
		jnc	loc_362			; Jump if carry=0
loc_361:
		inc	di
		inc	si
		loop	locloop_360		; Loop if cx > 0

		lea	di,data_164		; Load effective addr
		lea	si,data_180		; Load effective addr
		mov	cx,16h
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		call	sub_80
		call	sub_87
		retn
loc_362:
		push	si
		push	di
		push	cx
		lea	si,cs:[4683h]		; Load effective addr
		add	di,13h
		call	sub_90
		pop	cx
		pop	di
		pop	si
		mov	al,[si]
		add	al,1
		aaa				; Ascii adjust
		mov	[si],al
		jnc	loc_363			; Jump if carry=0
		mov	al,[si-1]
		add	al,1
		aaa				; Ascii adjust
		mov	[si-1],al
		jnc	loc_363			; Jump if carry=0
		mov	al,[si-2]
		add	al,1
		aaa				; Ascii adjust
		mov	[si-2],al
		jnc	loc_363			; Jump if carry=0
		mov	al,[si-3]
		add	al,1
		aaa				; Ascii adjust
		mov	[si-3],al
		jnc	loc_363			; Jump if carry=0
		mov	al,[si+4]
		add	al,1
		aaa				; Ascii adjust
		mov	[si+4],al
		jnc	loc_363			; Jump if carry=0
		mov	al,[si-5]
		add	al,1
		aaa				; Ascii adjust
		mov	[si+5],al
		jnc	loc_363			; Jump if carry=0
		inc	byte ptr [si+6]
loc_363:
		call	sub_84
		jnc	loc_362			; Jump if carry=0
		jmp	short loc_361
sub_83		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_84		proc	near
		push	si
		push	di
		push	cx
		lea	si,data_169		; Load effective addr
		mov	cx,14h
		xchg	si,di
		repe	cmpsb			; Rep zf=1+cx >0 Cmp [si] to es:[di]
		pop	cx
		pop	di
		pop	si
		retn
sub_84		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_85		proc	near
loc_364:
		cld				; Clear direction
		lea	di,data_174		; Load effective addr
		mov	cx,3Ch
		xor	al,al			; Zero register
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		mov	cx,14h
		lea	di,data_178		; Load effective addr
		lea	si,data_172		; Load effective addr

locloop_365:
		push	si
		push	di
		push	cx
		call	sub_86
		pop	cx
		pop	di
		dec	di
		pop	si
		dec	si
		loop	locloop_365		; Loop if cx > 0

		lea	si,data_176		; Load effective addr
		lea	di,data_164		; Load effective addr
		mov	cx,16h
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		call	sub_80
		call	sub_87
		retn
sub_85		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_86		proc	near
		mov	bl,[si]
		cmp	bl,0
		je	loc_ret_368		; Jump if equal
loc_366:
		lea	si,data_166		; Load effective addr
		push	di
		mov	cx,14h
		clc				; Clear carry flag

locloop_367:
		mov	al,[di]
		adc	al,[si]
		aaa				; Ascii adjust
		mov	[di],al
		dec	di
		dec	si
		loop	locloop_367		; Loop if cx > 0

		mov	al,0
		rcl	al,1			; Rotate thru carry
		add	[di],al
		mov	al,bl
		dec	al
		das				; Decimal adjust
		mov	bl,al
		pop	di
		jnz	loc_366			; Jump if not zero

loc_ret_368:
		retn
sub_86		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_87		proc	near
		cmp	data_186,0
		je	loc_ret_370		; Jump if equal
		cmp	data_163,0
		jne	loc_369			; Jump if not equal
		mov	data_163,2Dh		; '-'
		jmp	short loc_ret_370
loc_369:
		mov	data_163,0

loc_ret_370:
		retn
sub_87		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_88		proc	near
		cmp	data_186,0
		je	loc_371			; Jump if equal
		cmp	data_163,0
		je	loc_375			; Jump if equal
		jmp	short loc_372
loc_371:
		cmp	data_163,0
		jne	loc_375			; Jump if not equal
loc_372:
		lea	si,data_172		; Load effective addr
		lea	di,data_166		; Load effective addr
		mov	cx,14h
		clc				; Clear carry flag

locloop_373:
		mov	al,[di]
		adc	al,[si]
		aaa				; Ascii adjust
		mov	[di],al
		dec	di
		dec	si
		loop	locloop_373		; Loop if cx > 0

		mov	al,0
		rcl	al,1			; Rotate thru carry
		or	[di],al
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_89:
		cmp	data_186,0
		je	loc_374			; Jump if equal
		cmp	data_163,0
		jne	loc_375			; Jump if not equal
		jmp	short loc_372
loc_374:
		cmp	data_163,0
		jne	loc_372			; Jump if not equal
loc_375:
		lea	di,data_165		; Load effective addr
		call	sub_84
		lea	si,data_172		; Load effective addr
		lea	di,data_166		; Load effective addr
		jc	loc_377			; Jump if carry Set

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_90:
		mov	cx,14h
		clc				; Clear carry flag

locloop_376:
		mov	al,[di]
		sbb	al,[si]
		aas				; Ascii adjust
		mov	[di],al
		dec	di
		dec	si
		loop	locloop_376		; Loop if cx > 0

		mov	al,0
		rcl	al,1			; Rotate thru carry
		or	[di],al
		retn
loc_377:
		mov	cx,14h
		clc				; Clear carry flag

locloop_378:
		mov	al,[si]
		sbb	al,[di]
		aas				; Ascii adjust
		mov	[di],al
		dec	di
		dec	si
		loop	locloop_378		; Loop if cx > 0

		cmp	data_163,0
		jne	loc_379			; Jump if not equal
		mov	data_163,2Dh		; '-'
		retn
loc_379:
		mov	data_163,0
		retn
sub_88		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_91		proc	near
		lea	si,data_172		; Load effective addr
		lea	di,data_173		; Load effective addr
		std				; Set direction flag
		mov	cx,18h
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		jmp	loc_364
sub_91		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_92		proc	near
		lea	di,data_168		; Load effective addr

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_93:
		mov	cx,16h
		cld				; Clear direction
		xor	al,al			; Zero register
		repe	scasb			; Rep zf=1+cx >0 Scan es:[di] for al
		retn
sub_92		endp

		db	202 dup (0)
data_189	db	0
data_190	dw	0
data_191	db	0

loc_ret_380:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_94		proc	near
		cmp	data_191,0
		jne	loc_ret_380		; Jump if not equal
		mov	data_191,0FFh
		lea	si,cs:[4C0Eh]		; Load effective addr
		lea	di,cs:[4B6Dh]		; Load effective addr

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_95:
		mov	data_189,3
		mov	byte ptr [si],0
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	data_159,dx
		mov	data_190,cx
		mov	dx,1600h
		xor	bh,bh			; Zero register
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	cx,0A0h

locloop_381:
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		xor	bh,bh			; Zero register
		cmp	ah,data_46
		je	loc_382			; Jump if equal
		inc	bh
		cmp	ah,data_47
		je	loc_382			; Jump if equal
		inc	bh
		cmp	ah,data_48
		je	loc_382			; Jump if equal
		inc	bh
loc_382:
		mov	bl,data_189
loc_383:
		or	bl,bl			; Zero ?
		jz	loc_384			; Jump if zero
		shl	bh,1			; Shift w/zeros fill
		shl	bh,1			; Shift w/zeros fill
		dec	bl
		jmp	short loc_383
loc_384:
		or	[si],bh
		mov	bh,data_189
		dec	bh
		cmp	bh,0FFh
		jne	loc_385			; Jump if not equal
		mov	bh,3
		inc	si
		mov	byte ptr [si],0
loc_385:
		mov	data_189,bh
		mov	[di],al
		inc	di
		mov	al,20h			; ' '
		mov	ah,0Eh
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		loop	locloop_381		; Loop if cx > 0

		mov	dx,1600h
		xor	bh,bh			; Zero register
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ax,920h
		xor	bh,bh			; Zero register
		mov	bl,data_47
		mov	cx,0A0h
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	ah,25h
		int	0E0h			; ??INT Non-standard interrupt
		retn
sub_94		endp


loc_ret_386:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_96		proc	near
		cmp	data_191,0FFh
		jne	loc_ret_386		; Jump if not equal
		mov	data_191,0
		lea	di,cs:[4C0Eh]		; Load effective addr
		mov	si,4B6Dh

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_97:
		mov	data_189,3
		mov	dx,1600h
		xor	bh,bh			; Zero register
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
loc_387:
		mov	bl,[di]
		mov	bh,data_189
		dec	data_189
		or	bh,bh			; Zero ?
		jnz	loc_388			; Jump if not zero
		mov	data_189,3
		inc	di
loc_388:
		or	bh,bh			; Zero ?
		jz	loc_389			; Jump if zero
		shr	bl,1			; Shift w/zeros fill
		shr	bl,1			; Shift w/zeros fill
		dec	bh
		jmp	short loc_388
loc_389:
		and	bl,3
		mov	ah,bl
		mov	bl,data_46
		or	ah,ah			; Zero ?
		jz	loc_390			; Jump if zero
		mov	bl,data_47
		dec	ah
		jz	loc_390			; Jump if zero
		mov	bl,data_48
		dec	ah
		jz	loc_390			; Jump if zero
		mov	bl,data_49
loc_390:
		mov	ah,9
		xor	bh,bh			; Zero register
		mov	cx,1
		mov	al,[si]
		inc	si
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	ah,3
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		inc	dl
		cmp	dl,50h			; 'P'
		jb	loc_391			; Jump if below
		xor	dl,dl			; Zero register
		inc	dh
		cmp	dh,18h
		je	loc_392			; Jump if equal
loc_391:
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		jmp	short loc_387
loc_392:
		mov	dx,data_159
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,1
		xor	bh,bh			; Zero register
		mov	cx,data_190
		int	10h			; Video display   ah=functn 01h
						;  set cursor mode in cx
		retn
sub_96		endp

loc_393:
		mov	dx,1642h
		call	sub_62
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4713h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	al,0
		cld				; Clear direction
		lea	di,data_163		; Load effective addr
		mov	cx,19h
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		retn
		db	12 dup (20h)
		db	11 dup (8)
		db	24h
data_194	db	0
		db	10 dup (0)
		db	8, ' ', 8, '$'
		db	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
		db	8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8
		db	8, 8, 8, 8, 8, 8, 8, 8, '        '
		db	'                        $'

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_98		proc	near
		cmp	data_144,0
		je	loc_394			; Jump if equal
		jmp	loc_ret_416
loc_394:
		push	ax
		push	bx
		push	cx
		push	dx
		push	ds
		push	bp
		push	cs
		pop	ds
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		push	dx
		mov	ah,6
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,10h
		int	0E0h			; ??INT Non-standard interrupt
		mov	bp,sp
loc_395:
		mov	dx,2Fh
		call	sub_62
		mov	ah,2Fh			; '/'
		lea	dx,cs:[89h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4D9Dh]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	cx,0Ah
		lea	bx,cs:[4DB5h]		; Load effective addr
		call	sub_101
		cmp	cx,0Ah
		jne	loc_396			; Jump if not equal
		jmp	short loc_401
		db	90h
loc_396:
		mov	cx,7BCh
		xor	dx,dx			; Zero register
		lea	bx,data_194		; Load effective addr
		call	sub_100
		mov	dh,al
		inc	bx
		call	sub_100
		mov	dl,al
		inc	bx
		cmp	word ptr [bx],3931h
		jne	loc_397			; Jump if not equal
		inc	bx
		inc	bx
loc_397:
		cmp	byte ptr [bx],38h	; '8'
		je	loc_399			; Jump if equal
		cmp	byte ptr [bx],39h	; '9'
		je	loc_398			; Jump if equal
		jmp	short loc_395
loc_398:
		add	cx,0Ah
loc_399:
		inc	bx
		mov	al,[bx]
		call	sub_99
		xor	ah,ah			; Zero register
		add	cx,ax
		cmp	data_87,0
		je	loc_400			; Jump if equal
		xchg	dl,dh
loc_400:
		mov	ah,2Bh
		int	21h			; DOS Services  ah=function 2Bh
						;  set date, cx=year, dx=mon/day
loc_401:
		mov	ah,2
		xor	bh,bh			; Zero register
		mov	dx,2Fh
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	ah,2Fh			; '/'
		lea	dx,cs:[9Dh]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4D9Dh]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	cx,7
		lea	bx,cs:[4DB5h]		; Load effective addr
		call	sub_101
		cmp	cx,7
		jne	loc_402			; Jump if not equal
		jmp	loc_415
loc_402:
		lea	bx,data_194		; Load effective addr
		xor	cx,cx			; Zero register
		xor	dx,dx			; Zero register
		mov	al,[bx]
		call	sub_99
		inc	bx
		cmp	al,3
		jb	loc_403			; Jump if below
		mov	ch,al
		jmp	short loc_407
loc_403:
		mov	ah,al
		mov	al,[bx]
		cmp	al,3Ah			; ':'
		jne	loc_404			; Jump if not equal
		mov	ch,ah
		jmp	short loc_407
loc_404:
		call	sub_99
loc_405:
		cmp	ah,0
		je	loc_406			; Jump if equal
		add	al,0Ah
		dec	ah
		jmp	short loc_405
loc_406:
		mov	ch,al
		inc	bx
loc_407:
		cmp	byte ptr [bx],3Ah	; ':'
		jne	loc_401			; Jump if not equal
		inc	bx
		mov	al,[bx]
		call	sub_99
		inc	bx
		mov	ah,al
		mov	al,[bx]
		cmp	al,30h			; '0'
		jb	loc_410			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_410			; Jump if above
		and	al,0Fh
loc_408:
		cmp	ah,0
		je	loc_409			; Jump if equal
		add	al,0Ah
		dec	ah
		jmp	short loc_408
loc_409:
		mov	cl,al
		inc	bx
		jmp	short loc_411
loc_410:
		mov	cl,ah
loc_411:
		cmp	byte ptr [bx],70h	; 'p'
		jne	loc_412			; Jump if not equal
		cmp	ch,0Ch
		je	loc_414			; Jump if equal
		add	ch,0Ch
		jmp	short loc_414
loc_412:
		cmp	byte ptr [bx],50h	; 'P'
		jne	loc_413			; Jump if not equal
		cmp	ch,0Ch
		je	loc_414			; Jump if equal
		add	ch,0Ch
		jmp	short loc_414
loc_413:
		cmp	ch,0Ch
		jne	loc_414			; Jump if not equal
		mov	ch,0
loc_414:
		mov	ah,2Dh
		int	21h			; DOS Services  ah=function 2Dh
						;  set time, cx=hrs/min, dx=sec
loc_415:
		mov	sp,bp
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4DC4h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,7
		int	0E0h			; ??INT Non-standard interrupt
		mov	ah,0Fh
		int	0E0h			; ??INT Non-standard interrupt
		pop	dx
		call	sub_62
		pop	bp
		pop	ds
		pop	dx
		pop	cx
		pop	bx
		pop	ax

loc_ret_416:
		retn
sub_98		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_99		proc	near
		cmp	al,30h			; '0'
		jb	loc_417			; Jump if below
		cmp	al,39h			; '9'
		ja	loc_417			; Jump if above
		and	al,0Fh
		retn
loc_417:
		mov	sp,bp
		jmp	loc_395
sub_99		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_100		proc	near
		mov	al,[bx]
		call	sub_99
		inc	bx
		cmp	al,3
		ja	loc_420			; Jump if above
		mov	ah,al
		mov	al,[bx]
		cmp	al,2Fh			; '/'
		jne	loc_418			; Jump if not equal
		mov	al,ah
		jmp	short loc_420
loc_418:
		call	sub_99
		inc	bx
loc_419:
		or	ah,ah			; Zero ?
		jz	loc_420			; Jump if zero
		add	al,0Ah
		dec	ah
		jmp	short loc_419
loc_420:
		cmp	byte ptr [bx],2Fh	; '/'
		jne	loc_421			; Jump if not equal
		retn
loc_421:
		mov	sp,bp
		jmp	loc_395
sub_100		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_101		proc	near

locloop_422:
		mov	ah,0
		int	0E0h			; ??INT Non-standard interrupt
		or	ah,ah			; Zero ?
		jnz	loc_423			; Jump if not zero
		cmp	al,20h			; ' '
		jb	loc_425			; Jump if below
		mov	[bx],al
		inc	bx
		mov	ah,2Eh			; '.'
		mov	dl,al
		int	0E0h			; ??INT Non-standard interrupt
		loop	locloop_422		; Loop if cx > 0

		retn
loc_423:
		cmp	al,0A3h
		je	loc_427			; Jump if equal
		cmp	al,8Ch
		je	loc_424			; Jump if equal
		cmp	al,80h
		jne	locloop_422		; Jump if not equal
loc_424:
		jmpn	loc_415
loc_425:
		cmp	al,0Dh
		jne	loc_426			; Jump if not equal
		mov	byte ptr [bx],0
		retn
loc_426:
		cmp	al,8
		jne	locloop_422		; Jump if not equal
loc_427:
		cmp	cx,0Ah
		je	locloop_422		; Jump if equal
		inc	cx
		dec	bx
		mov	ah,2Fh			; '/'
		lea	dx,cs:[4DC0h]		; Load effective addr
		int	0E0h			; ??INT Non-standard interrupt
		jmp	short locloop_422
sub_101		endp

data_197	db	0
data_198	db	0
data_199	db	0
data_200	db	0
data_201	dw	0
data_202	db	0
		db	44 dup (0)
data_203	db	5

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_102		proc	near
		push	si
		mov	cx,0
loc_428:
		cmp	byte ptr [si],0
		je	loc_429			; Jump if equal
		inc	cx
		inc	si
		jmp	short loc_428
loc_429:
		pop	si
		cmp	cx,0Ah
		jne	loc_430			; Jump if not equal
		mov	al,byte ptr cs:data_115+1Eh	; (' ')
		cmp	al,[si]
		jne	loc_430			; Jump if not equal
		mov	al,byte ptr cs:[1819h]
		cmp	al,[si+1]
		jne	loc_430			; Jump if not equal
		mov	al,byte ptr cs:[181Ah]
		cmp	al,[si+2]
		jne	loc_430			; Jump if not equal
		add	si,3
loc_430:
		push	si
		push	ds
		mov	ah,18h
		int	0E0h			; ??INT Non-standard interrupt
		lea	di,data_202		; Load effective addr
		push	cs
		pop	es
		cld				; Clear direction
loc_431:
		cmp	byte ptr [si],0
		je	loc_432			; Jump if equal
		movsb				; Mov [si] to es:[di]
		jmp	short loc_431
loc_432:
		pop	ds
		pop	si
loc_433:
		cmp	byte ptr [si],0
		je	loc_434			; Jump if equal
		movsb				; Mov [si] to es:[di]
		jmp	short loc_433
loc_434:
		movsb				; Mov [si] to es:[di]
		lea	si,data_202		; Load effective addr
		push	cs
		pop	ds

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_103:
		mov	ah,12h
		mov	cs:data_197,0FFh
		call	sub_106
		retn
sub_102		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_104		proc	near
		mov	cs:data_197,0
		mov	ah,14h
		call	sub_106
		retn
sub_104		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_105		proc	near
		mov	cs:data_197,0
		mov	ah,16h
		call	sub_106
		retn
sub_105		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_106		proc	near
		push	ax
		push	cs
		pop	es
		lea	di,data_204		; Load effective addr
		cld				; Clear direction
		mov	cx,1Eh
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		pop	ax
		int	0E0h			; ??INT Non-standard interrupt
		lea	di,data_205		; Load effective addr
		cld				; Clear direction
		mov	cx,0C8h
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		push	cs
		pop	ds
		call	sub_118
		lea	si,data_207		; Load effective addr
		lea	di,data_41+0Dh		; ('8') Load effective addr
		mov	cx,5
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	al,byte ptr ds:[4A5h]
		and	al,0Fh
		inc	al
		mov	data_198,al
		mov	data_201,sp
loc_435:
		call	sub_120
		call	sub_116
		lea	si,data_206		; Load effective addr
		call	sub_108
loc_436:
		cmp	data_197,0
		push	ax
		jz	loc_437			; Jump if zero
		mov	byte ptr data_214,0FFh
		call	sub_119
		call	sub_117
		pop	ax
		retn
loc_437:
		mov	byte ptr data_214,0
		call	sub_119
		pop	ax
		retn
sub_106		endp

data_204	dw	15 dup (0)
data_205	db	0
data_206	db	0
		db	199 dup (0)
data_207	db	38h
		db	 2Ch, 4Eh, 2Ch, 31h, 2Ch
data_208	db	0
		db	74 dup (0)
data_210	db	0
		db	74 dup (0)
data_211	db	0
		db	45 dup (0)
data_212	dw	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_107		proc	near
		db	0C0h, 9Dh, 54h,0C1h,0F3h, 52h
		db	0C2h,0A5h, 53h,0C3h,0F5h, 53h
		db	0C4h, 55h, 54h,0C5h, 2Fh, 54h
		db	0C6h, 26h, 54h, 00h, 00h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_108:
loc_438:
		mov	al,[si]
		cmp	al,1Ah
		je	loc_442			; Jump if equal
		lea	bx,ds:[52AEh]		; Load effective addr
loc_439:
		cmp	al,[bx]
		je	loc_440			; Jump if equal
		add	bx,3
		cmp	byte ptr [bx],0
		jne	loc_439			; Jump if not equal
		jmp	short loc_442
		db	90h
loc_440:
		mov	bx,[bx+1]
		call	bx			;*
loc_441:
		inc	si
		cmp	byte ptr [si],0Dh
		jne	loc_441			; Jump if not equal
		inc	si
		inc	si
		cmp	byte ptr [si],1Ah
		jne	loc_438			; Jump if not equal
loc_442:
		xor	ax,ax			; Zero register
		retn
sub_107		endp

			                        ;* No entry point to code
		mov	data_199,5Ah		; 'Z'
		mov	bx,si
		inc	bx
		lea	di,data_208		; Load effective addr
loc_443:
		mov	al,[bx]
		cmp	al,0Dh
		jbe	loc_445			; Jump if below or =
		cmp	al,5Eh			; '^'
		jne	loc_444			; Jump if not equal
		inc	bx
		mov	al,[bx]
		cmp	al,5Eh			; '^'
		je	loc_444			; Jump if equal
		and	al,1Fh
loc_444:
		mov	[di],al
		inc	di
		inc	bx
		jmp	short loc_443
loc_445:
		mov	byte ptr [di],0FFh
		lea	di,data_208		; Load effective addr
		xor	cx,cx			; Zero register
loc_446:
		cmp	byte ptr [di],0FFh
		je	loc_447			; Jump if equal
		inc	cx
		inc	di
		jmp	short loc_446
loc_447:
		mov	data_212,cx
		jcxz	loc_ret_449		; Jump if cx=0
		lea	di,cs:[5233h]		; Load effective addr
loc_448:
		call	sub_110
		call	sub_115
		mov	ah,1Bh
		int	0E0h			; ??INT Non-standard interrupt
		or	ah,ah			; Zero ?
		jz	loc_448			; Jump if zero
		and	al,7Fh
		mov	[di],al
		inc	di
		mov	byte ptr [di],0FFh
		call	sub_109
		jmp	short loc_448

loc_ret_449:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_109		proc	near
		mov	cx,di
		sub	cx,5233h
		cmp	cx,data_212
		je	loc_450			; Jump if equal
		retn
loc_450:
		push	si
		push	di
		lea	si,data_208		; Load effective addr
		lea	di,data_210		; Load effective addr
		cld				; Clear direction
		mov	cx,data_212
		repe	cmpsb			; Rep zf=1+cx >0 Cmp [si] to es:[di]
		jz	loc_453			; Jump if zero
		lea	di,data_210		; Load effective addr
loc_451:
		mov	al,[di+1]
		mov	[di],al
		cmp	al,0FFh
		je	loc_452			; Jump if equal
		inc	di
		jmp	short loc_451
loc_452:
		pop	di
		dec	di
		pop	si
		retn
loc_453:
		pop	di
		pop	si
		pop	ax
		retn
sub_109		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_110		proc	near
		dec	data_200
		jnz	loc_ret_454		; Jump if not zero
		dec	data_199
		jnz	loc_ret_454		; Jump if not zero
		mov	sp,data_201
		dec	data_198
		jz	loc_455			; Jump if zero
		jmp	loc_435

loc_ret_454:
		retn
loc_455:
		jmp	loc_436
sub_110		endp

		db	 8Bh,0DEh, 43h
loc_456:
		mov	dl,[bx]
		cmp	dl,20h			; ' '
		jb	loc_ret_459		; Jump if below
		cmp	dl,5Eh			; '^'
		je	loc_458			; Jump if equal
loc_457:
		call	sub_114
		call	sub_111
		jc	loc_ret_459		; Jump if carry Set
		inc	bx
		jmp	short loc_456
loc_458:
		inc	bx
		mov	dl,[bx]
		cmp	dl,5Eh			; '^'
		je	loc_457			; Jump if equal
		and	dl,1Fh
		jmp	short loc_457

loc_ret_459:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_111		proc	near
		mov	data_199,5Ah		; 'Z'
		push	dx
loc_460:
		call	sub_110
		mov	ah,1
		int	0E0h			; ??INT Non-standard interrupt
		cmp	al,80h
		je	loc_461			; Jump if equal
		pop	ax
		push	ax
		mov	ah,1Fh
		int	0E0h			; ??INT Non-standard interrupt
		or	ah,ah			; Zero ?
		jnz	loc_460			; Jump if not zero
		pop	ax
		clc				; Clear carry flag
		retn
loc_461:
		mov	sp,data_201
		mov	ax,0FFFFh
		jmp	loc_436
sub_111		endp

			                        ;* No entry point to code
		mov	bl,[si+1]
		and	bl,0Fh
		jnz	loc_462			; Jump if not zero
		mov	bl,0Ah
loc_462:
		call	sub_112
		dec	bl
		jnz	loc_462			; Jump if not zero
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_112		proc	near
		mov	cx,0Ah

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_113:

locloop_463:
		dec	ax
		jnz	locloop_463		; Jump if not zero
		loop	locloop_463		; Loop if cx > 0

		retn
sub_112		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_114		proc	near
		push	ax
		push	cx
		xor	cx,cx			; Zero register
		mov	cl,data_203
		jcxz	loc_466			; Jump if cx=0

locloop_464:
		push	cx
		mov	cx,3A98h

locloop_465:
		loop	locloop_465		; Loop if cx > 0

		pop	cx
		loop	locloop_464		; Loop if cx > 0

loc_466:
		pop	cx
		pop	ax
		retn
sub_114		endp

			                        ;* No entry point to code
		mov	al,[si+1]
		and	al,0Fh
		mov	data_203,al
		retn
		db	0C6h, 06h,0E8h, 4Fh, 5Ah
loc_467:
		call	sub_110
		call	sub_115
		mov	ah,3
		xor	dx,dx			; Zero register
		int	14h			; RS-232   dx=com1, ah=func 03h
						;  get status al=modem, ah=line
		and	al,80h
		jz	loc_467			; Jump if zero
		mov	cx,3
		call	sub_113
		mov	ah,3
		xor	dx,dx			; Zero register
		int	14h			; RS-232   dx=com1, ah=func 03h
						;  get status al=modem, ah=line
		and	al,80h
		jz	loc_467			; Jump if zero
		retn
		db	0C6h, 06h,0E8h, 4Fh, 5Ah
loc_468:
		call	sub_110
		call	sub_115
		mov	ah,3
		xor	dx,dx			; Zero register
		int	14h			; RS-232   dx=com1, ah=func 03h
						;  get status al=modem, ah=line
		and	al,80h
		jnz	loc_468			; Jump if not zero
		mov	cx,1
		call	sub_113
		mov	ah,3
		xor	dx,dx			; Zero register
		int	14h			; RS-232   dx=com1, ah=func 03h
						;  get status al=modem, ah=line
		and	al,80h
		jnz	loc_468			; Jump if not zero
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_115		proc	near
		mov	ah,1
		int	0E0h			; ??INT Non-standard interrupt
		cmp	ax,0FF80h
		jne	loc_ret_469		; Jump if not equal
		mov	sp,data_201
		mov	ax,0FFFFh
		jmp	loc_436

loc_ret_469:
		retn
sub_115		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_116		proc	near
		mov	al,0Bh
		mov	dx,3FCh
		out	dx,al			; port 3FCh, RS232-1 modem ctrl
		retn
sub_116		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_117		proc	near
		mov	al,8
		mov	dx,3FCh
		out	dx,al			; port 3FCh, RS232-1 modem ctrl
		retn
sub_117		endp

		db	 8Dh, 3Eh,0FBh, 50h
loc_470:
		mov	dl,[di]
		cmp	dl,0
		je	loc_ret_471		; Jump if equal
		call	sub_114
		call	sub_111
		jc	loc_ret_471		; Jump if carry Set
		inc	di
		jmp	short loc_470

loc_ret_471:
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_118		proc	near
		push	si
		push	di
		mov	di,offset data_211
		mov	si,offset data_41	; ('STATUS: N,30,8,N,1,ON ,O')
		mov	cx,20h
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		pop	di
		pop	si
		retn
sub_118		endp

data_214	db	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_119		proc	near
		push	si
		push	di
		mov	di,offset data_41	; ('STATUS: N,30,8,N,1,ON ,O')
		mov	si,offset data_211
		mov	cx,20h
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		cmp	data_214,0
		jne	loc_472			; Jump if not equal
		call	sub_120
loc_472:
		pop	di
		pop	si
		retn
sub_119		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_120		proc	near
		xor	dh,dh			; Zero register
		mov	di,offset data_41	; ('STATUS: N,30,8,N,1,ON ,O')
		cmp	byte ptr [di+0Ah],36h	; '6'
		jne	loc_473			; Jump if not equal
		or	dh,60h			; '`'
		jmp	short loc_479
loc_473:
		jc	loc_474			; Jump if carry Set
		or	dh,0E0h
		jmp	short loc_479
loc_474:
		cmp	byte ptr [di+0Ah],33h	; '3'
		jne	loc_475			; Jump if not equal
		or	dh,40h			; '@'
		jmp	short loc_479
loc_475:
		jc	loc_476			; Jump if carry Set
		or	dh,0C0h
		jmp	short loc_479
loc_476:
		cmp	byte ptr [di+0Bh],34h	; '4'
		jne	loc_477			; Jump if not equal
		or	dh,0A0h
		jmp	short loc_479
loc_477:
		jc	loc_478			; Jump if carry Set
		or	dh,20h			; ' '
		jmp	short loc_479
loc_478:
		cmp	byte ptr [di+0Bh],32h	; '2'
		jne	loc_479			; Jump if not equal
		or	dh,80h
loc_479:
		cmp	byte ptr [di+0Fh],4Eh	; 'N'
		je	loc_481			; Jump if equal
		jc	loc_480			; Jump if carry Set
		or	dh,8
		jmp	short loc_481
loc_480:
		or	dh,18h
loc_481:
		cmp	byte ptr [di+11h],32h	; '2'
		jne	loc_482			; Jump if not equal
		or	dh,4
loc_482:
		cmp	byte ptr [di+0Dh],37h	; '7'
		jne	loc_483			; Jump if not equal
		or	dh,2
		jmp	short loc_484
loc_483:
		or	dh,3
loc_484:
		xor	ax,ax			; Zero register
		xchg	dh,al
		xor	dx,dx			; Zero register
		int	14h			; RS-232   dx=com1, ah=func 00h
						;  reset port, al=init parameter
		mov	dx,3FBh
		in	al,dx			; port 3FBh, RS232-1 line cntrl
		and	al,7Fh
		out	dx,al			; port 3FBh, RS232-1 line cntrl
		mov	dx,3F9h
		mov	al,1
		out	dx,al			; port 3F9h, RS232-1 int enable
		mov	dx,3FCh
		mov	al,0Bh
		out	dx,al			; port 3FCh, RS232-1 modem ctrl
		mov	dx,3F8h
		in	al,dx			; port 3F8h, RS232-1 recv buffr
		mov	dx,3FAh
		in	al,dx			; port 3FAh, RS232-1 int identy
		retn
sub_120		endp

data_215	db	0
data_216	db	0

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_121		proc	near
		cmp	al,0
		jne	loc_485			; Jump if not equal
		mov	data_215,0
		xor	ax,ax			; Zero register
		retn
loc_485:
		push	cx
		push	dx
		push	si
		push	bp
		mov	bp,sp
		mov	dl,al
		cmp	dl,1Ah
		je	loc_486			; Jump if equal
		cmp	dl,0Ch
		jne	loc_487			; Jump if not equal
		xor	ax,ax			; Zero register
		jmp	loc_497
loc_486:
		xor	ax,ax			; Zero register
		jmp	loc_496
loc_487:
		cmp	dl,0Dh
		je	loc_488			; Jump if equal
		cmp	dl,20h			; ' '
		jb	loc_494			; Jump if below
		mov	cl,data_215
		cmp	cl,data_32
		jb	loc_490			; Jump if below
loc_488:
		mov	cx,1
		cmp	data_36,0
		je	loc_489			; Jump if equal
		inc	cx
		inc	data_216
loc_489:
		inc	data_216
		mov	data_215,0
		call	sub_124
loc_490:
		mov	cl,data_216
		cmp	cl,data_34
		jb	loc_492			; Jump if below
		mov	data_216,0
		mov	cl,data_33
		sub	cl,data_34
		jle	loc_491			; Jump if < or =
		mov	ch,0
		call	sub_124
loc_491:
		cmp	data_35,0
		je	loc_492			; Jump if equal
		lea	si,cs:[0B1h]		; Load effective addr
		call	sub_123
loc_492:
		cmp	dl,0Dh
		je	loc_495			; Jump if equal
		cmp	data_215,0
		jne	loc_494			; Jump if not equal
		mov	cl,data_31
		cmp	cl,0
		je	loc_494			; Jump if equal
		mov	ch,0

locloop_493:
		mov	al,20h			; ' '
		call	sub_125
		loop	locloop_493		; Loop if cx > 0

loc_494:
		mov	al,dl
		inc	data_215
		call	sub_125
loc_495:
		xor	ax,ax			; Zero register
		jmp	short loc_498
		db	90h
loc_496:
		cmp	data_37,0
		jne	loc_497			; Jump if not equal
		mov	data_216,0
		mov	data_215,0
		jmp	short loc_498
		db	90h
loc_497:
		push	ax
		mov	cl,data_33
		sub	cl,data_216
		mov	ch,0
		call	sub_124
		mov	data_216,0
		mov	data_215,0
		pop	ax
		cmp	dl,0Ch
		jne	loc_498			; Jump if not equal
		cmp	data_35,0
		je	loc_498			; Jump if equal
		lea	si,cs:[0B1h]		; Load effective addr
		call	sub_123
loc_498:
		mov	sp,bp
		pop	bp
		pop	si
		pop	dx
		pop	cx
		or	ax,ax			; Zero ?
		retn
sub_121		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_122		proc	near
		lea	si,cs:[0E4h]		; Load effective addr

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_123:
		push	dx
		call	sub_130
		mov	dl,0
		mov	dh,18h
		call	sub_128
		call	sub_127
loc_499:
		call	sub_6
		cmp	ax,0Dh
		je	loc_500			; Jump if equal
		cmp	ax,0FF80h
		jne	loc_499			; Jump if not equal
loc_500:
		push	ax
		mov	al,18h
		call	sub_126
		pop	ax
		call	sub_131
		cmp	ax,0FF80h
		jne	loc_501			; Jump if not equal
		mov	data_216,0
		mov	data_215,0
		jmp	short loc_498
loc_501:
		pop	dx
		retn
sub_122		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_124		proc	near
		push	dx
		jcxz	loc_503			; Jump if cx=0
		mov	al,20h			; ' '
		call	sub_125
		mov	al,0Dh
		call	sub_125

locloop_502:
		mov	al,0Ah
		call	sub_125
		loop	locloop_502		; Loop if cx > 0

		call	sub_5
		cmp	ax,0FF80h
		jne	loc_503			; Jump if not equal
		pop	dx
		mov	dx,0
		jmp	loc_496
loc_503:
		pop	dx
		retn
sub_124		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_125		proc	near
		push	cx
		push	dx
		mov	dx,0
loc_504:
		mov	ah,0
		int	17h			; Printer  dx=prn1, ah=func 00h
						;  print char al, get status ah
		and	ah,29h			; ')'
		jz	loc_505			; Jump if zero
		push	ax
		call	sub_122
		pop	ax
		jmp	short loc_504
loc_505:
		pop	dx
		pop	cx
		retn
sub_125		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_126		proc	near
		mov	dh,al
		mov	dl,0
		mov	ah,2
		mov	bh,0
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	cx,50h
		mov	al,20h			; ' '
		mov	ah,0Ah
		int	10h			; Video display   ah=functn 0Ah
						;  set char al at present curs
						;   cx=# of chars to replicate
		retn
sub_126		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_127		proc	near
		push	si
		cld				; Clear direction
loc_506:
		lodsb				; String [si] to al
		or	al,al			; Zero ?
		jz	loc_507			; Jump if zero
		call	sub_129
		jmp	short loc_506
loc_507:
		pop	si
		retn
sub_127		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_128		proc	near
		push	ax
		push	bx
		mov	bh,0
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		pop	bx
		pop	ax
		retn
sub_128		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_129		proc	near
		push	ax
		push	dx
		mov	dl,al
		mov	ah,2Eh
		int	0E0h			; ??INT Non-standard interrupt
		pop	dx
		pop	ax
		retn
sub_129		endp

data_217	db	162 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_130		proc	near
		push	ax
		push	bx
		push	cx
		push	dx
		mov	ah,3
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	word ptr data_217,dx
		mov	dx,1800h
		mov	cx,50h
		lea	di,cs:[571Dh]		; Load effective addr

locloop_508:
		call	sub_128
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		mov	[di],ax
		inc	di
		inc	di
		inc	dx
		loop	locloop_508		; Loop if cx > 0

		mov	dx,1800h
		call	sub_128
		mov	ah,8
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 08h
						;  get char al & attrib ah @curs
		mov	bl,ah
		mov	cx,50h
		mov	al,20h			; ' '
		mov	ah,9
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		retn
sub_130		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_131		proc	near
		push	ax
		push	bx
		push	cx
		push	dx
		mov	dx,1800h
		call	sub_128
		lea	si,cs:[571Dh]		; Load effective addr
		mov	cx,50h
		mov	ah,23h
		int	0E0h			; ??INT Non-standard interrupt
		mov	dx,word ptr data_217
		mov	ah,2
		xor	bh,bh			; Zero register
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		pop	dx
		pop	cx
		pop	bx
		pop	ax
		retn
sub_131		endp

		db	11 dup (0)
data_219	dw	0
data_220	dw	0			; segment storage

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_132		proc	near
		push	ax
		push	bx
		push	dx
		push	ds
		push	es
		push	cs
		pop	ds
		mov	ah,35h			; '5'
		mov	al,24h			; '$'
		int	21h			; DOS Services  ah=function 35h
						;  get intrpt vector al in es:bx
		mov	data_219,bx
		mov	data_220,es
		mov	ah,25h			; '%'
		mov	al,24h			; '$'
		lea	dx,int_24h_entry	; Load effective addr
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	es
		pop	ds
		pop	dx
		pop	bx
		pop	ax
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_133:
		push	ax
		push	dx
		push	ds
		push	cs
		pop	ds
		mov	ah,25h			; '%'
		mov	al,24h			; '$'
		mov	dx,data_219
		mov	ds,data_220
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	ds
		pop	dx
		pop	ax
		retn
data_221	dw	0
data_222	db	7
		db	'(A)bort, (R)etry, or (I)gnore?'
		db	 00h, 00h, 00h, 00h, 00h, 20h
		db	 00h
sub_132		endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_24h_entry	proc	far
		push	bx
		push	cx
		push	dx
		push	di
		push	es
		push	ds
		mov	ax,cs
		mov	ds,ax
		mov	bh,0
		mov	ah,3
		int	10h			; Video display   ah=functn 03h
						;  get cursor loc in dx, mode cx
		mov	data_221,dx
		mov	bh,0
		mov	dx,1800h
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	bh,0
		mov	cx,50h
		mov	al,20h			; ' '
		mov	bl,data_46
		mov	ah,9
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	di,offset data_222
loc_509:
		mov	al,[di]
		inc	di
		cmp	al,0
		je	loc_510			; Jump if equal
		mov	ah,0Eh
		int	10h			; Video display   ah=functn 0Eh
						;  write char al, teletype mode
		jmp	short loc_509
loc_510:
		mov	ah,0
		int	16h			; Keyboard i/o  ah=function 00h
						;  get keybd char in al, ah=scan
		mov	ah,0
		cmp	al,49h			; 'I'
		je	loc_513			; Jump if equal
		cmp	al,69h			; 'i'
		je	loc_513			; Jump if equal
		cmp	al,52h			; 'R'
		je	loc_512			; Jump if equal
		cmp	al,72h			; 'r'
		je	loc_512			; Jump if equal
		cmp	al,61h			; 'a'
		je	loc_511			; Jump if equal
		cmp	al,41h			; 'A'
		jne	loc_510			; Jump if not equal
loc_511:
		inc	ah
loc_512:
		inc	ah
loc_513:
		mov	al,ah
		push	ax
		mov	bh,0
		mov	dx,1800h
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		mov	bh,0
		mov	cx,50h
		mov	al,20h			; ' '
		mov	bl,data_46
		mov	ah,9
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		mov	dx,data_221
		mov	bh,0
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		pop	ax
		pop	ds
		pop	es
		pop	di
		pop	dx
		pop	cx
		pop	bx
		iret				; Interrupt return
int_24h_entry	endp

data_223	dw	0
data_224	dw	0			; segment storage

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_134		proc	near
		push	ax
		push	bx
		push	dx
		push	ds
		push	es
		push	cs
		pop	ds
		mov	ah,35h			; '5'
		mov	al,0E0h
		int	21h			; DOS Services  ah=function 35h
						;  get intrpt vector al in es:bx
		mov	data_223,bx
		mov	data_224,es
		push	cs
		pop	es
		mov	ah,25h			; '%'
		mov	al,0E0h
		lea	dx,int_E0h_entry	; Load effective addr
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	es
		pop	ds
		pop	dx
		pop	bx
		pop	ax
		retn
sub_134		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_135		proc	near
		push	ax
		push	dx
		push	ds
		push	cs
		pop	ds
		mov	ah,25h			; '%'
		mov	al,0E0h
		mov	dx,data_223
		mov	ds,data_224
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	ds
		pop	dx
		pop	ax
		retn
sub_135		endp

data_225	dw	0
data_226	dw	0			; segment storage

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_136		proc	near
		push	ax
		push	bx
		push	dx
		push	ds
		push	es
		push	cs
		pop	ds
		mov	ah,35h			; '5'
		mov	al,23h			; '#'
		int	21h			; DOS Services  ah=function 35h
						;  get intrpt vector al in es:bx
		mov	data_225,bx
		mov	data_226,es
		push	cs
		pop	es
		mov	ah,25h			; '%'
		mov	al,23h			; '#'
		lea	dx,int_23h_entry	; Load effective addr
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	es
		pop	ds
		pop	dx
		pop	bx
		pop	ax
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_137:
		push	ax
		push	dx
		push	ds
		push	cs
		pop	ds
		mov	ah,25h			; '%'
		mov	al,23h			; '#'
		mov	dx,data_225
		mov	ds,data_226
		int	21h			; DOS Services  ah=function 25h
						;  set intrpt vector al to ds:dx
		pop	ds
		pop	dx
		pop	ax
		retn

sub_136		endp


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       External Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€

int_23h_entry	proc	far
		iret				; Interrupt return
int_23h_entry	endp

		db	8 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_138		proc	near
		mov	ax,59BEh
		mov	data_255,ax
		mov	ax,64h
		mov	data_256,ax
		retn
sub_138		endp

		db	0C3h
		db	800 dup (0)
data_229	db	'A    ', 9, '        ', 9, '    ', 9
		db	'    ', 9, '                     '
		db	'                       ', 9, 0Dh
		db	0, 0, 0
data_232	db	0Ah
data_233	db	0
		db	0Dh
data_234	db	0
data_235	db	20h
data_236	db	'                                '
		db	'                                '
		db	'                                '
		db	'                                '
		db	'                                '
		db	'                                '
		db	'                                '
		db	'               $'
		db	0
		db	'....', 0
		db	'alarm.arm'
		db	0
data_241	db	0
		db	73 dup (0)
		db	'HBCDAE', 9, 0Dh

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_139		proc	near
		cld				; Clear direction
		mov	data_267,1
		mov	si,5E23h
		mov	di,offset data_241
		call	sub_4
		mov	dx,5E2Dh
		call	sub_140
		jz	loc_514			; Jump if zero
		retn
loc_514:
		mov	byte ptr ds:[5E1Dh],0
		mov	si,data_267
		mov	cl,3
		mov	bx,5CDEh
		mov	dx,5D2Ah
		mov	al,4
		call	far ptr sub_146
		jz	loc_515			; Jump if zero
		mov	cx,50h
		mov	si,offset data_235
		mov	di,offset data_236+9Fh	; ('                        ')
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	data_141,0F0h
		jmp	short loc_523
loc_515:
		mov	cx,6
		mov	si,offset 5CE6h		; ('                        ')
		mov	di,offset data_141
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	cx,6
		mov	si,offset 5CE6h		; ('                        ')
		mov	di,offset data_10

locloop_516:
		mov	al,[si]
		cmp	[di],al
		ja	loc_521			; Jump if above
		cmp	[di],al
		jb	loc_517			; Jump if below
		inc	si
		inc	di
		loop	locloop_516		; Loop if cx > 0

		mov	byte ptr ds:[5E1Dh],1
loc_517:
		mov	cx,4
		mov	si,offset data_229+1	; (' ')
		mov	di,offset 5E1Eh
		repe	cmpsb			; Rep zf=1+cx >0 Cmp [si] to es:[di]
		jcxz	loc_518			; Jump if cx=0
		jmp	short loc_519
		db	90h
loc_518:
		inc	data_267
		jmp	short loc_514
loc_519:
		cmp	byte ptr ds:[5E1Dh],1
		je	loc_520			; Jump if equal
		mov	data_234,1
		jmp	short loc_522
loc_520:
		call	sub_142
		cmp	data_234,0
		jne	loc_522			; Jump if not equal
loc_521:
		mov	si,5CDFh
		mov	di,5D7Ch
		call	sub_143
		push	data_267
		mov	cx,1
		mov	al,6
		call	far ptr sub_146
		pop	data_267
		jmp	loc_514
loc_522:
		mov	si,5CDFh
		mov	di,5DCCh
		call	sub_143
loc_523:
		call	sub_141
		retn
sub_139		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_140		proc	near
		mov	al,0
		mov	bx,5E77h
		call	far ptr sub_146
		retn
sub_140		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_141		proc	near
		mov	al,10h
		call	far ptr sub_146
		retn
sub_141		endp

			                        ;* No entry point to code
		xor	ah,ah			; Zero register
		div	data_232		; al,ah rem = ax/data
		add	ah,30h			; '0'
		add	al,30h			; '0'
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_142		proc	near
		mov	data_234,0
		mov	cx,4
		mov	si,offset data_229+1	; (' ')
		mov	di,offset data_143
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	si,offset data_13
		mov	di,offset data_229+1	; (' ')
		mov	cx,4

locloop_524:
		mov	al,[si]
		cmp	[di],al
		jb	loc_ret_526		; Jump if below
		cmp	[di],al
		ja	loc_525			; Jump if above
		inc	si
		inc	di
		loop	locloop_524		; Loop if cx > 0

		retn
loc_525:
		mov	data_234,1

loc_ret_526:
		retn
sub_142		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_143		proc	near
		inc	di
		inc	di
		call	sub_144
		inc	di
		push	di
		add	di,6
		mov	cx,4
		inc	si
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		pop	di
		cmp	data_87,0
		je	loc_527			; Jump if equal
		add	di,3
loc_527:
		mov	cx,2
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	byte ptr [di],2Fh	; '/'
		inc	di
		cmp	data_87,0
		je	loc_528			; Jump if equal
		sub	di,6
loc_528:
		mov	cx,2
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	byte ptr [di],2Fh	; '/'
		inc	si
		add	di,6
		cmp	data_87,0
		je	loc_529			; Jump if equal
		add	di,3
loc_529:
		call	sub_144
		inc	di
		inc	si
		call	sub_144
		inc	di
		inc	si
		mov	cx,2Ch
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		retn
sub_143		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_144		proc	near
		mov	data_233,61h		; 'a'
		cmp	byte ptr [si],2Eh	; '.'
		jne	loc_530			; Jump if not equal
		mov	byte ptr [di],30h	; '0'
		mov	byte ptr [di+1],30h	; '0'
		add	di,2
		mov	byte ptr [di],3Ah	; ':'
		inc	di
		mov	byte ptr [di],30h	; '0'
		mov	byte ptr [di+1],30h	; '0'
		add	di,2
		add	si,4
		jmp	short loc_538
		db	90h
loc_530:
		cmp	data_87,0
		jne	loc_536			; Jump if not equal
		cmp	byte ptr [si],30h	; '0'
		je	loc_535			; Jump if equal
		cmp	byte ptr [si],32h	; '2'
		je	loc_531			; Jump if equal
		cmp	byte ptr [si+1],32h	; '2'
		jb	loc_536			; Jump if below
		cmp	byte ptr [si+1],32h	; '2'
		ja	loc_532			; Jump if above
		mov	data_233,70h		; 'p'
		jmp	short loc_536
loc_531:
		mov	data_233,70h		; 'p'
		cmp	byte ptr [si+1],32h	; '2'
		jb	loc_533			; Jump if below
loc_532:
		mov	data_233,70h		; 'p'
		mov	al,[si]
		dec	al
		mov	[si],al
		mov	al,[si+1]
		dec	al
		dec	al
		mov	[si+1],al
		jmp	short loc_536
loc_533:
		mov	byte ptr [si],30h	; '0'
		cmp	byte ptr [si+1],30h	; '0'
		je	loc_534			; Jump if equal
		mov	byte ptr [si+1],39h	; '9'
		jmp	short loc_536
loc_534:
		mov	byte ptr [si+1],38h	; '8'
loc_535:
		cmp	byte ptr [si+1],30h	; '0'
		jne	loc_536			; Jump if not equal
		mov	byte ptr [di],31h	; '1'
		mov	byte ptr [di+1],32h	; '2'
		add	di,2
		add	si,2
		jmp	short loc_537
		db	90h
loc_536:
		mov	cx,2
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
loc_537:
		mov	byte ptr [di],3Ah	; ':'
		inc	di
		mov	cx,2
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
loc_538:
		cmp	data_87,0
		jne	loc_539			; Jump if not equal
		mov	al,data_233
		mov	[di],al
loc_539:
		inc	di
		retn
sub_144		endp

		db	0C3h
		db	7 dup (0)

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_145		proc	far
		push	ax
		mov	ax,6
		cmp	ax,data_254
		je	loc_541			; Jump if equal
		mov	ax,cs
		mov	ds,ax
		mov	ah,40h			; '@'
		mov	dx,offset data_243	; ('***Filer:Segment Allocat')
		mov	cx,24h
		mov	bx,0
		int	21h			; DOS Services  ah=function 40h
						;  write file  bx=file handle
						;   cx=bytes from ds:dx buffer
		mov	ah,4Ch
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
loc_540:
		jmp	short loc_540
data_243	db	'***Filer:Segment Allocation Cras'
		db	'h***'
loc_541:
		pop	ax
		cmp	al,0
		jl	loc_542			; Jump if <
		cmp	al,14h
		jg	loc_542			; Jump if >
		mov	ah,0
		mov	di,ax
		and	al,1
		jnz	loc_542			; Jump if not zero
		call	word ptr cs:data_244[di]	;*10 entries
		jmp	short loc_543
		db	90h
loc_542:
		mov	al,64h			; 'd'
loc_543:
		cmp	al,0
		retf				; Return far
sub_145		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_146		proc	far
		push	bx
		push	cx
		push	dx
		push	bp
		push	si
		push	di
		call	far ptr sub_145
		pop	di
		pop	si
		pop	bp
		pop	dx
		pop	cx
		pop	bx
		retf				; Return far
sub_146		endp

data_244	dw	offset sub_152		; Data table (indexed access)
data_245	dw	offset sub_147
data_246	dw	offset sub_149
data_247	dw	offset sub_148
data_248	dw	offset sub_147
data_249	dw	offset sub_147
data_250	dw	offset sub_147
data_251	dw	offset sub_147
data_252	dw	offset sub_158
data_253	dw	offset sub_147

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_147		proc	near
		mov	ax,64h
		retn
sub_147		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_148		proc	near
		mov	data_287,bx
		mov	ax,data_267
		cmp	ax,0
		jg	loc_544			; Jump if >
		mov	ax,67h
		or	ax,ax			; Zero ?
		retn
loc_544:
		mov	bx,data_267
		add	bx,bx
		add	bx,bx
		mov	si,data_255
		mov	cx,[bx+si]
		mov	dx,[bx+si+2]
		mov	data_284,cx
		mov	data_285,dx
		mov	bx,47h
		mov	ax,0
		mov	cx,data_262
		mov	dx,data_263
		add	dx,bx
		adc	cx,ax
		mov	data_262,cx
		mov	data_263,dx
		mov	cx,data_260
		mov	dx,data_261
		sub	dx,bx
		sbb	cx,ax
		mov	data_260,cx
		mov	data_261,dx
		mov	cx,data_284
		mov	dx,data_285
		mov	bx,6699h
		mov	ax,1
		call	sub_156
		jz	loc_545			; Jump if zero
		jmp	loc_576
loc_545:
		mov	data_282,0
		mov	data_283,0
		mov	bx,data_267
		add	bx,bx
		add	bx,bx
		mov	cx,data_264
		add	cx,cx
		add	cx,cx
loc_546:
		mov	si,data_255
		mov	ax,[bx+si+4]
		mov	[bx+si],ax
		inc	bx
		inc	bx
		cmp	bx,cx
		jl	loc_546			; Jump if <
		dec	data_264
		mov	ax,0FFFFh
		mov	data_267,ax
		jmp	loc_582

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_149:
		mov	data_277,bx
		mov	data_278,dx
		cmp	cl,0
		jne	loc_547			; Jump if not equal
		mov	ax,1
		mov	data_267,ax
		mov	data_279,ax
		jmp	short loc_551
		db	90h
loc_547:
		cmp	cl,1
		jne	loc_549			; Jump if not equal
		mov	ax,data_267
		cmp	ax,0
		jg	loc_548			; Jump if >
		mov	ax,67h
		or	ax,ax			; Zero ?
		retn
loc_548:
		mov	ax,1
		mov	data_279,ax
		inc	data_267
		jmp	short loc_551
		db	90h
loc_549:
		cmp	cl,3
		jne	loc_550			; Jump if not equal
		mov	data_279,1
		mov	data_267,si
		jmp	short loc_551
		db	90h
loc_550:
		mov	ax,69h
		or	ax,ax			; Zero ?
		retn
loc_551:
		mov	bx,data_267
		cmp	bx,1
		jge	loc_552			; Jump if > or =
		jmp	short loc_555
		db	90h
loc_552:
		cmp	bx,data_264
		jle	loc_553			; Jump if < or =
		jmp	short loc_555
		db	90h
loc_553:
		mov	dx,data_277
		call	sub_150
		jz	loc_554			; Jump if zero
		jmp	loc_576
loc_554:
		jmp	loc_575
			                        ;* No entry point to code
		mov	ax,data_267
		add	ax,data_279
		mov	data_267,ax
		jmp	short loc_551
loc_555:
		mov	ax,65h
		or	ax,ax			; Zero ?
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_150:
		mov	ax,data_267
		cmp	ax,0
		jg	loc_556			; Jump if >
		mov	ax,67h
		or	ax,ax			; Zero ?
		retn
loc_556:
		mov	bx,data_267
		call	sub_151
		jz	loc_557			; Jump if zero
		jmp	loc_576
loc_557:
		jmp	loc_575

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_151:
		mov	data_276,dx
		add	bx,bx
		add	bx,bx
		push	si
		mov	si,data_255
		mov	cx,[bx+si]
		mov	dx,[bx+si+2]
		pop	si
		mov	bx,data_266
		mov	al,0
		mov	ah,42h
		int	21h			; DOS Services  ah=function 42h
						;  move file ptr, bx=file handle
						;   al=method, cx,dx=offset
		jnc	loc_558			; Jump if carry=0
		jmp	loc_576
loc_558:
		mov	dx,data_276
		mov	cx,1
		mov	bx,data_266
		mov	ah,3Fh
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		jnc	loc_559			; Jump if carry=0
		jmp	loc_576
loc_559:
		mov	bx,data_276
		mov	al,[bx]
		inc	bx
		mov	data_276,bx
		cmp	al,0Dh
		jne	loc_558			; Jump if not equal
		jmp	loc_575

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_152:
		mov	data_259,bx
		mov	al,2
		mov	ah,3Dh
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		jnc	loc_560			; Jump if carry=0
		jmp	loc_576
loc_560:
		mov	data_266,ax
		call	sub_138
		mov	cx,0
		mov	dx,0
		mov	bx,3
		call	sub_153
		jz	loc_561			; Jump if zero
		jmp	loc_576
loc_561:
		mov	data_260,cx
		mov	data_261,dx
		mov	cx,0
		mov	dx,6
		mov	bx,3
		call	sub_153
		jz	loc_562			; Jump if zero
		jmp	loc_576
loc_562:
		mov	data_262,cx
		mov	data_263,dx
		mov	cx,0
		mov	dx,0Ch
		mov	bx,2
		call	sub_153
		jz	loc_563			; Jump if zero
		jmp	loc_576
loc_563:
		mov	data_264,dx
		mov	cx,0
		mov	dx,10h
		mov	bx,2
		call	sub_153
		jz	loc_564			; Jump if zero
		jmp	loc_576
loc_564:
		mov	data_265,dx
		mov	cx,0
		mov	dx,14h
		mov	bx,2
		call	sub_153
		jz	loc_565			; Jump if zero
		jmp	loc_576
loc_565:
		mov	data_258,dx
		call	sub_162
		jz	loc_566			; Jump if zero
		jmp	loc_576
loc_566:
		call	sub_160
		mov	data_272,ax
		mov	data_273,bx
		mov	ax,0
		mov	data_271,ax
loc_567:
		mov	ax,data_271
		mul	data_254		; dx:ax = data * ax
		mov	cx,dx
		mov	dx,ax
		mov	ax,data_272
		mov	bx,data_273
		add	dx,bx
		adc	cx,ax
		mov	bx,3
		call	sub_153
		mov	bx,data_271
		shl	bx,1			; Shift w/zeros fill
		shl	bx,1			; Shift w/zeros fill
		mov	si,data_255
		mov	[bx+si],cx
		mov	[bx+si+2],dx
		mov	bx,data_271
		inc	data_271
		cmp	bx,data_264
		jle	loc_567			; Jump if < or =
		mov	si,data_255
		mov	cx,[si]
		mov	dx,[si+2]
		mov	si,data_259
		mov	di,data_258
		call	sub_155
		jz	loc_568			; Jump if zero
		jmpn	loc_576
loc_568:
		jmp	short loc_575
		db	90h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_153:
		mov	si,6687h
		mov	di,bx
		add	di,di
		mov	data_281,bx
		call	sub_155
		jz	loc_569			; Jump if zero
		jmp	short loc_576
		db	90h
loc_569:
		mov	bx,data_281
		mov	si,6687h
		call	sub_154
		jz	loc_570			; Jump if zero
		jmp	short loc_576
		nop
loc_570:
		jmp	short loc_575
		db	90h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_154:
		add	bx,bx
		mov	cx,0
		mov	dx,cx
		mov	ah,0
loc_571:
		mov	al,[si]
		sub	al,30h			; '0'
		jl	loc_572			; Jump if <
		cmp	al,0Fh
		jg	loc_572			; Jump if >
		shl	dx,1			; Shift w/zeros fill
		rcl	cx,1			; Rotate thru carry
		shl	dx,1			; Shift w/zeros fill
		rcl	cx,1			; Rotate thru carry
		shl	dx,1			; Shift w/zeros fill
		rcl	cx,1			; Rotate thru carry
		shl	dx,1			; Shift w/zeros fill
		rcl	cx,1			; Rotate thru carry
		add	dx,ax
		inc	si
		dec	bx
		jnz	loc_571			; Jump if not zero
		jmp	short loc_575
		db	90h
loc_572:
		mov	ax,68h
		or	ax,ax			; Zero ?
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_155:
		mov	al,0
		mov	bx,data_266
		mov	ah,42h
		int	21h			; DOS Services  ah=function 42h
						;  move file ptr, bx=file handle
						;   al=method, cx,dx=offset
		jnc	loc_573			; Jump if carry=0
		jmp	short loc_576
		db	90h
loc_573:
		mov	bx,data_266
		mov	dx,si
		mov	cx,di
		mov	ah,3Fh
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		jnc	loc_574			; Jump if carry=0
		jmp	short loc_576
		nop
loc_574:
		jmp	short loc_575
		db	90h
loc_575:
		xor	ax,ax			; Zero register
loc_576:
		or	ax,ax			; Zero ?
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_156:
		mov	data_268,bx
		mov	data_269,ax
		mov	al,0
		mov	bx,data_266
		mov	ah,42h
		int	21h			; DOS Services  ah=function 42h
						;  move file ptr, bx=file handle
						;   al=method, cx,dx=offset
		jnc	loc_577			; Jump if carry=0
		jmp	short loc_576
loc_577:
		mov	dx,data_268
		mov	cx,data_269
		mov	bx,data_266
		mov	ah,40h
		int	21h			; DOS Services  ah=function 40h
						;  write file  bx=file handle
						;   cx=bytes from ds:dx buffer
		jnc	loc_578			; Jump if carry=0
		jmp	short loc_576
loc_578:
		jmp	short loc_575

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_157:
		mov	bx,0
		mov	ax,0Dh
loc_579:
		inc	bx
		cmp	al,[si]
		je	loc_ret_580		; Jump if equal
		inc	si
		jmp	short loc_579

loc_ret_580:
		retn

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_158:
		mov	ax,0FFFFh
		mov	data_267,ax
		call	sub_159
		mov	bx,data_266
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		jnc	loc_581			; Jump if carry=0
		jmp	short loc_576
loc_581:
		jmp	short loc_575

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_159:
loc_582:
		mov	ax,data_260
		mov	bx,data_261
		mov	cx,data_262
		mov	dx,data_263
		add	bx,dx
		adc	ax,cx
		cmp	bl,0
		je	loc_584			; Jump if equal
		mov	ax,bx
		mov	bx,offset data_18+8Ah	; ('o retry or BREAK to canc')
		and	ax,0FFh
		sub	bx,ax
		mov	data_270,bx
		mov	al,44h			; 'D'
		mov	data_288,al
		mov	al,0Dh
		mov	bx,data_270
		dec	bx
		mov	data_288[bx],al
		mov	si,offset data_6
		mov	al,20h			; ' '
loc_583:
		mov	data_288[si],al
		inc	si
		cmp	si,bx
		jl	loc_583			; Jump if <
		mov	ax,data_260
		mov	bx,data_261
		mov	cx,data_262
		mov	dx,data_263
		add	dx,bx
		adc	cx,ax
		mov	bx,66A4h
		mov	ax,data_270
		call	sub_156
		jz	loc_584			; Jump if zero
		jmp	loc_576
loc_584:
		mov	bx,data_260
		mov	cx,data_261
		mov	ax,3
		mov	si,0
		mov	di,0
		call	sub_161
		jz	loc_585			; Jump if zero
		jmp	loc_576
loc_585:
		mov	bx,data_262
		mov	cx,data_263
		mov	ax,3
		mov	si,0
		mov	di,6
		call	sub_161
		jz	loc_586			; Jump if zero
		jmp	loc_576
loc_586:
		mov	bx,0
		mov	cx,data_264
		mov	ax,2
		mov	si,0
		mov	di,0Ch
		call	sub_161
		jz	loc_587			; Jump if zero
		jmp	loc_576
loc_587:
		mov	bx,0
		mov	cx,data_265
		mov	ax,2
		mov	si,0
		mov	di,10h
		call	sub_161
		jz	loc_588			; Jump if zero
		jmp	loc_576
loc_588:
		mov	si,data_259
		call	sub_157
		mov	cx,bx
		mov	bx,0
		mov	si,0
		mov	di,14h
		mov	al,2
		call	sub_161
		jz	loc_589			; Jump if zero
		jmp	loc_576
loc_589:
		call	sub_160
		mov	data_272,ax
		mov	data_273,bx
		mov	bx,offset data_5
loc_590:
		cmp	bx,data_264
		jle	loc_591			; Jump if < or =
		jmp	loc_575
loc_591:
		mov	data_271,bx
		shl	bx,1			; Shift w/zeros fill
		shl	bx,1			; Shift w/zeros fill
		mov	si,data_255
		mov	ax,[bx+si]
		mov	cx,[bx+si+2]
		mov	data_274,ax
		mov	data_275,cx
		mov	ax,data_271
		mul	data_254		; dx:ax = data * ax
		mov	bx,data_272
		mov	cx,data_273
		add	ax,cx
		adc	dx,bx
		mov	si,dx
		mov	di,ax
		mov	bx,data_274
		mov	cx,data_275
		mov	al,3
		call	sub_161
		jz	loc_592			; Jump if zero
		jmp	loc_576
loc_592:
		mov	bx,data_271
		inc	bx
		jmp	short loc_590
sub_148		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_160		proc	near
		mov	ax,data_260
		mov	bx,data_261
		mov	cx,data_262
		mov	dx,data_263
		add	bx,dx
		adc	ax,cx
		cmp	bl,0
		je	loc_ret_593		; Jump if equal
		mov	cx,0
		mov	dx,100h
		add	bx,dx
		adc	ax,cx
		mov	bl,0

loc_ret_593:
		retn
sub_160		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_161		proc	near
		push	si
		mov	si,offset data_5
loc_594:
		mov	ah,cl
		and	ah,0Fh
		add	ah,30h			; '0'
		neg	si
		mov	data_280[si],ah
		neg	si
		sar	bx,1			; Shift w/sign fill
		rcr	cx,1			; Rotate thru carry
		sar	bx,1			; Shift w/sign fill
		rcr	cx,1			; Rotate thru carry
		sar	bx,1			; Shift w/sign fill
		rcr	cx,1			; Rotate thru carry
		sar	bx,1			; Shift w/sign fill
		rcr	cx,1			; Rotate thru carry
		inc	si
		cmp	si,8
		jl	loc_594			; Jump if <
		pop	si
		mov	bx,6687h
		mov	ah,0
		sub	bx,ax
		sub	bx,ax
		mov	cx,si
		mov	dx,di
		add	ax,ax
		call	sub_156
		retn
sub_161		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_162		proc	near
		mov	ax,data_264
		inc	ax
		cmp	ax,data_256
		jge	loc_595			; Jump if > or =
		jmp	loc_575
loc_595:
		mov	ax,6Ah
		jmp	short loc_ret_593
sub_162		endp

data_254	dw	6
data_255	dw	0
data_256	dw	0
		db	0, 0
data_258	dw	0
data_259	dw	0
data_260	dw	0
data_261	dw	0
		db	0, 0, 0, 0
data_262	dw	0
data_263	dw	0
		db	0, 0, 0, 0
data_264	dw	0
data_265	dw	0
data_266	dw	0
data_267	dw	0
data_268	dw	0
data_269	dw	0
data_270	dw	0
data_271	dw	0
data_272	dw	0
data_273	dw	0
		db	0, 0, 0, 0
data_274	dw	0
data_275	dw	0
		db	0, 0, 0, 0
data_276	dw	0
data_277	dw	0
data_278	dw	0
data_279	dw	0
		db	0, 0, 0, 0, 0, 0
		db	0
data_280	db	0			; Data table (indexed access)
		db	8 dup (0)
data_281	dw	0
data_282	dw	0
data_283	dw	0
		db	 00h, 00h, 00h, 00h, 44h
data_284	dw	0
data_285	dw	0
		db	0, 0, 0, 0
data_287	dw	0
data_288	db	0			; Data table (indexed access)
		db	267 dup (0)

seg_b		ends



;------------------------------------------------------------  seg_c   ----

seg_c		segment	byte public
		assume cs:seg_c  , ds:seg_c , ss:stack_seg_a

		db	 74h, 68h, 65h, 20h, 65h, 6Eh
		db	 64h, 00h

seg_c		ends



		end	start
