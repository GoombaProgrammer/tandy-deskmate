
PAGE  59,132

; Simple Tandy Deskmate disassembly: MENU

target		EQU   'M5'                      ; Target assembler: MASM-5.0

include  srmacros.inc


; The following equates show data references outside the range of the program.

data_1e		equ	1B0h			;*
data_2e		equ	1C8h			;*
data_3e		equ	1CAh			;*
data_4e		equ	1CCh			;*
data_5e		equ	1D2h			;*
data_6e		equ	1D4h			;*
data_7e		equ	1D6h			;*
data_8e		equ	1D8h			;*
data_9e		equ	1DAh			;*
data_10e	equ	1DCh			;*
data_11e	equ	1DEh			;*
data_12e	equ	1E0h			;*
data_13e	equ	1E2h			;*
data_14e	equ	34Ch			;*
data_15e	equ	374h			;*
data_16e	equ	388h			;*
data_17e	equ	39Ch			;*
data_18e	equ	3C4h			;*
data_19e	equ	433h			;*
data_20e	equ	434h			;*
data_21e	equ	436h			;*
data_22e	equ	438h			;*
data_23e	equ	43Ah			;*
data_24e	equ	45Fh			;*
data_25e	equ	461h			;*
data_26e	equ	463h			;*
data_27e	equ	465h			;*
data_28e	equ	46Bh			;*
data_29e	equ	46Dh			;*
data_30e	equ	473h			;*
data_31e	equ	5683h			;*
data_78e	equ	5629h			;*
data_79e	equ	562Bh			;*
data_80e	equ	5631h			;*
data_81e	equ	5633h			;*
data_82e	equ	5635h			;*
data_83e	equ	5637h			;*
data_84e	equ	563Ah			;*
data_85e	equ	563Ch			;*
data_86e	equ	5683h			;*
data_131e	equ	7FFFh			;*
data_132e	equ	93FFh			;*
data_133e	equ	0ACFFh			;*
data_134e	equ	0E802h			;*
data_135e	equ	0EE5Ch			;*
data_136e	equ	0EE5Eh			;*
data_137e	equ	0EE60h			;*
data_138e	equ	0F8FFh			;*
data_139e	equ	0FF58h			;*
data_140e	equ	0FF5Bh			;*

;------------------------------------------------------------  seg_a   ----

seg_a		segment	byte public
		assume cs:seg_a  , ds:seg_a , ss:stack_seg_b


;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
;
;                       Program	Entry Point
;
;€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


TWMENU		proc	far

start:
		jmp	loc_301

TWMENU		endp

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_1		proc	near

LOCAL_15	=	-1Eh			; bp+0FFE2h
LOCAL_14	=	-1Ch			; bp+0FFE4h
LOCAL_13	=	-1Ah			; bp+0FFE6h
LOCAL_12	=	-18h			; bp+0FFE8h
LOCAL_11	=	-16h			; bp+0FFEAh
LOCAL_10	=	-14h			; bp+0FFECh
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,11A4h
		mov	ax,500h
		int	0E0h			; ??INT Non-standard interrupt
		mov	ax,5604h
		push	ax			; PARAMETER_1
		call	sub_112
		add	sp,2
		mov	word ptr [bp+LOCAL_3],0
		assume	ds:stack_seg_b
		push	data_124		; PARAMETER_4
		push	data_123		; PARAMETER_3
		push	data_122		; PARAMETER_2
		push	data_121		; PARAMETER_1
		call	sub_111
		add	sp,8
		mov	byte ptr data_112,0FFh
		mov	ax,32h
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
		mov	al,ah
		cmp	al,3
		jne	loc_1			; Jump if not equal
		mov	byte ptr data_112,7Fh
loc_1:
		mov	ax,46Fh
		push	ax			; PARAMETER_1
		call	sub_109
		add	sp,2
		call	sub_73
		call	sub_79
		call	sub_83
		mov	ax,32h
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
		and	ax,0FFh
		mov	cx,2
		sub	cx,ax
		mov	data_108,cx
		call	sub_70
		mov	ax,130h
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
		mov	data_110,ax
		cmp	ax,0
		je	loc_4			; Jump if equal
		mov	word ptr [bp+LOCAL_4],0
		mov	ax,[bp+LOCAL_4]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,offset data_90
		mov	si,[si]
		mov	[bp+LOCAL_2],si
loc_2:
		mov	ax,31h
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
		mov	[bp+LOCAL_1],ax
		cmp	ax,7Eh
		je	loc_4			; Jump if equal
		cmp	word ptr [bp+LOCAL_4],19h
		jg	loc_4			; Jump if >
		mov	ax,[bp+LOCAL_2]
		inc	word ptr [bp+LOCAL_2]
		mov	si,ax
		mov	ax,[bp+LOCAL_1]
		mov	[si],al
		cmp	al,0
		jne	loc_3			; Jump if not equal
		inc	word ptr [bp+LOCAL_4]
		mov	ax,[bp+LOCAL_4]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,offset data_90
		mov	si,[si]
		mov	[bp+LOCAL_2],si
loc_3:
		jmp	short loc_2
loc_4:
		call	sub_106
		call	sub_8
		call	sub_71
		call	sub_12
		mov	ax,604h
		push	ax			; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_11
		add	sp,4
		mov	data_109,ax
		push	data_109		; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_10
		add	sp,4
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		mov	byte ptr data_125,31h	; '1'
		mov	data_127,0
		mov	data_126,0
		mov	byte ptr data_128,0
		mov	data_130,0
		mov	data_129,0
		mov	ax,31h
		push	ax			; PARAMETER_3
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_6
		add	sp,6
		mov	ax,5611h
		push	ax			; PARAMETER_4
		mov	ax,560Ch
		push	ax			; PARAMETER_3
		mov	ax,1FDh
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_14
		add	sp,8
		mov	ax,30h
		push	ax			; PARAMETER_3
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_6
		add	sp,6
		mov	data_111,2C8h
		call	sub_78
loc_5:
		call	sub_85
		mov	[bp+LOCAL_4],ax
		call	sub_79
		call	sub_83
		mov	bx,[bp+LOCAL_4]
		call	sub_119
		or	al,0
		cmp	di,offset data_91
;*		cmp	bh,0EAh
		db	 82h,0FFh,0EAh		;  Fixup - byte match
		add	data_113[bp+di],ax
		add	al,data_115[si]
		add	al,data_117[di]
		add	al,data_118[bp]
		add	al,data_119[bx]
		add	cl,data_120[bx+si]
		add	cl,ds:data_131e[bx+di]
		add	cl,ss:data_132e[bp+si]
		add	bh,ds:data_133e[bx+di]
		add	al,[bx+si]
		xor	byte ptr ds:data_134e[bx+di],85h
		adc	data_114[bx+si],di
		push	ax			; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_11
		add	sp,4
		mov	data_109,ax
		push	data_109		; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_10
		add	sp,4
		jmp	loc_6
			                        ;* No entry point to code
		call	sub_32
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		mov	byte ptr data_128,0
		jmp	loc_6
			                        ;* No entry point to code
		call	sub_24
		jmp	loc_6
			                        ;* No entry point to code
		mov	ax,2C9h
		push	ax			; PARAMETER_1
		call	sub_39
		add	sp,2
		mov	word ptr [bp+LOCAL_4],0Dh
		jmp	loc_6
			                        ;* No entry point to code
		mov	ax,2D5h
		push	ax			; PARAMETER_1
		call	sub_39
		add	sp,2
		mov	word ptr [bp+LOCAL_4],0Dh
		jmp	loc_6
			                        ;* No entry point to code
		call	sub_25
		jmp	loc_6
			                        ;* No entry point to code
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_5
		add	sp,4
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		jmp	loc_6
			                        ;* No entry point to code
		call	sub_33
		mov	ax,604h
		push	ax			; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_11
		add	sp,4
		mov	data_109,ax
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		mov	byte ptr data_128,0
		jmp	short loc_6
			                        ;* No entry point to code
		call	sub_35
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		jmp	short loc_6
			                        ;* No entry point to code
		call	sub_26
		mov	ax,1E4h
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_19
		add	sp,4
		mov	byte ptr data_128,0
		jmp	short loc_6
			                        ;* No entry point to code
		call	sub_3
		jmp	short loc_6
			                        ;* No entry point to code
		mov	al,data_125
		mov	data_128,al
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		push	word ptr [bp+LOCAL_4]	; PARAMETER_1
		call	sub_4
		add	sp,4
		mov	al,data_125
		sub	al,31h			; '1'
		mov	cl,1Dh
		mul	cl			; ax = reg * al
		mov	ah,0
		add	ax,1FDh
		add	ax,0Ch
		push	ax			; PARAMETER_1
		call	sub_39
		add	sp,2
loc_6:
		cmp	word ptr [bp+LOCAL_4],0FFB1h
		jge	loc_7			; Jump if > or =
		jmp	loc_10
loc_7:
		cmp	word ptr [bp+LOCAL_4],0FFB4h
		jle	loc_8			; Jump if < or =
		jmp	loc_10
loc_8:
		cmp	data_108,0
		je	loc_9			; Jump if equal
		push	word ptr [bp+LOCAL_4]	; PARAMETER_1
		call	sub_75
		add	sp,2
		call	sub_8
		call	sub_71
		call	sub_12
		push	data_109		; PARAMETER_2
		mov	ax,474h
		push	ax			; PARAMETER_1
		call	sub_10
		add	sp,4
		mov	word ptr ss:data_136e[bp],0
		mov	word ptr ss:data_135e[bp],18h
		mov	ax,data_107
		mov	ss:data_137e[bp],ax
		lea	ax,cs:[0EE5Ch][bp]	; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		mov	byte ptr data_128,0
		jmp	short loc_10
loc_9:
		mov	ax,[bp+LOCAL_4]
		sub	ax,0FFB1h
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,offset data_121
		mov	si,[si]
		add	si,1
		and	si,0Fh
		mov	ax,[bp+LOCAL_4]
		sub	ax,0FFB1h
		shl	ax,1			; Shift w/zeros fill
		mov	di,ax
		add	di,offset data_121
		mov	[di],si
		push	data_124		; PARAMETER_4
		push	data_123		; PARAMETER_3
		push	data_122		; PARAMETER_2
		push	data_121		; PARAMETER_1
		call	sub_111
		add	sp,8
		call	sub_76
		mov	word ptr [bp+LOCAL_3],1
loc_10:
		mov	ax,31h
		push	ax			; PARAMETER_3
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_6
		add	sp,6
		mov	ax,5611h
		push	ax			; PARAMETER_4
		mov	ax,560Ch
		push	ax			; PARAMETER_3
		mov	ax,1FDh
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_14
		add	sp,8
		mov	ax,30h
		push	ax			; PARAMETER_3
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_6
		add	sp,6
		mov	ax,560Ch
		push	ax			; PARAMETER_2
		lea	ax,cs:[0EE62h][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_18
		add	sp,4
		add	ax,2
		mov	data_111,ax
		push	data_111		; PARAMETER_1
		call	sub_40
		add	sp,2
		call	sub_78
		cmp	word ptr [bp+LOCAL_4],0Dh
		je	loc_11			; Jump if equal
		cmp	word ptr [bp+LOCAL_4],0FF8Ch
		je	loc_11			; Jump if equal
		cmp	word ptr [bp+LOCAL_4],0FF9Ch
		je	loc_11			; Jump if equal
		jmp	loc_5
loc_11:
		cmp	word ptr [bp+LOCAL_4],0FF8Ch
		jne	loc_12			; Jump if not equal
		mov	ax,1Eh
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
loc_12:
		cmp	word ptr [bp+LOCAL_4],0FF9Ch
		je	loc_13			; Jump if equal
		jmpn	loc_14
loc_13:
		mov	ax,26h
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
loc_14:
		cmp	word ptr [bp+LOCAL_3],0
		je	loc_15			; Jump if equal
		cmp	data_108,0
		jne	loc_15			; Jump if not equal
		push	data_124		; PARAMETER_4
		push	data_123		; PARAMETER_3
		push	data_122		; PARAMETER_2
		push	data_121		; PARAMETER_1
		call	sub_113
		add	sp,8
loc_15:
		call	sub_70
		call	sub_84
		mov	sp,bp
		pop	bp
		retn
sub_1		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_3		proc	near

LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,20h
		push	ax
		call	sub_115
		add	sp,2
		push	word ptr ds:data_24e	; PARAMETER_1
		call	sub_80
		add	sp,2
		mov	ax,20h
		push	ax
		call	sub_115
		add	sp,2
		push	word ptr ds:data_25e	; PARAMETER_1
		call	sub_80
		add	sp,2
		mov	ax,20h
		push	ax
		call	sub_115
		add	sp,2
		push	word ptr ds:data_26e	; PARAMETER_1
		call	sub_80
		add	sp,2
		mov	ax,20h
		push	ax
		call	sub_115
		add	sp,2
		push	word ptr ds:data_27e	; PARAMETER_1
		call	sub_80
		add	sp,2
		call	sub_85
		mov	[bp+LOCAL_1],ax
		mov	sp,bp
		pop	bp
		retn
sub_3		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_4		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word ptr [bp+LOCAL_2],0
		mov	word ptr [bp+LOCAL_1],0
		cmp	word ptr [bp+PARAMETER_1],0FFA3h
		jne	loc_16			; Jump if not equal
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],31h	; '1'
		jbe	loc_16			; Jump if below or =
		mov	si,[bp+PARAMETER_2]
		dec	byte ptr [si]
		mov	si,[bp+PARAMETER_2]
		mov	word ptr [si+3],0
		mov	si,[bp+PARAMETER_2]
		cmp	word ptr [si+1],0Ah
		jl	loc_16			; Jump if <
		mov	si,[bp+PARAMETER_2]
		mov	word ptr [si+1],9
loc_16:
		cmp	word ptr [bp+PARAMETER_1],0FFA2h
		jne	loc_17			; Jump if not equal
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],36h	; '6'
		jae	loc_17			; Jump if above or =
		mov	si,[bp+PARAMETER_2]
		inc	byte ptr [si]
		mov	si,[bp+PARAMETER_2]
		mov	word ptr [si+3],0
		mov	si,[bp+PARAMETER_2]
		cmp	word ptr [si+1],0Ah
		jl	loc_17			; Jump if <
		mov	si,[bp+PARAMETER_2]
		mov	word ptr [si+1],9
loc_17:
		cmp	word ptr [bp+PARAMETER_1],0FFA0h
		jne	loc_18			; Jump if not equal
		mov	word ptr [bp+LOCAL_2],1
loc_18:
		cmp	word ptr [bp+PARAMETER_1],0FFA1h
		jne	loc_19			; Jump if not equal
		mov	word ptr [bp+LOCAL_1],1
loc_19:
		cmp	word ptr [bp+PARAMETER_1],0FFA4h
		jne	loc_20			; Jump if not equal
		mov	si,[bp+PARAMETER_2]
		mov	ax,[si+1]
		cwd				; Word to double word
		mov	cx,9
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	[bp+LOCAL_2],dx
		cmp	dx,0
		jne	loc_20			; Jump if not equal
		mov	word ptr [bp+LOCAL_2],9
loc_20:
		cmp	word ptr [bp+PARAMETER_1],0FFA5h
		jne	loc_21			; Jump if not equal
		mov	si,[bp+PARAMETER_2]
		mov	ax,[si+1]
		cwd				; Word to double word
		mov	cx,9
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	ax,9
		sub	ax,dx
		mov	[bp+LOCAL_1],ax
loc_21:
		mov	ax,[bp+LOCAL_2]
		dec	word ptr [bp+LOCAL_2]
		cmp	ax,0
		je	loc_23			; Jump if equal
		mov	si,[bp+PARAMETER_2]
		cmp	word ptr [si+1],1
		jl	loc_22			; Jump if <
		mov	si,[bp+PARAMETER_2]
		dec	word ptr [si+1]
		mov	si,[bp+PARAMETER_2]
		cmp	word ptr [si+3],0
		jle	loc_22			; Jump if < or =
		mov	si,[bp+PARAMETER_2]
		dec	word ptr [si+3]
loc_22:
		jmp	short loc_21
loc_23:
		mov	ax,[bp+LOCAL_1]
		dec	word ptr [bp+LOCAL_1]
		cmp	ax,0
		je	loc_25			; Jump if equal
		mov	si,[bp+PARAMETER_2]
		inc	word ptr [si+1]
		mov	si,[bp+PARAMETER_2]
		cmp	word ptr [si+1],0Ah
		jl	loc_24			; Jump if <
		mov	si,[bp+PARAMETER_2]
		inc	word ptr [si+3]
loc_24:
		jmp	short loc_23
loc_25:
		mov	sp,bp
		pop	bp
		retn
sub_4		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_5		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,10h
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		mov	[bp-9],al
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+1]
		mov	[bp+LOCAL_1],si
		mov	ax,31h
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_6
		add	sp,6
loc_26:
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+1]
		mov	[bp+LOCAL_4],si
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+3]
		mov	[bp+LOCAL_3],si
		call	sub_85
		mov	[bp+LOCAL_2],ax
		mov	bx,[bp+LOCAL_2]
		cmp	bx,0FF89h
		jge	loc_27			; Jump if > or =
		jmp	loc_36
loc_27:
		cmp	bx,0FFA1h
		jle	loc_28			; Jump if < or =
		jmp	loc_36
loc_28:
		sub	bx,0FF89h
		shl	bx,1			; Shift w/zeros fill
		jmp	word ptr cs:data_48[bx]	;*
data_48		dw	offset loc_29		; Data table (indexed access)
data_49		dw	offset loc_36
data_50		dw	offset loc_36
data_51		dw	offset loc_36
data_52		dw	offset loc_36
data_53		dw	offset loc_29
data_54		dw	offset loc_36
data_55		dw	offset loc_36
data_56		dw	offset loc_36
data_57		dw	offset loc_36
data_58		dw	offset loc_36
data_59		dw	offset loc_36
data_60		dw	offset loc_36
data_61		dw	offset loc_36
data_62		dw	offset loc_36
data_63		dw	offset loc_36
data_64		dw	offset loc_36
data_65		dw	offset loc_36
data_66		dw	offset loc_36
data_67		dw	offset loc_36
data_68		dw	offset loc_36
data_69		dw	offset loc_36
data_70		dw	offset loc_36
data_71		dw	offset loc_30
data_72		dw	offset loc_33

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_29:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_34
		add	sp,4
		mov	sp,bp
		pop	bp
		retn

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_30:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+LOCAL_2]	; PARAMETER_1
		call	sub_4
		add	sp,4
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+1]
		cmp	si,[bp+LOCAL_1]
		jge	loc_31			; Jump if > or =
		mov	ax,31h
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_6
		add	sp,6
		jmp	short loc_32
loc_31:
		mov	ax,30h
		push	ax			; PARAMETER_3
		lea	ax,[bp-9]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_6
		add	sp,6
loc_32:
		jmp	short loc_37

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_33:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+LOCAL_2]	; PARAMETER_1
		call	sub_4
		add	sp,4
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+1]
		cmp	si,[bp+LOCAL_1]
		jle	loc_34			; Jump if < or =
		mov	ax,31h
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_6
		add	sp,6
		jmp	short loc_35
loc_34:
		mov	ax,30h
		push	ax			; PARAMETER_3
		lea	ax,[bp-9]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_6
		add	sp,6
loc_35:
		jmp	short loc_37

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_36:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_7
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
loc_37:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_17
		add	sp,4
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_3
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_16
		add	sp,6
		jmp	loc_26
sub_5		endp

		db	 8Bh,0E5h, 5Dh,0C3h

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_6		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_18
		add	sp,4
		mov	[bp+LOCAL_1],ax
		inc	word ptr [bp+LOCAL_1]
		mov	si,[bp+LOCAL_1]
		mov	al,[bp+PARAMETER_3]
		mov	[si],al
		mov	sp,bp
		pop	bp
		retn
sub_6		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_7		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ah
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		mov	[bp-9],al
		mov	[bp-3],al
		mov	word ptr [bp+LOCAL_4],0
loc_38:
		lea	ax,[bp-9]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_18
		add	sp,4
		mov	[bp+LOCAL_1],ax
		mov	si,ax
		mov	al,[si]
		cmp	al,[bp-3]
		jne	loc_39			; Jump if not equal
		inc	word ptr [bp+LOCAL_1]
		mov	si,[bp+LOCAL_1]
		mov	byte ptr [si],30h	; '0'
		inc	word ptr [bp+LOCAL_4]
		jmp	short loc_38
loc_39:
		mov	sp,bp
		pop	bp
		retn
sub_7		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_8		proc	near

LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,8
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		mov	[bp+LOCAL_4],ax
		mov	si,[bp+LOCAL_4]
		mov	word ptr [si],0
		mov	si,[bp+LOCAL_4]
		mov	word ptr [si+2],0
		mov	si,[bp+LOCAL_4]
		mov	ax,ds:data_25e
		mov	[si+4],ax
		push	word ptr [bp+LOCAL_4]	; PARAMETER_4
		mov	ax,9
		push	ax			; PARAMETER_3
		mov	ax,1Ah
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		mov	si,[bp+LOCAL_4]
		mov	word ptr [si+2],1Ah
		push	word ptr [bp+LOCAL_4]	; PARAMETER_4
		mov	ax,9
		push	ax			; PARAMETER_3
		mov	ax,35h
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		mov	si,[bp+LOCAL_4]
		mov	word ptr [si],9
		mov	si,[bp+LOCAL_4]
		mov	word ptr [si+2],0
		mov	si,[bp+LOCAL_4]
		mov	ax,ds:data_25e
		mov	[si+4],ax
		push	word ptr [bp+LOCAL_4]	; PARAMETER_4
		mov	ax,0Eh
		push	ax			; PARAMETER_3
		mov	ax,4Fh
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		mov	sp,bp
		pop	bp
		retn
sub_8		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_9		proc	near

LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word ptr [bp+LOCAL_3],1
		mov	word ptr [bp+LOCAL_2],1
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_4
		mov	ax,7
		push	ax			; PARAMETER_3
		mov	ax,18h
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_66
		add	sp,8
		mov	sp,bp
		pop	bp
		retn
sub_9		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_10		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_11	=	-16h			; bp+0FFEAh
LOCAL_10	=	-14h			; bp+0FFECh
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,16h
		mov	word ptr [bp+LOCAL_3],1
		mov	word ptr [bp+LOCAL_2],1Bh
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_4
		mov	ax,7
		push	ax			; PARAMETER_3
		mov	ax,33h
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_66
		add	sp,8
		inc	word ptr [bp+LOCAL_2]
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_2e	; PARAMETER_1
		call	sub_60
		add	sp,4
		inc	word ptr [bp+LOCAL_3]
		mov	word ptr [bp-9],604h
		cmp	word ptr [bp+PARAMETER_2],0
		jne	loc_40			; Jump if not equal
		mov	sp,bp
		pop	bp
		retn
loc_40:
		mov	word ptr [bp+LOCAL_10],0
loc_41:
		mov	ax,[bp+LOCAL_10]
		cmp	ax,[bp+PARAMETER_2]
		jl	loc_42			; Jump if <
		jmp	loc_50
loc_42:
		mov	ax,[bp+LOCAL_10]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		mov	si,[si]
		mov	[bp-9],si
		mov	ax,[bp-9]
		inc	word ptr [bp-9]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		mov	[bp+LOCAL_11],ax
		mov	cl,8
		mov	ax,[bp+LOCAL_11]
		shl	ax,cl			; Shift w/zeros fill
		mov	cx,[bp-9]
		inc	word ptr [bp-9]
		mov	si,cx
		mov	cl,[si]
		mov	ch,0
		add	ax,cx
		mov	[bp+LOCAL_11],ax
		cmp	word ptr [bp+LOCAL_11],2E2Eh
		jne	loc_43			; Jump if not equal
		jmp	loc_48
loc_43:
		mov	byte ptr [bp-7],61h	; 'a'
		cmp	word ptr [bp+LOCAL_11],3132h
		jl	loc_44			; Jump if <
		mov	byte ptr [bp-7],70h	; 'p'
loc_44:
		cmp	word ptr [bp+LOCAL_11],3132h
		jle	loc_45			; Jump if < or =
		cmp	word ptr ds:data_28e,0
		jne	loc_45			; Jump if not equal
		mov	ax,[bp+LOCAL_11]
		and	ax,0F00h
		mov	al,ah
		mov	cl,0Ah
		mul	cl			; ax = reg * al
		mov	cx,[bp+LOCAL_11]
		and	cx,0Fh
		mov	ah,0
		add	ax,cx
		mov	[bp+LOCAL_11],ax
		sub	word ptr [bp+LOCAL_11],0Ch
		mov	ax,[bp+LOCAL_11]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	cl,8
		shl	ax,cl			; Shift w/zeros fill
		mov	di,ax
		mov	ax,[bp+LOCAL_11]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		add	di,dx
		add	di,3030h
		mov	[bp+LOCAL_11],di
loc_45:
		cmp	word ptr [bp+LOCAL_11],3030h
		jne	loc_46			; Jump if not equal
		mov	word ptr [bp+LOCAL_11],3132h
loc_46:
		cmp	word ptr ds:data_28e,0
		je	loc_47			; Jump if equal
		mov	byte ptr [bp-7],20h	; ' '
loc_47:
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,[bp+LOCAL_11]
		mov	al,ah
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,[bp+LOCAL_11]
		and	ax,0FFh
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,3Ah
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp-9]		; PARAMETER_1
		call	sub_60
		add	sp,4
		add	word ptr [bp+LOCAL_2],2
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	al,[bp-7]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		jmp	short loc_49
loc_48:
		add	word ptr [bp+LOCAL_2],6
loc_49:
		push	word ptr [bp-9]		; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp-9],ax
		push	word ptr [bp-9]		; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp-9],ax
		inc	word ptr [bp+LOCAL_2]
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp-9]		; PARAMETER_1
		call	sub_60
		add	sp,4
		sub	word ptr [bp+LOCAL_2],7
		inc	word ptr [bp+LOCAL_3]
		inc	word ptr [bp+LOCAL_10]
		jmp	loc_41
loc_50:
		mov	sp,bp
		pop	bp
		retn
sub_10		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_11		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,10h
		mov	ax,2004h
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_99
		add	sp,4
		mov	[bp+LOCAL_8],ax
		cmp	word ptr [bp+LOCAL_8],0
		jne	loc_51			; Jump if not equal
		mov	ax,0
		mov	sp,bp
		pop	bp
		retn
loc_51:
		push	word ptr [bp+LOCAL_8]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_100
		add	sp,4
		lea	ax,[bp-0Bh]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_77
		add	sp,2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp+PARAMETER_2],ax
		mov	word ptr [bp+LOCAL_8],0
loc_52:
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		mov	[bp-1],al
		cmp	al,41h			; 'A'
		je	loc_53			; Jump if equal
		cmp	byte ptr [bp-1],44h	; 'D'
		jne	loc_55			; Jump if not equal
loc_53:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp-0Dh],ax
		mov	ax,64h
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_101
		add	sp,4
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp+PARAMETER_2],ax
		cmp	byte ptr [bp-1],41h	; 'A'
		jne	loc_54			; Jump if not equal
		lea	ax,[bp-0Bh]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jne	loc_54			; Jump if not equal
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	cx,[bp+LOCAL_8]
		shl	cx,1			; Shift w/zeros fill
		mov	si,cx
		add	si,[bp+PARAMETER_1]
		mov	[si],ax
		inc	word ptr [bp+LOCAL_8]
loc_54:
		mov	ax,[bp-0Dh]
		mov	[bp+PARAMETER_2],ax
		jmp	short loc_52
loc_55:
		push	word ptr [bp+LOCAL_8]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_72
		add	sp,4
		cmp	word ptr [bp+LOCAL_8],7
		jle	loc_56			; Jump if < or =
		mov	word ptr [bp+LOCAL_8],7
loc_56:
		mov	ax,[bp+LOCAL_8]
		mov	sp,bp
		pop	bp
		retn
sub_11		endp

			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		push	word ptr [bp+4]		; PARAMETER_1
		call	sub_47
		mov	sp,bp
		mov	[bp+4],ax
		push	word ptr [bp+4]		; PARAMETER_1
		call	sub_47
		mov	sp,bp
		mov	[bp+4],ax
		push	word ptr [bp+4]		; PARAMETER_1
		call	sub_47
		mov	sp,bp
		mov	[bp+4],ax
		push	word ptr [bp+4]		; PARAMETER_1
		call	sub_47
		mov	sp,bp
		mov	[bp+4],ax
		push	word ptr [bp+4]		; PARAMETER_1
		call	sub_47
		mov	sp,bp
		mov	[bp+4],ax
		mov	ax,[bp+4]
		pop	bp
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_12		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Eh
		call	sub_9
		call	sub_87
		mov	[bp+LOCAL_1],ax
		call	sub_88
		mov	[bp+LOCAL_4],ax
		push	word ptr [bp+LOCAL_4]	; PARAMETER_3
		push	word ptr [bp+LOCAL_1]	; PARAMETER_2
		mov	ax,1
		push	ax			; PARAMETER_1
		call	sub_31
		add	sp,6
		mov	[bp+LOCAL_2],ax
		push	word ptr [bp+LOCAL_4]	; PARAMETER_2
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_30
		add	sp,4
		mov	[bp+LOCAL_3],ax
		mov	ax,2
		push	ax
		mov	ax,2
		push	ax
		push	word ptr [bp+LOCAL_3]
		call	sub_86
		push	ax
		push	word ptr [bp+LOCAL_4]
		push	word ptr [bp+LOCAL_1]
		push	word ptr [bp+LOCAL_2]
		call	sub_13
		add	sp,0Eh
		mov	sp,bp
		pop	bp
		retn
sub_12		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_13		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah
PARAMETER_5	=	0Ch			; bp+0Ch
PARAMETER_6	=	0Eh			; bp+0Eh
PARAMETER_7	=	10h			; bp+10h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ch
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		mov	[bp+LOCAL_6],ax
		mov	ax,[bp+PARAMETER_6]
		mov	[bp+LOCAL_5],ax
		mov	ax,[bp+PARAMETER_7]
		add	ax,8
		mov	[bp+LOCAL_4],ax
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_3],ax
		push	word ptr [bp+LOCAL_6]
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_29
		add	sp,2
		push	ax
		call	sub_60
		add	sp,4
		mov	si,[bp+LOCAL_6]
		add	word ptr [si+2],4
		mov	ax,5616h
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_1
		call	sub_62
		add	sp,4
		push	word ptr [bp+LOCAL_6]	; PARAMETER_2
		mov	ax,5616h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		cmp	word ptr [bp+PARAMETER_1],6
		jg	loc_57			; Jump if >
		cmp	word ptr [bp+PARAMETER_1],0
		jge	loc_58			; Jump if > or =
loc_57:
		push	word ptr [bp+LOCAL_6]	; PARAMETER_2
		mov	ax,2E0h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
loc_58:
		inc	word ptr [bp+LOCAL_5]
		mov	ax,[bp+PARAMETER_1]
		shl	ax,1			; Shift w/zeros fill
		add	ax,[bp+PARAMETER_7]
		add	ax,[bp+PARAMETER_1]
		mov	[bp+LOCAL_4],ax
		mov	ax,7
		sub	ax,[bp+PARAMETER_1]
		mov	[bp+PARAMETER_1],ax
		mov	word ptr [bp+LOCAL_2],1
loc_59:
		mov	ax,[bp+PARAMETER_5]
		dec	word ptr [bp+PARAMETER_5]
		cmp	ax,0
		jne	loc_60			; Jump if not equal
		jmp	loc_65
loc_60:
		push	word ptr [bp+LOCAL_6]	; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		mov	ax,[bp+LOCAL_2]
		cmp	ax,[bp+PARAMETER_4]
		jne	loc_61			; Jump if not equal
		mov	ax,ds:data_25e
		mov	[bp+LOCAL_3],ax
loc_61:
		mov	word ptr [bp+LOCAL_1],5616h
		push	word ptr [bp+LOCAL_1]	; PARAMETER_2
		push	word ptr [bp+LOCAL_2]	; PARAMETER_1
		call	sub_62
		add	sp,4
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_63
		add	sp,2
		cmp	ax,1
		jne	loc_62			; Jump if not equal
		push	word ptr [bp+LOCAL_6]	; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
loc_62:
		mov	si,[bp+LOCAL_1]
		cmp	byte ptr [si],0
		je	loc_63			; Jump if equal
		push	word ptr [bp+LOCAL_6]	; PARAMETER_2
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		jmp	short loc_62
loc_63:
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_3],ax
		dec	word ptr [bp+PARAMETER_1]
		cmp	word ptr [bp+PARAMETER_1],0
		jne	loc_64			; Jump if not equal
		mov	word ptr [bp+PARAMETER_1],7
		mov	ax,[bp+PARAMETER_7]
		mov	[bp+LOCAL_4],ax
		add	word ptr [bp+LOCAL_5],1
loc_64:
		inc	word ptr [bp+LOCAL_2]
		jmp	loc_59
loc_65:
		mov	sp,bp
		pop	bp
		retn
sub_13		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_14		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Eh
		mov	si,[bp+PARAMETER_4]
		mov	al,[si]
		mov	[bp+LOCAL_2],al
		mov	word ptr [bp+LOCAL_6],3
		mov	byte ptr [bp-3],31h	; '1'
loc_66:
		mov	ax,[bp+PARAMETER_2]
		add	word ptr [bp+PARAMETER_2],1Dh
		mov	[bp+LOCAL_1],ax
		mov	si,ax
		cmp	byte ptr [si],0
		jne	loc_67			; Jump if not equal
		jmp	loc_73
loc_67:
		mov	si,[bp+PARAMETER_3]
		mov	al,[si]
		cmp	al,[bp-3]
		jne	loc_68			; Jump if not equal
		mov	word ptr [bp+LOCAL_3],1
		mov	ax,ds:data_26e
		mov	[bp+LOCAL_5],ax
		jmp	short loc_69
loc_68:
		mov	word ptr [bp+LOCAL_3],0
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_5],ax
loc_69:
		cmp	byte ptr [bp+LOCAL_2],0
		je	loc_70			; Jump if equal
		mov	al,[bp+LOCAL_2]
		cmp	al,[bp-3]
		je	loc_70			; Jump if equal
		mov	si,[bp+PARAMETER_3]
		mov	al,[si]
		cmp	al,[bp-3]
		jne	loc_72			; Jump if not equal
loc_70:
		mov	word ptr [bp+LOCAL_7],9
		push	word ptr [bp+LOCAL_3]	; PARAMETER_3
		lea	ax,[bp+LOCAL_7]		; Load effective addr
		push	ax			; PARAMETER_2
		inc	word ptr [bp+LOCAL_1]
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_15
		add	sp,6
		inc	word ptr [bp+LOCAL_7]
		mov	si,[bp+PARAMETER_3]
		mov	al,[si]
		cmp	al,[bp-3]
		jne	loc_71			; Jump if not equal
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_3
		lea	ax,[bp+LOCAL_7]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_16
		add	sp,6
		jmp	short loc_72
loc_71:
		mov	si,[bp+PARAMETER_4]
		mov	al,[bp-3]
		mov	[si],al
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_3
		lea	ax,[bp+LOCAL_7]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_16
		add	sp,6
loc_72:
		add	word ptr [bp+LOCAL_6],0Dh
		inc	byte ptr [bp-3]
		jmp	loc_66
loc_73:
		mov	sp,bp
		pop	bp
		retn
sub_14		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_15		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
		inc	word ptr [bp+LOCAL_3]
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_1],ax
		sub	word ptr [bp+LOCAL_2],2
		cmp	word ptr [bp+LOCAL_2],6
		jl	loc_74			; Jump if <
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_3
		mov	ax,0Ch
		push	ax			; PARAMETER_2
		mov	ax,0B3h
		push	ax			; PARAMETER_1
		call	sub_69
		add	sp,6
		jmp	short loc_75
loc_74:
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_3
		mov	ax,0Ch
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_69
		add	sp,6
loc_75:
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
		dec	word ptr [bp+LOCAL_2]
		cmp	word ptr [bp+PARAMETER_3],0
		je	loc_76			; Jump if equal
		mov	ax,ds:data_27e
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_4
		mov	ax,0Ch
		push	ax			; PARAMETER_3
		mov	ax,0Bh
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		jmp	short loc_77
loc_76:
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_4
		mov	ax,0Ch
		push	ax			; PARAMETER_3
		mov	ax,0Bh
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		mov	ax,ds:data_25e
		mov	[bp+LOCAL_1],ax
loc_77:
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,2F2h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		inc	word ptr [bp+LOCAL_2]
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_15		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_16		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,12h
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
		mov	si,[bp+PARAMETER_3]
		mov	al,[si]
		mov	[bp-1],al
		mov	[bp-11h],al
		mov	si,[bp+PARAMETER_3]
		mov	si,[si+3]
		mov	[bp+LOCAL_8],si
		lea	ax,[bp-11h]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_18
		add	sp,4
		mov	[bp+PARAMETER_1],ax
		mov	word ptr [bp+LOCAL_3],0Bh
loc_78:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		cmp	al,[bp-1]
		jne	loc_81			; Jump if not equal
		cmp	word ptr [bp+LOCAL_3],0
		je	loc_81			; Jump if equal
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		cmp	byte ptr [si],30h	; '0'
		je	loc_79			; Jump if equal
		mov	ax,[bp+LOCAL_4]
		cmp	ax,word ptr ds:[463h]
		jne	loc_79			; Jump if not equal
		mov	ax,word ptr ds:[465h]
		mov	[bp+LOCAL_4],ax
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_59
		add	sp,4
		mov	ax,word ptr ds:[463h]
		mov	[bp+LOCAL_4],ax
		jmp	short loc_80
loc_79:
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_59
		add	sp,4
loc_80:
		inc	word ptr [bp+LOCAL_6]
		add	word ptr [bp+PARAMETER_1],0Dh
		dec	word ptr [bp+LOCAL_3]
		jmp	short loc_78
loc_81:
		mov	si,[bp+PARAMETER_3]
		mov	ax,0Ah
		sub	ax,[si+1]
		mov	si,[bp+PARAMETER_3]
		add	ax,[si+3]
		mov	[bp+LOCAL_2],ax
loc_82:
		mov	ax,[bp+LOCAL_3]
		dec	word ptr [bp+LOCAL_3]
		cmp	ax,0
		je	loc_85			; Jump if equal
		mov	ax,[bp+LOCAL_3]
		cmp	ax,[bp+LOCAL_2]
		jne	loc_83			; Jump if not equal
		mov	ax,[bp+LOCAL_4]
		cmp	ax,word ptr ds:[463h]
		jne	loc_83			; Jump if not equal
		mov	ax,word ptr ds:[465h]
		mov	[bp+LOCAL_4],ax
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,2FFh
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	ax,word ptr ds:[463h]
		mov	[bp+LOCAL_4],ax
		jmp	short loc_84
loc_83:
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,30Ah
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
loc_84:
		inc	word ptr [bp+LOCAL_6]
		jmp	short loc_82
loc_85:
		mov	sp,bp
		pop	bp
		retn
sub_16		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_17		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		sub	al,31h			; '1'
		mov	cl,0Dh
		mul	cl			; ax = reg * al
		add	al,3
		mov	si,[bp+PARAMETER_1]
		mov	ah,0
		mov	[si+2],ax
		mov	si,[bp+PARAMETER_1]
		mov	word ptr [si],0Ah
		mov	si,[bp+PARAMETER_1]
		mov	ax,word ptr ds:[463h]
		mov	[si+4],ax
		pop	bp
		retn
sub_17		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_18		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_86:
		mov	[bp-1],al
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+1]
		mov	[bp+LOCAL_2],si
loc_87:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_88			; Jump if equal
		mov	si,[bp+PARAMETER_1]
		mov	al,[si]
		cmp	al,[bp-1]
		je	loc_88			; Jump if equal
		add	word ptr [bp+PARAMETER_1],0Fh
		jmp	short loc_87
loc_88:
		mov	si,[bp+PARAMETER_1]
		mov	al,[si]
		cmp	al,[bp-1]
		jne	loc_89			; Jump if not equal
		mov	ax,[bp+LOCAL_2]
		dec	word ptr [bp+LOCAL_2]
		cmp	ax,0
		je	loc_89			; Jump if equal
		add	word ptr [bp+PARAMETER_1],0Fh
		jmp	short loc_88
loc_89:
		mov	ax,[bp+PARAMETER_1]
		mov	sp,bp
		pop	bp
		retn
sub_18		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_19		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_23
		add	sp,2
		mov	[bp+LOCAL_1],ax
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_21
		add	sp,4
		push	word ptr [bp+LOCAL_1]	; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_22
		add	sp,6
		mov	[bp+LOCAL_1],ax
		push	word ptr [bp+LOCAL_1]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_20
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_19		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_20		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ah
		dec	word ptr [bp+PARAMETER_2]
		mov	ax,[bp+PARAMETER_2]
		shr	ax,1			; Shift w/zeros fill
		mov	[bp+LOCAL_5],ax
loc_90:
		cmp	word ptr [bp+LOCAL_5],0
		jg	loc_91			; Jump if >
		jmp	loc_100
loc_91:
		mov	word ptr [bp+LOCAL_1],0
		mov	ax,[bp+LOCAL_5]
		mov	[bp+LOCAL_3],ax
loc_92:
		mov	ax,[bp+LOCAL_3]
		cmp	ax,[bp+PARAMETER_2]
		jle	loc_93			; Jump if < or =
		jmp	loc_99
loc_93:
		mov	ax,[bp+LOCAL_1]
		mov	[bp+LOCAL_2],ax
		mov	ax,[bp+LOCAL_3]
		mov	[bp+LOCAL_4],ax
loc_94:
		mov	ax,[bp+LOCAL_4]
		cmp	ax,[bp+LOCAL_3]
		jle	loc_95			; Jump if < or =
		jmp	loc_98
loc_95:
		mov	ax,[bp+LOCAL_4]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_2
		mov	ax,[bp+LOCAL_2]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jge	loc_98			; Jump if > or =
loc_96:
		mov	ax,[bp+LOCAL_4]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_2
		mov	ax,[bp+LOCAL_2]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_1
		call	sub_50
		add	sp,4
		mov	ax,[bp+LOCAL_5]
		sub	[bp+LOCAL_2],ax
		mov	ax,[bp+LOCAL_5]
		sub	[bp+LOCAL_4],ax
		cmp	word ptr [bp+LOCAL_2],0
		jl	loc_97			; Jump if <
		mov	ax,[bp+LOCAL_4]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_2
		mov	ax,[bp+LOCAL_2]
		mov	cx,0Fh
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+PARAMETER_1]
		push	ax			; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jl	loc_96			; Jump if <
loc_97:
		mov	ax,[bp+LOCAL_5]
		add	[bp+LOCAL_2],ax
		mov	ax,[bp+LOCAL_5]
		add	[bp+LOCAL_4],ax
		jmp	loc_94
loc_98:
		inc	word ptr [bp+LOCAL_1]
		mov	ax,[bp+LOCAL_3]
		inc	word ptr [bp+LOCAL_3]
		jmp	loc_92
loc_99:
		mov	ax,[bp+LOCAL_5]
		shr	ax,1			; Shift w/zeros fill
		mov	[bp+LOCAL_5],ax
		jmp	loc_90
loc_100:
		mov	sp,bp
		pop	bp
		retn
sub_20		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_21		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
loc_101:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		jne	loc_102			; Jump if not equal
		jmpn	loc_104
loc_102:
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		mov	ax,2Eh
		push	ax			; PARAMETER_1
		call	sub_54
		add	sp,4
		mov	[bp+LOCAL_1],ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		cmp	byte ptr [si],0
		je	loc_103			; Jump if equal
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_46
		add	sp,4
		mov	[bp+LOCAL_2],ax
		cmp	ax,0
		je	loc_103			; Jump if equal
		mov	ax,[bp+LOCAL_2]
		add	ax,30h
		mov	si,[bp+PARAMETER_1]
		mov	[si],al
loc_103:
		add	word ptr [bp+PARAMETER_1],0Fh
		jmp	short loc_101
loc_104:
		mov	sp,bp
		pop	bp
		retn
sub_21		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_22		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],0
loc_105:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_106			; Jump if equal
		add	word ptr [bp+PARAMETER_1],0Fh
		jmp	short loc_105
loc_106:
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],0
		je	loc_107			; Jump if equal
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		add	ax,31h
		mov	cx,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,cx
		mov	[si],al
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],30h	; '0'
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		add	word ptr [bp+PARAMETER_1],0Dh
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp+PARAMETER_2],ax
		jmp	short loc_106
loc_107:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],30h	; '0'
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],30h	; '0'
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		mov	ax,[bp+PARAMETER_3]
		add	ax,[bp+LOCAL_1]
		mov	sp,bp
		pop	bp
		retn
sub_22		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_23		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ah
		mov	word ptr [bp+LOCAL_4],315h
		lea	ax,[bp+LOCAL_2]		; Load effective addr
		mov	[bp+LOCAL_3],ax
		mov	word ptr [bp+LOCAL_5],0
		push	word ptr [bp+LOCAL_3]	; PARAMETER_1
		call	sub_95
		add	sp,2
		push	word ptr [bp+LOCAL_4]	; PARAMETER_1
		call	sub_92
		add	sp,2
		cmp	ax,0
		jne	loc_109			; Jump if not equal
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],20h	; ' '
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],30h	; '0'
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		push	word ptr [bp+LOCAL_3]	; PARAMETER_1
		call	sub_94
		add	sp,4
		add	word ptr [bp+PARAMETER_1],0Dh
		inc	word ptr [bp+LOCAL_5]
loc_108:
		push	word ptr [bp+LOCAL_4]
		push	word ptr [bp+LOCAL_3]
		call	sub_93
		add	sp,4
		cmp	ax,0
		jne	loc_109			; Jump if not equal
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],20h	; ' '
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],30h	; '0'
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		push	word ptr [bp+LOCAL_3]	; PARAMETER_1
		call	sub_94
		add	sp,4
		add	word ptr [bp+PARAMETER_1],0Dh
		inc	word ptr [bp+LOCAL_5]
		jmp	short loc_108
loc_109:
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		mov	ax,[bp+LOCAL_5]
		mov	sp,bp
		pop	bp
		retn
sub_23		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_24		proc	near

LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Eh
		mov	word ptr [bp+LOCAL_4],2
		mov	word ptr [bp+LOCAL_5],18h
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_3],ax
		lea	ax,[bp+LOCAL_7]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_108
		add	sp,2
		mov	ax,561Fh
		push	ax			; PARAMETER_2
		push	word ptr [bp+LOCAL_7]	; PARAMETER_1
		call	sub_62
		add	sp,4
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,561Fh
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	ax,561Fh
		push	ax			; PARAMETER_1
		call	sub_63
		add	sp,2
		add	[bp+LOCAL_4],ax
		cmp	word ptr [bp+LOCAL_7],0
		jne	loc_110			; Jump if not equal
		cmp	word ptr [bp+LOCAL_6],0
		je	loc_113			; Jump if equal
loc_110:
		mov	ax,561Fh
		push	ax			; PARAMETER_2
		push	word ptr [bp+LOCAL_6]	; PARAMETER_1
		call	sub_62
		add	sp,4
		mov	ax,561Fh
		push	ax			; PARAMETER_1
		call	sub_63
		add	sp,2
		mov	[bp+LOCAL_2],ax
		mov	[bp+LOCAL_1],ax
		cmp	word ptr [bp+LOCAL_7],0
		je	loc_112			; Jump if equal
loc_111:
		cmp	word ptr [bp+LOCAL_2],4
		jge	loc_112			; Jump if > or =
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,30h
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		inc	word ptr [bp+LOCAL_2]
		jmp	short loc_111
loc_112:
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,561Fh
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	ax,[bp+LOCAL_1]
		add	[bp+LOCAL_4],ax
		jmp	short loc_114
loc_113:
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,322h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		inc	word ptr [bp+LOCAL_4]
loc_114:
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_10e	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_24		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_25		proc	near
		push	bp
		mov	bp,sp
		mov	ax,8
		push	ax			; PARAMETER_3
		mov	ax,324h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_3e	; PARAMETER_1
		call	sub_41
		mov	sp,bp
		cmp	ax,0FF80h
		je	loc_115			; Jump if equal
		mov	ax,324h
		push	ax			; PARAMETER_1
		call	sub_52
		mov	sp,bp
		mov	ax,324h
		push	ax			; PARAMETER_1
		call	sub_107
		mov	sp,bp
		mov	ax,9
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
loc_115:
		pop	bp
		retn
sub_25		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_26		proc	near

LOCAL_15	=	-1Eh			; bp+0FFE2h
LOCAL_14	=	-1Ch			; bp+0FFE4h
LOCAL_13	=	-1Ah			; bp+0FFE6h
LOCAL_12	=	-18h			; bp+0FFE8h
LOCAL_11	=	-16h			; bp+0FFEAh
LOCAL_10	=	-14h			; bp+0FFECh
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,48h
		mov	word ptr [bp-46h],0
		mov	word ptr [bp-48h],18h
		mov	ax,ds:data_24e
		mov	[bp-44h],ax
		mov	si,bp
		sub	si,42h
		mov	ah,19h
		int	21h			; DOS Services  ah=function 19h
						;  get default drive al  (0=a:)
		add	al,41h			; 'A'
		mov	[si],al
		inc	si
		mov	byte ptr [si],3Ah	; ':'
		inc	si
		mov	byte ptr [si],5Ch	; '\'
		inc	si
		mov	dl,0
		mov	ah,47h
		int	21h			; DOS Services  ah=function 47h
						;  get present dir,drive dl,1=a:
						;   ds:si=ASCIIZ directory name
		mov	ax,20h
		push	ax			; PARAMETER_3
		lea	ax,[bp-42h]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_4e	; PARAMETER_1
		call	sub_41
		add	sp,6
		cmp	byte ptr [bp-42h],0
		je	loc_117			; Jump if equal
		mov	dx,bp
		sub	dx,42h
		mov	si,dx
		cmp	byte ptr [si+1],3Ah	; ':'
		jne	loc_116			; Jump if not equal
		mov	ah,0Eh
		mov	dl,[si]
		and	dl,0DFh
		sub	dl,41h			; 'A'
		int	21h			; DOS Services  ah=function 0Eh
						;  set default drive dl  (0=a:)
		lea	dx,[si+2]		; Load effective addr
loc_116:
		mov	ah,3Bh
		int	21h			; DOS Services  ah=function 3Bh
						;  set current dir, path @ ds:dx
loc_117:
		mov	sp,bp
		pop	bp
		retn
sub_26		endp

			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		mov	word ptr ds:data_81e,0
		mov	ax,word ptr ds:[461h]
		mov	ds:data_83e,ax
		call	sub_79
loc_118:
		mov	word ptr ds:data_82e,28h
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,28h
		push	ax			; PARAMETER_1
		call	sub_61
		mov	sp,bp
		mov	ax,5633h
		push	ax			; PARAMETER_2
		push	word ptr ds:[1CEh]	; PARAMETER_1
		call	sub_60
		mov	sp,bp
		add	word ptr ds:data_82e,19h
		mov	ax,0Ah
		push	ax			; PARAMETER_2
		mov	ax,332h
		push	ax			; PARAMETER_1
		call	sub_53
		mov	sp,bp
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,332h
		push	ax			; PARAMETER_1
		call	sub_64
		mov	sp,bp
		mov	ds:data_80e,ax
		mov	word ptr ds:data_82e,28h
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,28h
		push	ax			; PARAMETER_1
		call	sub_61
		mov	sp,bp
		cmp	word ptr ds:data_80e,0FF80h
		jne	loc_119			; Jump if not equal
		pop	bp
		retn
loc_119:
		mov	ax,562Bh
		push	ax			; PARAMETER_2
		mov	ax,332h
		push	ax			; PARAMETER_1
		call	sub_27
		mov	sp,bp
		cmp	byte ptr ds:[332h],20h	; ' '
		jne	loc_120			; Jump if not equal
		jmp	short loc_122
loc_120:
		mov	ax,562Bh
		push	ax			; PARAMETER_1
		call	sub_28
		mov	sp,bp
		cmp	ax,0
		je	loc_121			; Jump if equal
		jmp	short loc_122
loc_121:
		call	sub_105
		jmp	loc_118
loc_122:
		mov	ax,562Bh
		push	ax			; PARAMETER_1
		call	sub_89
		mov	sp,bp
		call	sub_12
loc_123:
		mov	ax,5633h
		push	ax			; PARAMETER_2
		push	word ptr ds:[1D0h]	; PARAMETER_1
		call	sub_60
		mov	sp,bp
		add	word ptr ds:data_82e,19h
		mov	ax,9
		push	ax			; PARAMETER_2
		mov	ax,340h
		push	ax			; PARAMETER_1
		call	sub_53
		mov	sp,bp
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,340h
		push	ax			; PARAMETER_1
		call	sub_64
		mov	sp,bp
		mov	ds:data_80e,ax
		mov	word ptr ds:data_82e,28h
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,28h
		push	ax			; PARAMETER_1
		call	sub_61
		mov	sp,bp
		cmp	word ptr ds:data_80e,0FF80h
		jne	loc_124			; Jump if not equal
		jmp	loc_133
loc_124:
		cmp	byte ptr ds:[340h],20h	; ' '
		jne	loc_125			; Jump if not equal
		jmp	loc_133
loc_125:
		mov	ax,562Bh
		push	ax			; PARAMETER_2
		mov	ax,340h
		push	ax			; PARAMETER_1
		call	sub_27
		mov	sp,bp
		mov	ax,340h
		push	ax			; PARAMETER_1
		call	sub_52
		mov	sp,bp
		mov	ax,340h
		push	ax			; PARAMETER_1
		call	sub_63
		mov	sp,bp
		mov	si,ax
		add	si,340h
		mov	ds:data_78e,si
		dec	word ptr ds:data_78e
		mov	si,ds:data_78e
		cmp	byte ptr [si],6Dh	; 'm'
		je	loc_126			; Jump if equal
		mov	si,ds:data_78e
		cmp	byte ptr [si],4Dh	; 'M'
		jne	loc_127			; Jump if not equal
loc_126:
		dec	word ptr ds:data_78e
loc_127:
		mov	si,ds:data_78e
		cmp	byte ptr [si],70h	; 'p'
		je	loc_128			; Jump if equal
		mov	si,ds:data_78e
		cmp	byte ptr [si],50h	; 'P'
		jne	loc_129			; Jump if not equal
loc_128:
		cmp	word ptr ds:data_79e,0Bh
		jg	loc_129			; Jump if >
		add	word ptr ds:data_79e,0Ch
loc_129:
		cmp	word ptr ds:data_79e,0Ch
		jne	loc_131			; Jump if not equal
		mov	si,ds:data_78e
		cmp	byte ptr [si],61h	; 'a'
		je	loc_130			; Jump if equal
		mov	si,ds:data_78e
		cmp	byte ptr [si],41h	; 'A'
		jne	loc_131			; Jump if not equal
loc_130:
		mov	word ptr ds:data_79e,0
loc_131:
		mov	ax,562Bh
		push	ax			; PARAMETER_1
		call	sub_90
		mov	sp,bp
		cmp	ax,0
		jne	loc_132			; Jump if not equal
		jmp	short loc_133
loc_132:
		call	sub_105
		jmp	loc_123
loc_133:
		mov	ax,5633h
		push	ax			; PARAMETER_2
		mov	ax,28h
		push	ax			; PARAMETER_1
		call	sub_61
		mov	sp,bp
		call	sub_78
		pop	bp
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_27		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,12h
		mov	ax,1
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_43
		add	sp,4
		cmp	word ptr ds:[46Bh],0
		je	loc_134			; Jump if equal
		mov	ax,0
		push	ax			; PARAMETER_2
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_43
		add	sp,4
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_56
		add	sp,2
		mov	si,[bp+PARAMETER_2]
		mov	[si+2],ax
		mov	ax,0
		push	ax			; PARAMETER_2
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_43
		add	sp,4
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_56
		add	sp,2
		mov	si,[bp+PARAMETER_2]
		mov	[si],ax
		mov	ax,0
		push	ax			; PARAMETER_2
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_43
		add	sp,4
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_56
		add	sp,2
		mov	si,[bp+PARAMETER_2]
		mov	[si+4],ax
		jmpn	loc_137
loc_134:
		mov	word ptr [bp+LOCAL_9],0
loc_135:
		cmp	word ptr [bp+LOCAL_9],3
		jl	loc_136			; Jump if <
		jmpn	loc_137
loc_136:
		mov	ax,0
		push	ax			; PARAMETER_2
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_43
		add	sp,4
		lea	ax,[bp+LOCAL_8]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_56
		add	sp,2
		mov	cx,[bp+LOCAL_9]
		shl	cx,1			; Shift w/zeros fill
		mov	si,cx
		add	si,[bp+PARAMETER_2]
		mov	[si],ax
		inc	word ptr [bp+LOCAL_9]
		jmp	short loc_135
loc_137:
		mov	sp,bp
		pop	bp
		retn
sub_27		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_28		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		cmp	word ptr [si],1
		jl	loc_138			; Jump if <
		mov	si,[bp+PARAMETER_1]
		cmp	word ptr [si],0Ch
		jle	loc_139			; Jump if < or =
loc_138:
		mov	ax,0
		pop	bp
		retn
loc_139:
		mov	si,[bp+PARAMETER_1]
		cmp	word ptr [si+4],64h
		jge	loc_140			; Jump if > or =
		mov	si,[bp+PARAMETER_1]
		add	word ptr [si+4],76Ch
loc_140:
		mov	si,[bp+PARAMETER_1]
		cmp	word ptr [si+2],1
		jl	loc_141			; Jump if <
		mov	si,[bp+PARAMETER_1]
		push	word ptr [si+4]		; PARAMETER_2
		mov	si,[bp+PARAMETER_1]
		push	word ptr [si]		; PARAMETER_1
		call	sub_30
		mov	sp,bp
		mov	si,[bp+PARAMETER_1]
		cmp	ax,[si+2]
		jge	loc_142			; Jump if > or =
loc_141:
		mov	ax,0
		pop	bp
		retn
loc_142:
		mov	ax,1
		pop	bp
		retn
sub_28		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_29		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ax,[bp+PARAMETER_1]
		sub	ax,1
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		mov	ax,ds:data_1e[si]
		pop	bp
		retn
sub_29		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_30		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word ptr [bp+LOCAL_2],1Fh
		cmp	word ptr [bp+PARAMETER_1],0Ch
		je	loc_144			; Jump if equal
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_3
		mov	ax,[bp+PARAMETER_1]
		add	ax,1
		push	ax			; PARAMETER_2
		mov	ax,1
		push	ax			; PARAMETER_1
		call	sub_31
		add	sp,6
		mov	di,ax
		push	di
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_3
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		mov	ax,1
		push	ax			; PARAMETER_1
		call	sub_31
		add	sp,6
		pop	di
		sub	di,ax
		mov	[bp+LOCAL_1],di
		cmp	word ptr [bp+LOCAL_1],0
		jge	loc_143			; Jump if > or =
		add	word ptr [bp+LOCAL_1],7
loc_143:
		mov	ax,[bp+LOCAL_1]
		add	ax,1Ch
		mov	[bp+LOCAL_2],ax
loc_144:
		mov	ax,[bp+LOCAL_2]
		mov	sp,bp
		pop	bp
		retn
sub_30		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_31		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		dec	word ptr [bp+PARAMETER_1]
		sub	word ptr [bp+PARAMETER_2],2
		cmp	word ptr [bp+PARAMETER_2],0
		jg	loc_145			; Jump if >
		add	word ptr [bp+PARAMETER_2],0Ch
		dec	word ptr [bp+PARAMETER_3]
loc_145:
		mov	ax,[bp+PARAMETER_2]
		mov	cx,1Ah
		imul	cx			; dx:ax = reg * ax
		sub	ax,2
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	[bp+LOCAL_2],ax
		mov	ax,[bp+PARAMETER_3]
		cwd				; Word to double word
		mov	cx,64h
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	[bp+LOCAL_1],ax
		mov	ax,[bp+PARAMETER_3]
		cwd				; Word to double word
		mov	cx,64h
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	[bp+PARAMETER_3],dx
		mov	ax,[bp+PARAMETER_3]
		add	ax,1
		mov	cl,2
		mov	dx,[bp+PARAMETER_3]
		shr	dx,cl			; Shift w/zeros fill
		add	ax,dx
		mov	cl,2
		mov	dx,[bp+LOCAL_1]
		shr	dx,cl			; Shift w/zeros fill
		add	ax,dx
		mov	cx,[bp+LOCAL_1]
		shl	cx,1			; Shift w/zeros fill
		sub	ax,cx
		mov	[bp+LOCAL_3],ax
		mov	ax,[bp+LOCAL_2]
		add	ax,[bp+LOCAL_3]
		add	ax,[bp+PARAMETER_1]
		add	ax,0AFh
		cwd				; Word to double word
		mov	cx,7
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	ax,dx
		mov	sp,bp
		pop	bp
		retn
sub_31		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_32		proc	near
		push	bp
		mov	bp,sp
		mov	ax,374h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_29e	; PARAMETER_1
		call	sub_51
		mov	sp,bp
loc_146:
		mov	ax,34Ch
		push	ax			; PARAMETER_4
		push	word ptr ds:data_6e	; PARAMETER_3
		mov	ax,374h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_5e	; PARAMETER_1
		call	sub_42
		mov	sp,bp
		cmp	byte ptr ds:data_15e,0
		je	loc_147			; Jump if equal
		cmp	byte ptr ds:data_14e,0
		jne	loc_148			; Jump if not equal
loc_147:
		jmp	short loc_150
loc_148:
		mov	ax,34Ch
		push	ax			; PARAMETER_2
		mov	ax,374h
		push	ax			; PARAMETER_1
		call	sub_58
		mov	sp,bp
		mov	ax,34Ch
		push	ax			; PARAMETER_1
		call	sub_36
		mov	sp,bp
		cmp	ax,0
		je	loc_149			; Jump if equal
		mov	ax,34Ch
		push	ax			; PARAMETER_2
		mov	ax,374h
		push	ax			; PARAMETER_1
		call	sub_96
		mov	sp,bp
		cmp	ax,0
		jne	loc_149			; Jump if not equal
		jmp	short loc_150
loc_149:
		call	sub_105
		jmp	short loc_146
loc_150:
		pop	bp
		retn
sub_32		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_33		proc	near

LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,388h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_29e	; PARAMETER_1
		call	sub_51
		add	sp,4
loc_151:
		mov	ax,39Ch
		push	ax			; PARAMETER_4
		push	word ptr ds:data_8e	; PARAMETER_3
		mov	ax,388h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_7e	; PARAMETER_1
		call	sub_42
		add	sp,8
		cmp	byte ptr ds:data_16e,0
		je	loc_152			; Jump if equal
		cmp	byte ptr ds:data_17e,0
		jne	loc_153			; Jump if not equal
loc_152:
		jmpn	loc_156
loc_153:
		mov	ax,39Ch
		push	ax			; PARAMETER_2
		mov	ax,388h
		push	ax			; PARAMETER_1
		call	sub_58
		add	sp,4
		mov	ax,39Ch
		push	ax			; PARAMETER_1
		call	sub_36
		add	sp,2
		cmp	ax,0
		je	loc_154			; Jump if equal
		mov	ax,39Ch
		push	ax			; PARAMETER_2
		mov	ax,388h
		push	ax			; PARAMETER_1
		call	sub_97
		add	sp,4
		mov	[bp+LOCAL_1],ax
		cmp	ax,0
		jne	loc_154			; Jump if not equal
		jmp	short loc_156
loc_154:
		cmp	word ptr [bp+LOCAL_1],3
		jne	loc_155			; Jump if not equal
		mov	word ptr [bp+LOCAL_4],18h
		mov	word ptr [bp+LOCAL_3],0
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_2],ax
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_11e	; PARAMETER_1
		call	sub_60
		add	sp,4
		call	sub_105
		mov	ax,3
		push	ax			; PARAMETER_1
		call	sub_65
		add	sp,2
loc_155:
		call	sub_105
		jmp	loc_151
loc_156:
		mov	sp,bp
		pop	bp
		retn
sub_33		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_34		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ch
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		mov	[bp-0Bh],al
		mov	[bp-3],al
		mov	word ptr [bp+LOCAL_5],0
loc_157:
		lea	ax,[bp-0Bh]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_18
		add	sp,4
		mov	[bp+LOCAL_1],ax
		mov	si,ax
		mov	al,[si]
		cmp	al,[bp-3]
		jne	loc_159			; Jump if not equal
		inc	word ptr [bp+LOCAL_1]
		mov	si,[bp+LOCAL_1]
		cmp	byte ptr [si],31h	; '1'
		jne	loc_158			; Jump if not equal
		inc	word ptr [bp+LOCAL_1]
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_98
		add	sp,2
loc_158:
		inc	word ptr [bp+LOCAL_5]
		jmp	short loc_157
loc_159:
		mov	sp,bp
		pop	bp
		retn
sub_34		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_35		proc	near
		push	bp
		mov	bp,sp
		mov	ax,3C4h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_29e	; PARAMETER_1
		call	sub_51
		mov	sp,bp
loc_160:
		mov	ax,13h
		push	ax			; PARAMETER_3
		mov	ax,3C4h
		push	ax			; PARAMETER_2
		push	word ptr ds:data_9e	; PARAMETER_1
		call	sub_41
		mov	sp,bp
		cmp	byte ptr ds:data_18e,0
		jne	loc_161			; Jump if not equal
		jmp	short loc_163
loc_161:
		mov	ax,3C4h
		push	ax			; PARAMETER_1
		call	sub_98
		mov	sp,bp
		cmp	ax,0
		jne	loc_162			; Jump if not equal
		jmp	short loc_163
loc_162:
		call	sub_105
		jmp	short loc_160
loc_163:
		pop	bp
		retn
sub_35		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_36		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_38
		add	sp,2
		cmp	ax,0
		jne	loc_164			; Jump if not equal
		mov	ax,0
		mov	sp,bp
		pop	bp
		retn
loc_164:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],3Ah	; ':'
		jne	loc_165			; Jump if not equal
		inc	word ptr [bp+PARAMETER_1]
loc_165:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		mov	[bp+LOCAL_1],ax
		cmp	ax,0
		je	loc_167			; Jump if equal
		push	word ptr [bp+LOCAL_1]	; PARAMETER_1
		call	sub_37
		add	sp,2
		cmp	ax,0
		jne	loc_166			; Jump if not equal
		mov	ax,0
		mov	sp,bp
		pop	bp
		retn
loc_166:
		jmp	short loc_165
loc_167:
		mov	ax,1
		mov	sp,bp
		pop	bp
		retn
sub_36		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_37		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_38
		mov	sp,bp
		cmp	ax,0
		je	loc_168			; Jump if equal
		mov	ax,1
		pop	bp
		retn
loc_168:
		cmp	byte ptr [bp+PARAMETER_1],30h	; '0'
		jb	loc_169			; Jump if below
		cmp	byte ptr [bp+PARAMETER_1],39h	; '9'
		ja	loc_169			; Jump if above
		mov	ax,1
		pop	bp
		retn
loc_169:
		cmp	byte ptr [bp+PARAMETER_1],5Ch	; '\'
		je	loc_170			; Jump if equal
		cmp	byte ptr [bp+PARAMETER_1],2Eh	; '.'
		jne	loc_171			; Jump if not equal
loc_170:
		mov	ax,1
		pop	bp
		retn
loc_171:
		cmp	byte ptr [bp+PARAMETER_1],80h
		jb	loc_172			; Jump if below
		cmp	byte ptr [bp+PARAMETER_1],0A7h
		ja	loc_172			; Jump if above
		mov	ax,1
		pop	bp
		retn
loc_172:
		mov	ax,0
		pop	bp
		retn
sub_37		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_38		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		cmp	word ptr [bp+PARAMETER_1],41h
		jl	loc_173			; Jump if <
		cmp	word ptr [bp+PARAMETER_1],5Ah
		jg	loc_173			; Jump if >
		mov	ax,1
		pop	bp
		retn
loc_173:
		cmp	word ptr [bp+PARAMETER_1],61h
		jl	loc_174			; Jump if <
		cmp	word ptr [bp+PARAMETER_1],7Ah
		jg	loc_174			; Jump if >
		mov	ax,1
		pop	bp
		retn
loc_174:
		cmp	word ptr [bp+PARAMETER_1],5Ch
		jne	loc_175			; Jump if not equal
		mov	ax,1
		pop	bp
		retn
loc_175:
		mov	ax,0
		pop	bp
		retn
sub_38		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_39		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_107
		mov	sp,bp
		mov	ax,0Eh
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_39		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_40		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_107
		mov	sp,bp
		mov	ax,0Bh
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_40		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_41		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word ptr [bp+LOCAL_3],0
		mov	word ptr [bp+LOCAL_4],18h
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_2],ax
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	word ptr [bp+LOCAL_3],19h
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_53
		add	sp,4
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_64
		add	sp,4
		mov	[bp+LOCAL_1],ax
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_52
		add	sp,2
		mov	word ptr [bp+LOCAL_3],0
		lea	ax,[bp+LOCAL_4]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		mov	ax,[bp+LOCAL_1]
		mov	sp,bp
		pop	bp
		retn
sub_41		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_42		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word ptr [bp+LOCAL_2],0
		mov	word ptr [bp+LOCAL_3],18h
		mov	ax,ds:data_24e
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	word ptr [bp+LOCAL_2],28h
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	ax,13h
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_53
		add	sp,4
		mov	word ptr [bp+LOCAL_2],0Fh
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_64
		add	sp,4
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],0
		je	loc_176			; Jump if equal
		mov	ax,13h
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_53
		add	sp,4
		mov	word ptr [bp+LOCAL_2],37h
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_64
		add	sp,4
loc_176:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_52
		add	sp,2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_52
		add	sp,2
		mov	word ptr [bp+LOCAL_2],0
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,50h
		push	ax			; PARAMETER_1
		call	sub_61
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_42		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_43		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		cmp	word ptr [bp+PARAMETER_2],0
		je	loc_177			; Jump if equal
		mov	ax,[bp+PARAMETER_1]
		mov	ds:data_84e,ax
		pop	bp
		retn
loc_177:
		mov	word ptr ds:data_85e,0
loc_178:
		mov	si,ds:data_84e
		cmp	byte ptr [si],0
		je	loc_180			; Jump if equal
		mov	si,ds:data_84e
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_44
		mov	sp,bp
		cmp	ax,0
		je	loc_179			; Jump if equal
		push	word ptr ds:data_84e	; PARAMETER_1
		call	sub_45
		mov	sp,bp
		mov	ds:data_84e,ax
		jmp	short loc_180
loc_179:
		mov	ax,ds:data_84e
		inc	word ptr ds:data_84e
		mov	si,ax
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	di,ax
		mov	al,[si]
		mov	[di],al
		inc	word ptr ds:data_85e
		jmp	short loc_178
loc_180:
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		mov	ax,ds:data_85e
		pop	bp
		retn
sub_43		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_44		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		cmp	byte ptr [bp+PARAMETER_1],20h	; ' '
		je	loc_181			; Jump if equal
		cmp	byte ptr [bp+PARAMETER_1],2Dh	; '-'
		je	loc_181			; Jump if equal
		cmp	byte ptr [bp+PARAMETER_1],2Fh	; '/'
		je	loc_181			; Jump if equal
		cmp	byte ptr [bp+PARAMETER_1],3Ah	; ':'
		jne	loc_182			; Jump if not equal
loc_181:
		mov	ax,1
		pop	bp
		retn
loc_182:
		mov	ax,0
		pop	bp
		retn
sub_44		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_45		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
loc_183:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_184			; Jump if equal
		mov	si,[bp+PARAMETER_1]
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_44
		mov	sp,bp
		cmp	ax,0
		je	loc_184			; Jump if equal
		inc	word ptr [bp+PARAMETER_1]
		jmp	short loc_183
loc_184:
		mov	ax,[bp+PARAMETER_1]
		pop	bp
		retn
sub_45		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_46		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],1
loc_185:
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],0
		je	loc_187			; Jump if equal
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jne	loc_186			; Jump if not equal
		mov	ax,[bp+LOCAL_1]
		mov	sp,bp
		pop	bp
		retn
loc_186:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_47
		add	sp,2
		mov	[bp+PARAMETER_2],ax
		inc	word ptr [bp+LOCAL_1]
		jmp	short loc_185
loc_187:
		mov	ax,0
		mov	sp,bp
		pop	bp
		retn
sub_46		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_47		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
loc_188:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		cmp	byte ptr [si],0
		je	loc_189			; Jump if equal
		jmp	short loc_188
loc_189:
		mov	ax,[bp+PARAMETER_1]
		pop	bp
		retn
sub_47		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_48		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
loc_190:
		mov	si,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	al,[si]
		cmp	al,[di]
		jne	loc_192			; Jump if not equal
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		jne	loc_191			; Jump if not equal
		mov	ax,0
		pop	bp
		retn
loc_191:
		inc	word ptr [bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_2]
		jmp	short loc_190
loc_192:
		mov	si,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	al,[si]
		cmp	al,[di]
		jae	loc_193			; Jump if above or =
		mov	al,1
		mov	ah,0
		jmp	short loc_194
loc_193:
		mov	ax,0FFFFh
loc_194:
		pop	bp
		retn
sub_48		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_49		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		jne	loc_195			; Jump if not equal
		mov	sp,bp
		pop	bp
		retn
loc_195:
		mov	ax,[bp+PARAMETER_1]
		add	ax,1
		mov	[bp+LOCAL_1],ax
loc_196:
		mov	si,[bp+LOCAL_1]
		cmp	byte ptr [si],0
		je	loc_197			; Jump if equal
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	di,ax
		mov	al,[si]
		mov	[di],al
		jmp	short loc_196
loc_197:
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],20h	; ' '
		mov	sp,bp
		pop	bp
		retn
sub_49		endp

			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	si,[bp+4]
		cmp	byte ptr [si],0
		jne	loc_198			; Jump if not equal
		mov	sp,bp
		pop	bp
		retn
loc_198:
		mov	word ptr [bp-4],0
loc_199:
		mov	si,[bp+4]
		cmp	byte ptr [si],0
		je	loc_200			; Jump if equal
		inc	word ptr [bp+4]
		inc	word ptr [bp-4]
		jmp	short loc_199
loc_200:
		mov	ax,[bp+4]
		sub	ax,1
		mov	[bp-2],ax
loc_201:
		cmp	word ptr [bp-4],0
		je	loc_202			; Jump if equal
		mov	ax,[bp-2]
		dec	word ptr [bp-2]
		mov	si,ax
		mov	ax,[bp+4]
		dec	word ptr [bp+4]
		mov	di,ax
		mov	al,[si]
		mov	[di],al
		dec	word ptr [bp-4]
		jmp	short loc_201
loc_202:
		mov	si,[bp-2]
		mov	byte ptr [si],20h	; ' '
		mov	sp,bp
		pop	bp
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_50		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,10h
		lea	ax,[bp-0Fh]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_51
		add	sp,4
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_51
		add	sp,4
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		lea	ax,[bp-0Fh]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_51
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_50		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_51		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
loc_203:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	ax,[bp+PARAMETER_2]
		inc	word ptr [bp+PARAMETER_2]
		mov	di,ax
		mov	al,[si]
		mov	[di],al
		cmp	al,0
		je	loc_204			; Jump if equal
		jmp	short loc_203
loc_204:
		pop	bp
		retn
sub_51		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_52		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],0
loc_205:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		jne	loc_206			; Jump if not equal
		jmpn	loc_208
loc_206:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],20h	; ' '
		je	loc_207			; Jump if equal
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],2Eh	; '.'
		je	loc_207			; Jump if equal
		mov	word ptr [bp+LOCAL_1],0FFFFh
loc_207:
		inc	word ptr [bp+LOCAL_1]
		inc	word ptr [bp+PARAMETER_1]
		jmp	short loc_205
loc_208:
		mov	ax,[bp+PARAMETER_1]
		sub	ax,[bp+LOCAL_1]
		mov	si,ax
		mov	byte ptr [si],0
		mov	sp,bp
		pop	bp
		retn
sub_52		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_53		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
loc_209:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_210			; Jump if equal
		cmp	word ptr [bp+PARAMETER_2],0
		je	loc_210			; Jump if equal
		inc	word ptr [bp+PARAMETER_1]
		dec	word ptr [bp+PARAMETER_2]
		jmp	short loc_209
loc_210:
		mov	ax,[bp+PARAMETER_2]
		dec	word ptr [bp+PARAMETER_2]
		cmp	ax,0
		je	loc_211			; Jump if equal
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	byte ptr [si],20h	; ' '
		jmp	short loc_210
loc_211:
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		pop	bp
		retn
sub_53		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_54		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
loc_212:
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],0
		je	loc_214			; Jump if equal
		mov	si,[bp+PARAMETER_2]
		mov	al,[si]
		cmp	al,[bp+PARAMETER_1]
		jne	loc_213			; Jump if not equal
		jmp	short loc_214
loc_213:
		inc	word ptr [bp+PARAMETER_2]
		jmp	short loc_212
loc_214:
		mov	ax,[bp+PARAMETER_2]
		pop	bp
		retn
sub_54		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_55		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		and	byte ptr [bp+PARAMETER_1],0Fh
		cmp	byte ptr [bp+PARAMETER_1],9
		jbe	loc_215			; Jump if below or =
		add	byte ptr [bp+PARAMETER_1],7
loc_215:
		mov	al,[bp+PARAMETER_1]
		add	al,30h			; '0'
		mov	ah,0
		pop	bp
		retn
sub_55		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_56		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_57
		add	sp,2
		mov	[bp+LOCAL_1],ax
		cmp	ax,0
		jge	loc_216			; Jump if > or =
		mov	ax,0FFFFh
		mov	sp,bp
		pop	bp
		retn
loc_216:
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_219			; Jump if equal
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_57
		add	sp,2
		mov	[bp+LOCAL_2],ax
		cmp	ax,0
		jge	loc_217			; Jump if > or =
		jmp	short loc_219
loc_217:
		cmp	word ptr [bp+LOCAL_1],3E8h
		jle	loc_218			; Jump if < or =
		mov	ax,0FFFFh
		mov	sp,bp
		pop	bp
		retn
loc_218:
		mov	ax,[bp+LOCAL_1]
		mov	cx,0Ah
		imul	cx			; dx:ax = reg * ax
		add	ax,[bp+LOCAL_2]
		mov	[bp+LOCAL_1],ax
		jmp	short loc_216
loc_219:
		mov	ax,[bp+LOCAL_1]
		mov	sp,bp
		pop	bp
		retn
sub_56		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_57		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		mov	[bp+LOCAL_1],ax
		cmp	ax,30h
		jb	loc_220			; Jump if below
		cmp	word ptr [bp+LOCAL_1],39h
		jle	loc_221			; Jump if < or =
loc_220:
		mov	ax,0FFFFh
		mov	sp,bp
		pop	bp
		retn
loc_221:
		mov	ax,[bp+LOCAL_1]
		sub	ax,30h
		mov	sp,bp
		pop	bp
		retn
sub_57		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_58		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_2
		mov	ax,2Eh
		push	ax			; PARAMETER_1
		call	sub_54
		mov	sp,bp
		mov	[bp+PARAMETER_1],ax
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		jne	loc_222			; Jump if not equal
		pop	bp
		retn
loc_222:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		mov	ax,2Eh
		push	ax			; PARAMETER_1
		call	sub_54
		mov	sp,bp
		mov	[bp+PARAMETER_2],ax
		mov	si,[bp+PARAMETER_2]
		cmp	byte ptr [si],0
		je	loc_223			; Jump if equal
		pop	bp
		retn
loc_223:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_51
		mov	sp,bp
		pop	bp
		retn
sub_58		endp

			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		sub	sp,2
loc_224:
		mov	ax,[bp+4]
		inc	word ptr [bp+4]
		mov	si,ax
		mov	al,[si]
		mov	[bp-1],al
		cmp	al,0
		je	loc_225			; Jump if equal
		mov	al,[bp-1]
		mov	ah,0
		push	ax
		call	sub_115
		add	sp,2
		jmp	short loc_224
loc_225:
		mov	sp,bp
		pop	bp
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_59		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ah
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
		mov	word ptr [bp+LOCAL_2],0Ah
loc_226:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	[bp-1],al
		cmp	al,2Eh			; '.'
		je	loc_227			; Jump if equal
		cmp	byte ptr [bp-1],0
		je	loc_227			; Jump if equal
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	al,[bp-1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		dec	word ptr [bp+LOCAL_2]
		jmp	short loc_226
loc_227:
		mov	ax,[bp+LOCAL_2]
		dec	word ptr [bp+LOCAL_2]
		cmp	ax,0
		jne	loc_228			; Jump if not equal
		jmpn	loc_229
loc_228:
		lea	ax,[bp+LOCAL_5]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		jmp	short loc_227
loc_229:
		mov	sp,bp
		pop	bp
		retn
sub_59		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_60		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_15	=	-1Eh			; bp+0FFE2h
LOCAL_14	=	-1Ch			; bp+0FFE4h
LOCAL_13	=	-1Ah			; bp+0FFE6h
LOCAL_12	=	-18h			; bp+0FFE8h
LOCAL_11	=	-16h			; bp+0FFEAh
LOCAL_10	=	-14h			; bp+0FFECh
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0A8h
		mov	si,[bp+PARAMETER_2]
		mov	si,[si+4]
		mov	ax,si
		mov	[bp-1],al
		mov	word ptr ss:data_139e[bp],0
		lea	ax,cs:[0FF5Dh][bp]	; Load effective addr
		mov	ss:data_140e[bp],ax
loc_230:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	al,[si]
		mov	[bp+LOCAL_1],al
		cmp	al,0
		je	loc_231			; Jump if equal
		mov	ax,ss:data_140e[bp]
		inc	word ptr ss:data_140e[bp]
		mov	si,ax
		mov	al,[bp+LOCAL_1]
		mov	[si],al
		mov	ax,ss:data_140e[bp]
		inc	word ptr ss:data_140e[bp]
		mov	si,ax
		mov	al,[bp-1]
		mov	[si],al
		inc	word ptr ss:data_139e[bp]
		jmp	short loc_230
loc_231:
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_104
		add	sp,2
		cmp	word ptr ss:data_139e[bp],0
		je	loc_232			; Jump if equal
		push	word ptr ss:data_139e[bp]	; PARAMETER_2
		lea	ax,cs:[0FF5Dh][bp]	; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_102
		add	sp,4
loc_232:
		mov	sp,bp
		pop	bp
		retn
sub_60		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_61		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
loc_233:
		mov	ax,[bp+PARAMETER_1]
		dec	word ptr [bp+PARAMETER_1]
		cmp	ax,0
		je	loc_234			; Jump if equal
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,20h
		push	ax			; PARAMETER_1
		call	sub_103
		add	sp,4
		jmp	short loc_233
loc_234:
		mov	sp,bp
		pop	bp
		retn
sub_61		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_62		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word ptr [bp+LOCAL_2],3E8h
		mov	word ptr [bp+LOCAL_3],0
loc_235:
		cmp	word ptr [bp+LOCAL_2],0
		je	loc_238			; Jump if equal
		mov	ax,[bp+PARAMETER_1]
		cwd				; Word to double word
		idiv	word ptr [bp+LOCAL_2]	; ax,dxrem=dx:ax/data
		mov	[bp+LOCAL_1],ax
		mov	ax,[bp+PARAMETER_1]
		cwd				; Word to double word
		idiv	word ptr [bp+LOCAL_2]	; ax,dxrem=dx:ax/data
		mov	[bp+PARAMETER_1],dx
		cmp	word ptr [bp+LOCAL_1],0
		jne	loc_236			; Jump if not equal
		cmp	word ptr [bp+LOCAL_3],0
		je	loc_237			; Jump if equal
loc_236:
		mov	ax,[bp+LOCAL_1]
		add	ax,30h
		mov	cx,[bp+PARAMETER_2]
		inc	word ptr [bp+PARAMETER_2]
		mov	si,cx
		mov	[si],al
		mov	word ptr [bp+LOCAL_3],0FFFFh
loc_237:
		mov	ax,[bp+LOCAL_2]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		mov	[bp+LOCAL_2],ax
		jmp	short loc_235
loc_238:
		mov	si,[bp+PARAMETER_2]
		mov	byte ptr [si],0
		mov	sp,bp
		pop	bp
		retn
sub_62		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_63		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],0
loc_239:
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		cmp	byte ptr [si],0
		je	loc_240			; Jump if equal
		inc	word ptr [bp+LOCAL_1]
		jmp	short loc_239
loc_240:
		mov	ax,[bp+LOCAL_1]
		mov	sp,bp
		pop	bp
		retn
sub_63		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_64		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ch
		mov	ax,[bp+PARAMETER_1]
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_82
		add	sp,4
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_104
		add	sp,2
		mov	word ptr [bp+LOCAL_2],0
		call	sub_84
loc_241:
		call	sub_85
		mov	[bp+LOCAL_3],ax
		cmp	ax,0Dh
		jne	loc_242			; Jump if not equal
		jmp	loc_249
loc_242:
		cmp	word ptr [bp+LOCAL_3],0FFA6h
		jne	loc_243			; Jump if not equal
		jmp	loc_249
loc_243:
		cmp	word ptr [bp+LOCAL_3],0FF80h
		jne	loc_244			; Jump if not equal
		jmp	loc_249
loc_244:
		mov	bx,[bp+LOCAL_3]
		call	sub_119
		add	ax,8E00h
;*		dec	sp
		db	0FFh,0CCh		;  Fixup - byte match
		and	[bx+si],cl
;*		add	ch,ah
		db	 00h,0E5h		;  Fixup - byte match
		and	ss:data_138e[bp+di],ah
		and	data_116[bp+si],ah
		and	[bx+si],ax
		sub	byte ptr [bx+di],21h	; '!'
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_49
		add	sp,2
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
		jmpn	loc_248
			                        ;* No entry point to code
		cmp	word ptr [bp+LOCAL_2],1
		jl	loc_245			; Jump if <
		mov	ax,[bp+PARAMETER_1]
		sub	ax,1
		push	ax			; PARAMETER_1
		call	sub_49
		add	sp,2
loc_245:
		cmp	word ptr [bp+LOCAL_2],0
		je	loc_246			; Jump if equal
		dec	word ptr [bp+LOCAL_5]
		dec	word ptr [bp+LOCAL_2]
		dec	word ptr [bp+PARAMETER_1]
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_60
		add	sp,4
loc_246:
		jmp	short loc_248
			                        ;* No entry point to code
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_247			; Jump if equal
		inc	word ptr [bp+LOCAL_5]
		inc	word ptr [bp+LOCAL_2]
		inc	word ptr [bp+PARAMETER_1]
loc_247:
		jmp	short loc_248
			                        ;* No entry point to code
		mov	si,[bp+PARAMETER_1]
		cmp	byte ptr [si],0
		je	loc_248			; Jump if equal
		cmp	word ptr [bp+LOCAL_3],7Ah
		jg	loc_248			; Jump if >
		cmp	word ptr [bp+LOCAL_3],21h
		jl	loc_248			; Jump if <
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+LOCAL_3]	; PARAMETER_1
		call	sub_103
		add	sp,4
		inc	word ptr [bp+LOCAL_2]
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	ax,[bp+LOCAL_3]
		mov	[si],al
loc_248:
		lea	ax,[bp+LOCAL_6]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_104
		add	sp,2
		jmp	loc_241
loc_249:
		call	sub_83
		cmp	word ptr [bp+LOCAL_3],0FF80h
		jne	loc_250			; Jump if not equal
		mov	si,[bp+LOCAL_1]
		mov	byte ptr [si],0
loc_250:
		mov	ax,[bp+LOCAL_3]
		mov	sp,bp
		pop	bp
		retn
sub_64		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_65		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,8
loc_251:
		cmp	word ptr [bp+PARAMETER_1],0
		je	loc_254			; Jump if equal
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_91
		add	sp,2
		mov	ax,[bp+LOCAL_1]
		mov	[bp+LOCAL_4],ax
loc_252:
		mov	ax,[bp+LOCAL_4]
		cmp	ax,[bp+LOCAL_1]
		jne	loc_253			; Jump if not equal
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_91
		add	sp,2
		jmp	short loc_252
loc_253:
		dec	word ptr [bp+PARAMETER_1]
		jmp	short loc_251
loc_254:
		mov	sp,bp
		pop	bp
		retn
sub_65		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_66		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_82
		add	sp,4
loc_255:
		cmp	word ptr [bp+PARAMETER_3],0
		jl	loc_256			; Jump if <
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_4
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_67
		add	sp,8
		inc	word ptr [bp+LOCAL_2]
		inc	word ptr [bp+LOCAL_3]
		sub	word ptr [bp+PARAMETER_3],2
		sub	word ptr [bp+PARAMETER_2],2
		jmp	short loc_255
loc_256:
		mov	sp,bp
		pop	bp
		retn
sub_66		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_67		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah

		push	bp
		mov	bp,sp
		mov	ax,563Eh
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_82
		mov	sp,bp
		mov	ax,563Eh
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_68
		mov	sp,bp
		mov	ax,563Eh
		push	ax			; PARAMETER_3
		mov	ax,[bp+PARAMETER_3]
		add	ax,1
		push	ax			; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_69
		mov	sp,bp
		mov	ax,563Eh
		push	ax			; PARAMETER_2
		push	word ptr [bp+PARAMETER_4]	; PARAMETER_1
		call	sub_82
		mov	sp,bp
		mov	ax,563Eh
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_69
		mov	sp,bp
		mov	ax,563Eh
		push	ax			; PARAMETER_3
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_68
		mov	sp,bp
		pop	bp
		retn
sub_67		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_68		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8

		push	bp
		mov	bp,sp
loc_257:
		mov	ax,[bp+PARAMETER_2]
		dec	word ptr [bp+PARAMETER_2]
		cmp	ax,0
		je	loc_258			; Jump if equal
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		mov	sp,bp
		jmp	short loc_257
loc_258:
		pop	bp
		retn
sub_68		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_69		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8

		push	bp
		mov	bp,sp
loc_259:
		mov	ax,[bp+PARAMETER_2]
		dec	word ptr [bp+PARAMETER_2]
		cmp	ax,0
		je	loc_260			; Jump if equal
		push	word ptr [bp+PARAMETER_3]	; PARAMETER_2
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_103
		mov	sp,bp
		mov	si,[bp+PARAMETER_3]
		dec	word ptr [si+2]
		mov	si,[bp+PARAMETER_3]
		inc	word ptr [si]
		jmp	short loc_259
loc_260:
		pop	bp
		retn
sub_69		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_70		proc	near

LOCAL_15	=	-1Eh			; bp+0FFE2h
LOCAL_14	=	-1Ch			; bp+0FFE4h
LOCAL_13	=	-1Ah			; bp+0FFE6h
LOCAL_12	=	-18h			; bp+0FFE8h
LOCAL_11	=	-16h			; bp+0FFEAh
LOCAL_10	=	-14h			; bp+0FFECh
LOCAL_9		=	-12h			; bp+0FFEEh
LOCAL_8		=	-10h			; bp+0FFF0h
LOCAL_7		=	-0Eh			; bp+0FFF2h
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,5Ch
		lea	ax,[bp-51h]		; Load effective addr
		mov	[bp-53h],ax
		mov	word ptr [bp-56h],50h
loc_261:
		cmp	word ptr [bp-56h],0
		je	loc_262			; Jump if equal
		mov	ax,[bp-53h]
		inc	word ptr [bp-53h]
		mov	si,ax
		mov	byte ptr [si],20h	; ' '
		dec	word ptr [bp-56h]
		jmp	short loc_261
loc_262:
		mov	word ptr [bp-5Ch],0
		mov	word ptr [bp-5Ah],0
		mov	si,[bp-53h]
		mov	byte ptr [si],0
		mov	ax,ds:data_24e
		mov	[bp-58h],ax
		mov	word ptr [bp-56h],19h
loc_263:
		cmp	word ptr [bp-56h],0
		je	loc_264			; Jump if equal
		lea	ax,[bp-5Ch]		; Load effective addr
		push	ax			; PARAMETER_2
		lea	ax,[bp-51h]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		inc	word ptr [bp-5Ch]
		dec	word ptr [bp-56h]
		jmp	short loc_263
loc_264:
		mov	sp,bp
		pop	bp
		retn
sub_70		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_71		proc	near

LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word ptr [bp+LOCAL_2],1
		mov	word ptr [bp+LOCAL_3],0
		mov	ax,ds:data_25e
		mov	[bp+LOCAL_1],ax
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,3D8h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	word ptr [bp+LOCAL_2],0
		mov	word ptr [bp+LOCAL_3],16h
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,3E1h
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		add	word ptr [bp+LOCAL_2],28h
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		mov	ax,40Ah
		push	ax			; PARAMETER_1
		call	sub_60
		add	sp,4
		inc	word ptr [bp+LOCAL_3]
		mov	word ptr [bp+LOCAL_2],0
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_12e	; PARAMETER_1
		call	sub_60
		add	sp,4
		add	word ptr [bp+LOCAL_2],28h
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_2
		push	word ptr ds:data_13e	; PARAMETER_1
		call	sub_60
		add	sp,4
		mov	sp,bp
		pop	bp
		retn
sub_71		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_72		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_6		=	-0Ch			; bp+0FFF4h
LOCAL_5		=	-0Ah			; bp+0FFF6h
LOCAL_4		=	-8			; bp+0FFF8h
LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,0Ch
		dec	word ptr [bp+PARAMETER_2]
		mov	ax,[bp+PARAMETER_2]
		shr	ax,1			; Shift w/zeros fill
		mov	[bp+LOCAL_6],ax
loc_265:
		cmp	word ptr [bp+LOCAL_6],0
		jg	loc_266			; Jump if >
		jmp	loc_275
loc_266:
		mov	word ptr [bp+LOCAL_2],0
		mov	ax,[bp+LOCAL_6]
		mov	[bp+LOCAL_4],ax
loc_267:
		mov	ax,[bp+LOCAL_4]
		cmp	ax,[bp+PARAMETER_2]
		jle	loc_268			; Jump if < or =
		jmp	loc_274
loc_268:
		mov	ax,[bp+LOCAL_2]
		mov	[bp+LOCAL_3],ax
		mov	ax,[bp+LOCAL_4]
		mov	[bp+LOCAL_5],ax
loc_269:
		mov	ax,[bp+LOCAL_5]
		cmp	ax,[bp+LOCAL_4]
		jle	loc_270			; Jump if < or =
		jmp	loc_273
loc_270:
		mov	ax,[bp+LOCAL_5]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		push	word ptr [si]		; PARAMETER_2
		mov	ax,[bp+LOCAL_3]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		push	word ptr [si]		; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jl	loc_271			; Jump if <
		jmpn	loc_273
loc_271:
		mov	ax,[bp+LOCAL_3]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		mov	si,[si]
		mov	[bp+LOCAL_1],si
		mov	ax,[bp+LOCAL_5]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		mov	ax,[bp+LOCAL_3]
		shl	ax,1			; Shift w/zeros fill
		mov	di,ax
		add	di,[bp+PARAMETER_1]
		mov	si,[si]
		mov	[di],si
		mov	ax,[bp+LOCAL_5]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		mov	ax,[bp+LOCAL_1]
		mov	[si],ax
		mov	ax,[bp+LOCAL_6]
		sub	[bp+LOCAL_3],ax
		mov	ax,[bp+LOCAL_6]
		sub	[bp+LOCAL_5],ax
		cmp	word ptr [bp+LOCAL_3],0
		jl	loc_272			; Jump if <
		mov	ax,[bp+LOCAL_5]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		push	word ptr [si]		; PARAMETER_2
		mov	ax,[bp+LOCAL_3]
		shl	ax,1			; Shift w/zeros fill
		mov	si,ax
		add	si,[bp+PARAMETER_1]
		push	word ptr [si]		; PARAMETER_1
		call	sub_48
		add	sp,4
		cmp	ax,0
		jl	loc_271			; Jump if <
loc_272:
		mov	ax,[bp+LOCAL_6]
		add	[bp+LOCAL_3],ax
		mov	ax,[bp+LOCAL_6]
		add	[bp+LOCAL_5],ax
		jmp	loc_269
loc_273:
		inc	word ptr [bp+LOCAL_2]
		inc	word ptr [bp+LOCAL_4]
		jmp	loc_267
loc_274:
		mov	ax,[bp+LOCAL_6]
		shr	ax,1			; Shift w/zeros fill
		mov	[bp+LOCAL_6],ax
		jmp	loc_265
loc_275:
		mov	sp,bp
		pop	bp
		retn
sub_72		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_73		proc	near

LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],46Fh
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	al,[si]
		and	al,ds:data_30e
		mov	ah,0
		mov	ds:data_24e,ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	al,[si]
		and	al,ds:data_30e
		mov	ah,0
		mov	ds:data_25e,ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	al,[si]
		and	al,ds:data_30e
		mov	ah,0
		mov	ds:data_26e,ax
		mov	si,[bp+LOCAL_1]
		mov	al,[si]
		and	al,ds:data_30e
		mov	ah,0
		mov	ds:data_27e,ax
		mov	sp,bp
		pop	bp
		retn
sub_73		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_74		proc	near

LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],46Fh
		mov	al,ds:data_30e
		mov	ah,0
		mov	cx,ds:data_24e
		and	cx,ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	[si],cl
		mov	al,ds:data_30e
		mov	ah,0
		mov	cx,ds:data_25e
		and	cx,ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	[si],cl
		mov	al,ds:data_30e
		mov	ah,0
		mov	cx,ds:data_26e
		and	cx,ax
		mov	ax,[bp+LOCAL_1]
		inc	word ptr [bp+LOCAL_1]
		mov	si,ax
		mov	[si],cl
		mov	al,ds:data_30e
		mov	ah,0
		mov	cx,ds:data_27e
		and	cx,ax
		mov	si,[bp+LOCAL_1]
		mov	[si],cl
		mov	sp,bp
		pop	bp
		retn
sub_74		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_75		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,[bp+PARAMETER_1]
		cmp	bx,0FFB1h
		jge	loc_276			; Jump if > or =
		jmp	loc_284
loc_276:
		cmp	bx,0FFB4h
		jle	loc_277			; Jump if < or =
		jmp	loc_284
loc_277:
		sub	bx,0FFB1h
		shl	bx,1			; Shift w/zeros fill
		jmp	word ptr cs:data_74[bx]	;*4 entries
data_74		dw	offset loc_278		; Data table (indexed access)
data_75		dw	offset loc_278
data_76		dw	offset loc_281
data_77		dw	offset loc_281

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_278:
		mov	ax,ds:data_24e
		and	ax,0Fh
		mov	[bp+LOCAL_2],ax
		mov	cl,4
		mov	ax,ds:data_24e
		shr	ax,cl			; Shift w/zeros fill
		mov	[bp+LOCAL_1],ax
		cmp	word ptr [bp+PARAMETER_1],0FFB2h
		jne	loc_279			; Jump if not equal
		mov	ax,[bp+LOCAL_2]
		add	ax,1
		and	ax,0Fh
		mov	[bp+LOCAL_2],ax
		jmp	short loc_280
loc_279:
		mov	ax,[bp+LOCAL_1]
		add	ax,1
		and	ax,0Fh
		mov	[bp+LOCAL_1],ax
loc_280:
		mov	cl,4
		mov	ax,[bp+LOCAL_1]
		shl	ax,cl			; Shift w/zeros fill
		or	ax,[bp+LOCAL_2]
		mov	cl,ds:data_30e
		mov	ch,0
		and	ax,cx
		mov	ds:data_24e,ax
		mov	cl,4
		mov	ax,[bp+LOCAL_2]
		shl	ax,cl			; Shift w/zeros fill
		or	ax,[bp+LOCAL_1]
		mov	cl,ds:data_30e
		mov	ch,0
		and	ax,cx
		mov	ds:data_25e,ax
		jmpn	loc_284

;ƒƒƒƒƒ Indexed Entry Point ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ

loc_281:
		mov	ax,ds:data_26e
		and	ax,0Fh
		mov	[bp+LOCAL_2],ax
		mov	cl,4
		mov	ax,ds:data_26e
		shr	ax,cl			; Shift w/zeros fill
		mov	[bp+LOCAL_1],ax
		cmp	word ptr [bp+PARAMETER_1],0FFB4h
		jne	loc_282			; Jump if not equal
		mov	ax,[bp+LOCAL_2]
		add	ax,1
		and	ax,0Fh
		mov	[bp+LOCAL_2],ax
		jmp	short loc_283
loc_282:
		mov	ax,[bp+LOCAL_1]
		add	ax,1
		and	ax,0Fh
		mov	[bp+LOCAL_1],ax
loc_283:
		mov	cl,4
		mov	ax,[bp+LOCAL_1]
		shl	ax,cl			; Shift w/zeros fill
		or	ax,[bp+LOCAL_2]
		mov	cl,ds:data_30e
		mov	ch,0
		and	ax,cx
		mov	ds:data_26e,ax
		mov	cl,4
		mov	ax,[bp+LOCAL_2]
		shl	ax,cl			; Shift w/zeros fill
		or	ax,[bp+LOCAL_1]
		mov	cl,ds:data_30e
		mov	ch,0
		and	ax,cx
		mov	ds:data_27e,ax
loc_284:
		call	sub_74
		mov	ax,46Fh
		push	ax			; PARAMETER_1
		call	sub_110
		add	sp,2
		mov	sp,bp
		pop	bp
		retn
sub_75		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_76		proc	near
		push	bp
		mov	bp,sp
		mov	word ptr ds:data_24e,7
		mov	word ptr ds:data_25e,70h
		mov	word ptr ds:data_26e,0Fh
		mov	word ptr ds:data_27e,78h
		call	sub_74
		pop	bp
		retn
sub_76		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_77		proc	near

PARAMETER_1	=	4			; bp+4
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		push	word ptr [bp+PARAMETER_1]
		call	sub_88
		push	ax
		call	sub_62
		add	sp,4
		add	word ptr [bp+PARAMETER_1],4
		call	sub_87
		mov	[bp+LOCAL_1],ax
		mov	ax,[bp+LOCAL_1]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		add	ax,30h
		mov	cx,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,cx
		mov	[si],al
		mov	ax,[bp+LOCAL_1]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		add	dx,30h
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	[si],dl
		call	sub_86
		mov	[bp+LOCAL_1],ax
		mov	ax,[bp+LOCAL_1]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		add	ax,30h
		mov	cx,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,cx
		mov	[si],al
		mov	ax,[bp+LOCAL_1]
		cwd				; Word to double word
		mov	cx,0Ah
		idiv	cx			; ax,dx rem=dx:ax/reg
		add	dx,30h
		mov	ax,[bp+PARAMETER_1]
		inc	word ptr [bp+PARAMETER_1]
		mov	si,ax
		mov	[si],dl
		mov	si,[bp+PARAMETER_1]
		mov	byte ptr [si],0
		mov	sp,bp
		pop	bp
		retn
sub_77		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_78		proc	near

LOCAL_3		=	-6			; bp+0FFFAh
LOCAL_2		=	-4			; bp+0FFFCh
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word ptr [bp+LOCAL_3],0
		mov	word ptr [bp+LOCAL_2],4Fh
		lea	ax,[bp+LOCAL_3]		; Load effective addr
		push	ax			; PARAMETER_1
		call	sub_104
		add	sp,2
		mov	ax,0Fh
		push	ax			; PARAMETER_1
		call	sub_114
		add	sp,2
		mov	sp,bp
		pop	bp
		retn
sub_78		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_79		proc	near
		push	bp
		mov	bp,sp
		mov	ax,10h
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_79		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_80		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ax,[bp+PARAMETER_1]
		mov	al,ah
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_81
		mov	sp,bp
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_81
		mov	sp,bp
		pop	bp
		retn
sub_80		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_81		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	cl,4
		mov	al,[bp+PARAMETER_1]
		shr	al,cl			; Shift w/zeros fill
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_55
		mov	sp,bp
		push	ax
		call	sub_115
		mov	sp,bp
		mov	al,[bp+PARAMETER_1]
		mov	ah,0
		push	ax			; PARAMETER_1
		call	sub_55
		mov	sp,bp
		push	ax
		call	sub_115
		mov	sp,bp
		pop	bp
		retn
sub_81		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_82		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	si,[si]
		mov	[di],si
		mov	si,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	si,[si+2]
		mov	[di+2],si
		mov	si,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	si,[si+4]
		mov	[di+4],si
		pop	bp
		retn
sub_82		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_83		proc	near
		push	bp
		mov	bp,sp
		mov	ax,24h
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_83		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_84		proc	near
		push	bp
		mov	bp,sp
		mov	ax,25h
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_84		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_85		proc	near
		push	bp
		mov	bp,sp
		mov	ax,0
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_85		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_86		proc	near
		push	bp
		mov	bp,sp
		mov	ah,2Ah
		int	21h			; DOS Services  ah=function 2Ah
						;  get date, cx=year, dh=month
						;   dl=day, al=day-of-week 0=SUN
		mov	al,dl
		xor	ah,ah			; Zero register
		pop	bp
		retn
sub_86		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_87		proc	near
		push	bp
		mov	bp,sp
		mov	ah,2Ah
		int	21h			; DOS Services  ah=function 2Ah
						;  get date, cx=year, dh=month
						;   dl=day, al=day-of-week 0=SUN
		mov	al,dh
		xor	ah,ah			; Zero register
		pop	bp
		retn
sub_87		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_88		proc	near
		push	bp
		mov	bp,sp
		mov	ah,2Ah
		int	21h			; DOS Services  ah=function 2Ah
						;  get date, cx=year, dh=month
						;   dl=day, al=day-of-week 0=SUN
		mov	ax,cx
		pop	bp
		retn
sub_88		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_89		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		mov	ax,[si]
		mov	dx,[si+2]
		mov	dh,al
		mov	cx,[si+4]
		mov	ah,2Bh
		int	21h			; DOS Services  ah=function 2Bh
						;  set date, cx=year, dx=mon/day
		mov	ah,0
		pop	bp
		retn
sub_89		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_90		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		mov	ax,[si]
		mov	cx,[si+2]
		mov	ch,al
		mov	ah,2Dh
		int	21h			; DOS Services  ah=function 2Dh
						;  set time, cx=hrs/min, dx=sec
		jc	loc_285			; Jump if carry Set
		mov	al,0
loc_285:
		mov	ah,0
		pop	bp
		retn
sub_90		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_91		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ah,2Ch
		int	21h			; DOS Services  ah=function 2Ch
						;  get time, cx=hrs/min, dx=sec
		mov	si,[bp+PARAMETER_1]
		xor	ax,ax			; Zero register
		mov	al,ch
		mov	[si],ax
		mov	al,cl
		mov	[si+2],ax
		mov	al,dh
		mov	[si+4],ax
		pop	bp
		retn
sub_91		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_92		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	dx,[bp+PARAMETER_1]
		mov	cx,0
		mov	ah,4Eh
		int	21h			; DOS Services  ah=function 4Eh
						;  find 1st filenam match @ds:dx
		jc	loc_286			; Jump if carry Set
		mov	al,0
loc_286:
		mov	ah,0
		pop	bp
		retn
sub_92		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_93		proc	near
		push	bp
		mov	bp,sp
		mov	ah,4Fh
		int	21h			; DOS Services  ah=function 4Fh
						;  find next filename match
		mov	ah,0
		jc	loc_287			; Jump if carry Set
		mov	al,0
loc_287:
		pop	bp
		retn
sub_93		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_94		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		push	ds
		push	es
		push	ds
		pop	es
		mov	di,[bp+PARAMETER_2]
		mov	si,[bp+PARAMETER_1]
		mov	ds,[si]
		mov	si,es:[si+2]
		mov	cx,0Dh
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		pop	es
		pop	ds
		pop	bp
		retn
sub_94		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_95		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ah,2Fh
		int	21h			; DOS Services  ah=function 2Fh
						;  get DTA ptr into es:bx
		mov	si,[bp+PARAMETER_1]
		mov	[si],es
		add	bx,1Eh
		mov	[si+2],bx
		pop	bp
		retn
sub_95		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_96		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		push	ds
		pop	es
		mov	dx,[bp+PARAMETER_1]
		mov	di,[bp+PARAMETER_2]
		mov	ah,56h
		int	21h			; DOS Services  ah=function 56h
						;  rename file @ds:dx to @es:di
		jc	loc_288			; Jump if carry Set
		mov	al,0
loc_288:
		mov	ah,0
		pop	bp
		retn
sub_96		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_97		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
LOCAL_1		=	-2			; bp+0FFFEh

		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word ptr [bp+LOCAL_1],604h
		mov	byte ptr ds:data_19e,1
		mov	dx,[bp+PARAMETER_1]
		mov	ax,3D00h
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		jc	loc_292			; Jump if carry Set
		mov	ds:data_20e,ax
		inc	byte ptr ds:data_19e
		mov	dx,[bp+PARAMETER_2]
		mov	cx,0
		mov	ah,3Ch
		int	21h			; DOS Services  ah=function 3Ch
						;  create/truncate file @ ds:dx
		jc	loc_291			; Jump if carry Set
		inc	byte ptr ds:data_19e
		mov	ds:data_21e,ax
loc_289:
		mov	bx,ds:data_20e
		mov	dx,[bp+LOCAL_1]
		mov	cx,5000h
		mov	ah,3Fh
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		or	ax,ax			; Zero ?
		jz	loc_290			; Jump if zero
		mov	ds:data_22e,ax
		mov	bx,ds:data_21e
		mov	dx,[bp+LOCAL_1]
		mov	cx,ax
		mov	ah,40h
		int	21h			; DOS Services  ah=function 40h
						;  write file  bx=file handle
						;   cx=bytes from ds:dx buffer
		cmp	ax,ds:data_22e
		je	loc_289			; Jump if equal
		mov	bx,ds:data_21e
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		mov	dx,[bp+PARAMETER_2]
		mov	ah,41h
		int	21h			; DOS Services  ah=function 41h
						;  delete file, name @ ds:dx
		jmp	short loc_291
loc_290:
		mov	byte ptr ds:data_19e,0
		mov	bx,ds:data_21e
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
loc_291:
		mov	bx,ds:data_20e
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		jc	loc_292			; Jump if carry Set
loc_292:
		mov	ah,0
		mov	al,ds:data_19e
		mov	sp,bp
		pop	bp
		retn
sub_97		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_98		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	dx,[bp+PARAMETER_1]
		mov	ah,41h
		int	21h			; DOS Services  ah=function 41h
						;  delete file, name @ ds:dx
		jc	loc_293			; Jump if carry Set
		mov	al,0
loc_293:
		mov	ah,0
		pop	bp
		retn
sub_98		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_99		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		push	ds
		pop	es
		mov	ah,27h			; '''
		mov	dx,5644h
		mov	di,dx
		int	0E0h			; ??INT Non-standard interrupt
		mov	si,data_23e
		mov	cx,0Ah
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		mov	ax,3D00h
		int	21h			; DOS Services  ah=function 3Dh
						;  open file, al=mode,name@ds:dx
		mov	bx,ax
		mov	ax,0
		jc	loc_294			; Jump if carry Set
		mov	ds:data_20e,bx
		mov	dx,[bp+PARAMETER_1]
		mov	cx,[bp+PARAMETER_2]
		mov	ah,3Fh
		int	21h			; DOS Services  ah=function 3Fh
						;  read file, bx=file handle
						;   cx=bytes to ds:dx buffer
		push	ax
		mov	bx,ds:data_20e
		mov	ah,3Eh
		int	21h			; DOS Services  ah=function 3Eh
						;  close file, bx=file handle
		pop	ax
loc_294:
		pop	bp
		retn
sub_99		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_100		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		mov	cx,[bp+PARAMETER_2]
		mov	si,[bp+PARAMETER_1]
		mov	ah,0Dh

locloop_295:
		lodsb				; String [si] to al
		cmp	al,ah
		loopnz	locloop_295		; Loop if zf=0, cx>0

		jnz	loc_296			; Jump if not zero
		mov	byte ptr [si-1],0
		jmp	short locloop_295
loc_296:
		pop	bp
		retn
sub_100		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_101		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		mov	cx,[bp+PARAMETER_2]
		mov	si,[bp+PARAMETER_1]
		mov	ah,9

locloop_297:
		lodsb				; String [si] to al
		or	al,al			; Zero ?
		jz	loc_298			; Jump if zero
		cmp	al,ah
		loopnz	locloop_297		; Loop if zf=0, cx>0

		jnz	loc_298			; Jump if not zero
		mov	byte ptr [si-1],0
		jmp	short locloop_297
loc_298:
		pop	bp
		retn
sub_101		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_102		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		mov	cx,[bp+PARAMETER_2]
		mov	ah,23h
		int	0E0h			; ??INT Non-standard interrupt
		pop	bp
		retn
sub_102		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_103		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6

		push	bp
		mov	bp,sp
		push	word ptr [bp+PARAMETER_2]	; PARAMETER_1
		call	sub_104
		mov	sp,bp
		mov	si,[bp+PARAMETER_2]
		inc	word ptr [si+2]
		mov	si,[bp+PARAMETER_2]
		mov	bx,[si+4]
		mov	ax,[bp+PARAMETER_1]
		xor	bh,bh			; Zero register
		mov	cx,1
		mov	ah,9
		int	10h			; Video display   ah=functn 09h
						;  set char al & attrib bl @curs
						;   cx=# of chars to replicate
		pop	bp
		retn
sub_103		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_104		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		mov	ax,[si]
		mov	dx,[si+2]
		mov	dh,al
		xor	bx,bx			; Zero register
		mov	ah,2
		int	10h			; Video display   ah=functn 02h
						;  set cursor location in dx
		pop	bp
		retn
sub_104		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_105		proc	near
		push	bp
		mov	bp,sp
		mov	ah,2
		mov	dl,7
		int	21h			; DOS Services  ah=function 02h
						;  display char dl
		pop	bp
		retn
sub_105		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_106		proc	near
		push	bp
		mov	bp,sp
loc_299:
		mov	ah,1
		int	0E0h			; ??INT Non-standard interrupt
		or	al,al			; Zero ?
		jnz	loc_299			; Jump if not zero
		pop	bp
		retn
sub_106		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_107		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	si,[bp+PARAMETER_1]
		pop	bp
		retn
sub_107		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_108		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ah,36h			; '6'
		mov	dl,0
		int	21h			; DOS Services  ah=function 36h
						;  get drive info, drive dl,1=a:
						;   returns ax=sectors per clust
						;   bx=avail clust,cx=bytes/sect
						;   dx=clusters per drive
		cmp	ax,0FFFFh
		je	loc_300			; Jump if equal
		mul	cx			; dx:ax = reg * ax
		mul	bx			; dx:ax = reg * ax
		mov	cx,2710h
		div	cx			; ax,dx rem=dx:ax/reg
		mov	di,[bp+PARAMETER_1]
		mov	[di],ax
		inc	di
		inc	di
		mov	[di],dx
loc_300:
		pop	bp
		retn
sub_108		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_109		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		push	ds
		mov	ah,1Ch
		int	0E0h			; ??INT Non-standard interrupt
		pop	es
		mov	di,[bp+PARAMETER_1]
		mov	cx,4
		cld				; Clear direction
		rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
		push	es
		pop	ds
		pop	bp
		retn
sub_109		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_110		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		push	word ptr [bp+PARAMETER_1]	; PARAMETER_1
		call	sub_107
		mov	sp,bp
		mov	ax,1Dh
		push	ax			; PARAMETER_1
		call	sub_114
		mov	sp,bp
		pop	bp
		retn
sub_110		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_111		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah

		push	bp
		mov	bp,sp
		mov	dx,188h
		mov	ax,[bp+PARAMETER_1]
		out	dx,al			; port 188h ??I/O Non-standard
		inc	dx
		inc	dx
		mov	ax,[bp+PARAMETER_2]
		out	dx,al			; port 18Ah ??I/O Non-standard
		inc	dx
		inc	dx
		mov	ax,[bp+PARAMETER_3]
		out	dx,al			; port 18Ch ??I/O Non-standard
		inc	dx
		inc	dx
		mov	ax,[bp+PARAMETER_4]
		out	dx,al			; port 18Eh ??I/O Non-standard
		pop	bp
		retn
sub_111		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_112		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		push	ds
		pop	es
		mov	ah,20h
		int	0E0h			; ??INT Non-standard interrupt
		mov	di,[bp+PARAMETER_1]
		mov	ah,0
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		push	es
		pop	ds
		pop	bp
		retn
sub_112		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_113		proc	near

PARAMETER_1	=	4			; bp+4
PARAMETER_2	=	6			; bp+6
PARAMETER_3	=	8			; bp+8
PARAMETER_4	=	0Ah			; bp+0Ah

		push	bp
		mov	bp,sp
		mov	ax,46Fh
		push	ax			; PARAMETER_1
		call	sub_110
		mov	sp,bp
		push	ds
		pop	es
		mov	di,data_31e
		mov	si,di
		mov	ax,[bp+PARAMETER_1]
		stosb				; Store al to es:[di]
		mov	ax,[bp+PARAMETER_2]
		stosb				; Store al to es:[di]
		mov	ax,[bp+PARAMETER_3]
		stosb				; Store al to es:[di]
		mov	ax,[bp+PARAMETER_4]
		stosb				; Store al to es:[di]
		mov	ah,21h
		int	0E0h			; ??INT Non-standard interrupt
		pop	bp
		retn
sub_113		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_114		proc	near

PARAMETER_1	=	4			; bp+4

		push	bp
		mov	bp,sp
		mov	ax,[bp+PARAMETER_1]
		xchg	ah,al
		int	0E0h			; ??INT Non-standard interrupt
		pop	bp
		retn
sub_114		endp

loc_301:
		mov	ss:data_103,ds
		mov	ax,word ptr ds:[2]
		mov	bx,ss
		sub	ax,bx
		ja	loc_302			; Jump if above
		jmp	loc_318
loc_302:
		dec	ax
		cmp	ax,1000h
		jb	loc_303			; Jump if below
		mov	ax,0FFFh
loc_303:
		mov	cl,4
		shl	ax,cl			; Shift w/zeros fill
		cmp	ax,sp
		jae	loc_304			; Jump if above or =
		jmp	loc_318
loc_304:
		mov	bx,ss:data_87
		add	bx,ss:data_88
		add	bx,7Fh
		cmp	sp,bx
		jne	loc_305			; Jump if not equal
		mov	sp,ax
loc_305:
		mov	ss:data_104,sp
		mov	ah,30h
		int	21h			; DOS Services  ah=function 30h
						;  get DOS version number ax
		cmp	al,2
		jb	loc_306			; Jump if below
		mov	byte ptr ss:data_105,1
loc_306:
		mov	byte ptr ds:[0FFh],0Dh
		mov	byte ptr ds:[80h],20h	; ' '
		mov	cx,1
		mov	si,0FFFFh
loc_307:
		inc	si
		mov	al,byte ptr ds:[81h][si]
		cmp	al,0Dh
		je	loc_308			; Jump if equal
		cmp	al,0Ah
		jne	loc_307			; Jump if not equal
loc_308:
		mov	ax,0
		push	ax
		test	si,1
		jz	loc_309			; Jump if zero
		inc	sp
loc_309:
		mov	di,sp
		sub	sp,si
		mov	bp,sp
loc_310:
		dec	si
		cmp	si,0FFFFh
		je	loc_315			; Jump if equal
		mov	al,byte ptr ds:[81h][si]
		cmp	al,20h			; ' '
		je	loc_311			; Jump if equal
		cmp	al,9
		jne	loc_312			; Jump if not equal
loc_311:
		mov	al,0
		jmp	short loc_314
loc_312:
		cmp	byte ptr ds:[80h][si],20h	; ' '
		je	loc_313			; Jump if equal
		cmp	byte ptr ds:[80h][si],9
		jne	loc_314			; Jump if not equal
loc_313:
		lea	bx,[bp+si]		; Load effective addr
		push	bx
		inc	cx
loc_314:
		mov	[bp+si],al
		jmp	short loc_310
loc_315:
		push	di
		mov	bp,sp
		push	bp
		push	cx
		mov	ax,ss
		mov	ds,ax
		mov	di,data_87
		mov	cx,data_88
		mov	es,ax
		mov	al,0
		cld				; Clear direction
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		add	di,2
		and	di,0FFFEh
		mov	data_102,di
		call	sub_1
		mov	al,0
		jmp	short loc_316
		db	 58h, 58h
loc_316:
		cmp	byte ptr ds:[45Ch],0
		je	loc_317			; Jump if equal
		mov	ah,4Ch
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
loc_317:
		push	word ptr ds:[458h]
		mov	ax,0
		push	ax
		retf				; Return far
loc_318:
		mov	ax,444h
		push	ax
		call	sub_117
		add	sp,2
		mov	al,2
		jmp	short loc_316
			                        ;* No entry point to code
		cmp	byte ptr ds:[45Dh],0
		je	loc_319			; Jump if equal
		mov	al,byte ptr ds:[45Dh]
		mov	byte ptr ds:[45Dh],0
		jmp	short loc_320
loc_319:
		mov	ah,1
		int	21h			; DOS Services  ah=function 01h
						;  get keybd char al, with echo
loc_320:
		mov	ah,0
		cmp	al,1Ah
		je	loc_321			; Jump if equal
		retn
loc_321:
		mov	ax,0FFFFh
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_115		proc	near
		pop	ax
		pop	dx
		push	dx
		push	ax
		cmp	dl,0Ah
		jne	loc_322			; Jump if not equal
		mov	dl,0Dh
		call	sub_116
		mov	dl,0Ah

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_116:
loc_322:
		mov	ah,2
		int	21h			; DOS Services  ah=function 02h
						;  display char dl
		retn
sub_115		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_117		proc	near
		pop	ax
		pop	bx
		push	bx
		push	ax
loc_323:
		mov	al,[bx]
		or	al,al			; Zero ?
		jz	loc_ret_324		; Jump if zero
		push	bx
		push	ax
		call	sub_115
		add	sp,2
		pop	bx
		inc	bx
		jmp	short loc_323

loc_ret_324:
		retn
sub_117		endp

			                        ;* No entry point to code
		cmp	byte ptr ds:[45Dh],0
		je	loc_325			; Jump if equal
		mov	al,byte ptr ds:[45Dh]
		mov	byte ptr ds:[45Dh],0
		mov	ah,0
		retn
loc_325:
		mov	ah,7
		int	21h			; DOS Services  ah=function 07h
						;  get keybd char al, no echo
		mov	ah,0
		retn
			                        ;* No entry point to code
		mov	ah,6
		mov	dl,0FFh
		int	21h			; DOS Services  ah=function 06h
						;  special char i/o, dl=subfunc
		mov	byte ptr ds:[45Dh],al
		mov	ah,0
		retn
			                        ;* No entry point to code
		pop	ax
		pop	dx
		push	dx
		push	ax
		mov	ah,6
		int	21h			; DOS Services  ah=function 06h
						;  special char i/o, dl=subfunc
		retn
			                        ;* No entry point to code
		mov	ax,word ptr ds:[456h]
		retn
			                        ;* No entry point to code
		pop	dx
		mov	ax,sp
		jmp	dx			;*
			                        ;* No entry point to code
		pop	dx
		pop	bx
		mov	sp,bx
		push	bx
		jmp	dx			;*Register jump
		db	8Ch

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_118		proc	near
		db	0D8h,0C3h, 8Ch,0C8h,0C3h, 5Ah
		db	 1Fh, 1Eh,0FFh,0E2h, 55h, 8Bh
		db	0ECh, 8Ah, 66h, 04h, 8Bh, 56h
		db	 06h,0CDh, 21h,0B4h, 00h, 5Dh
		db	0C3h

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_119:
		pop	si
		mov	cx,cs:[si]
		add	si,2

locloop_326:
		mov	ax,cs:[si]
		cmp	ax,8000h
		je	loc_327			; Jump if equal
		cmp	bx,ax
		je	loc_328			; Jump if equal
		add	si,4
		loop	locloop_326		; Loop if cx > 0

		jmp	dx			;*Register jump
loc_327:
		mov	dx,cs:[si+2]
		add	si,4
		jmp	short locloop_326
loc_328:
		jmp	word ptr cs:[si+2]	;*
sub_118		endp

			                        ;* No entry point to code
		mov	ah,0
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		lodsb				; String [si] to al
		stosw				; Store ax to es:[di]
		push	es
		pop	ds
		pop	bp
		retn
			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		mov	ax,46Fh
		push	ax
		call	sub_118
		mov	sp,bp
		push	ds
		pop	es
		mov	di,data_86e
		mov	si,di
		mov	ax,[bp+4]
		stosb				; Store al to es:[di]
		mov	ax,[bp+6]
		stosb				; Store al to es:[di]
		mov	ax,[bp+8]
		stosb				; Store al to es:[di]
		mov	ax,[bp+0Ah]
		stosb				; Store al to es:[di]
		mov	ah,21h
		int	0E0h			; ??INT Non-standard interrupt
		pop	bp
		retn
			                        ;* No entry point to code
		push	bp
		mov	bp,sp
		mov	ax,[bp+4]
		xchg	ah,al
		int	0E0h			; ??INT Non-standard interrupt
		pop	bp
		retn
			                        ;* No entry point to code
		mov	ss:data_103,ds
		mov	ax,word ptr ds:[2]
		mov	bx,ss
		sub	ax,bx
		ja	loc_329			; Jump if above
		jmp	loc_345
loc_329:
		dec	ax
		cmp	ax,1000h
		jb	loc_330			; Jump if below
		mov	ax,0FFFh
loc_330:
		mov	cl,4
		shl	ax,cl			; Shift w/zeros fill
		cmp	ax,sp
		jae	loc_331			; Jump if above or =
		jmp	loc_345
loc_331:
		mov	bx,ss:data_87
		add	bx,ss:data_88
		add	bx,7Fh
		cmp	sp,bx
		jne	loc_332			; Jump if not equal
		mov	sp,ax
loc_332:
		mov	ss:data_104,sp
		mov	ah,30h
		int	21h			; DOS Services  ah=function 30h
						;  get DOS version number ax
		cmp	al,2
		jb	loc_333			; Jump if below
		mov	byte ptr ss:data_105,1
loc_333:
		mov	byte ptr ds:[0FFh],0Dh
		mov	byte ptr ds:[80h],20h	; ' '
		mov	cx,1
		mov	si,0FFFFh
loc_334:
		inc	si
		mov	al,byte ptr ds:[81h][si]
		cmp	al,0Dh
		je	loc_335			; Jump if equal
		cmp	al,0Ah
		jne	loc_334			; Jump if not equal
loc_335:
		mov	ax,0
		push	ax
		test	si,1
		jz	loc_336			; Jump if zero
		inc	sp
loc_336:
		mov	di,sp
		sub	sp,si
		mov	bp,sp
loc_337:
		dec	si
		cmp	si,0FFFFh
		je	loc_342			; Jump if equal
		mov	al,byte ptr ds:[81h][si]
		cmp	al,20h			; ' '
		je	loc_338			; Jump if equal
		cmp	al,9
		jne	loc_339			; Jump if not equal
loc_338:
		mov	al,0
		jmp	short loc_341
loc_339:
		cmp	byte ptr ds:[80h][si],20h	; ' '
		je	loc_340			; Jump if equal
		cmp	byte ptr ds:[80h][si],9
		jne	loc_341			; Jump if not equal
loc_340:
		lea	bx,[bp+si]		; Load effective addr
		push	bx
		inc	cx
loc_341:
		mov	[bp+si],al
		jmp	short loc_337
loc_342:
		push	di
		mov	bp,sp
		push	bp
		push	cx
		mov	ax,ss
		mov	ds,ax
		mov	di,data_87
		mov	cx,data_88
		mov	es,ax
		mov	al,0
		cld				; Clear direction
		rep	stosb			; Rep when cx >0 Store al to es:[di]
		add	di,2
		and	di,0FFFEh
		mov	data_102,di
;*		call	sub_2			;*
		db	0E8h, 7Eh,0D4h		;  Fixup - byte match
		mov	al,0
		jmp	short loc_343
		db	 58h, 58h
loc_343:
		cmp	byte ptr ds:[45Ch],0
		je	loc_344			; Jump if equal
		mov	ah,4Ch
		int	21h			; DOS Services  ah=function 4Ch
						;  terminate with al=return code
loc_344:
		push	word ptr ds:[458h]
		mov	ax,0
		push	ax
		retf				; Return far
loc_345:
		mov	ax,444h
		push	ax
		call	sub_122
		add	sp,2
		mov	al,2
		jmp	short loc_343
			                        ;* No entry point to code
		cmp	byte ptr ds:[45Dh],0
		je	loc_346			; Jump if equal
		mov	al,byte ptr ds:[45Dh]
		mov	byte ptr ds:[45Dh],0
		jmp	short loc_347
loc_346:
		mov	ah,1
		int	21h			; DOS Services  ah=function 01h
						;  get keybd char al, with echo
loc_347:
		mov	ah,0
		cmp	al,1Ah
		je	loc_348			; Jump if equal
		retn
loc_348:
		mov	ax,0FFFFh
		retn

;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_120		proc	near
		pop	ax
		pop	dx
		push	dx
		push	ax
		cmp	dl,0Ah
		jne	loc_349			; Jump if not equal
		mov	dl,0Dh
		call	sub_121
		mov	dl,0Ah

;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

sub_121:
loc_349:
		mov	ah,2
		int	21h			; DOS Services  ah=function 02h
						;  display char dl
		retn
sub_120		endp


;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
;                              SUBROUTINE
;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

sub_122		proc	near
		pop	ax
		pop	bx
		push	bx
		push	ax
loc_350:
		mov	al,[bx]
		or	al,al			; Zero ?
		jz	loc_ret_351		; Jump if zero
		push	bx
		push	ax
		call	sub_120
		add	sp,2
		pop	bx
		inc	bx
		jmp	short loc_350

loc_ret_351:
		retn
sub_122		endp

			                        ;* No entry point to code
		cmp	byte ptr ds:[45Dh],0
;*		je	loc_352			;*Jump if equal
		db	 74h, 0Bh		;  Fixup - byte match

seg_a		ends



;------------------------------------------------------  stack_seg_b   ----

stack_seg_b	segment	word stack 'STACK'

data_87		dw	45Fh
data_88		dw	5228h
		db	'JAN', 0
		db	'FEB', 0
		db	'MAR', 0
		db	'APR', 0
		db	'MAY', 0
		db	'JUN', 0
		db	'JUL', 0
		db	'AUG', 0
		db	'SEP', 0
		db	'OCT', 0
		db	'NOV', 0
		db	'DEC', 0
		db	'Events for Today:        ', 0
		db	'New password:            ', 0
		db	'Current:                 ', 0
		db	'date mm/dd/yyyy:         ', 0
		db	'time hh:mm(a or p)       ', 0
		db	'Old filename:            ', 0
		db	'New filename:            ', 0
		db	'From filename:           ', 0
		db	'To filename:             ', 0
		db	'Delete file:             ', 0
		db	' bytes free', 0
		db	'Insufficient memory.     ', 0
		db	'Date    Name    Free    Alarm   '
		db	'Host    ', 0
		db	'Passwd  Select  Copy    Delete  '
		db	'Swap    ', 0
data_90		db	4
		db	 00h, 08h, 00h, 0Ch, 00h, 10h
		db	 00h, 14h, 00h, 18h, 00h, 1Ch
		db	 00h, 20h, 00h, 24h, 00h, 28h
		db	 00h
		db	2Ch
data_91		db	0
		db	 30h, 00h, 34h, 00h, 4Eh, 00h
		db	 68h, 00h, 82h, 00h, 9Ch, 00h
		db	0B6h, 00h,0D0h, 00h,0EAh, 00h
		db	 04h, 01h, 1Eh, 01h, 38h, 01h
		db	 44h, 01h, 5Eh, 01h, 87h, 01h
		db	 44h, 4Fh, 43h, 00h, 57h, 4Bh
		db	 53h, 00h, 46h, 49h, 4Ch, 00h
		db	 4Ch, 4Fh, 47h, 00h, 43h, 41h
		db	 4Ch, 00h, 4Dh, 53h, 47h, 00h
		db	 00h
		db	 31h, 54h, 65h, 78h, 74h
		db	7 dup (0)
		db	'TWTEXT.EXE'
		db	0, 0, 0, 4, 0, 0
		db	0
		db	'2Worksheet'
		db	0, 0
		db	'TWWORK.EXE'
		db	 00h, 00h, 00h, 11h, 00h, 00h
		db	 00h, 33h, 46h, 69h, 6Ch, 65h
		db	 72h, 00h, 00h, 00h, 00h, 00h
		db	 00h
		db	'TWFILER.EXE'
		db	 00h, 00h, 1Eh, 00h, 00h, 00h
		db	'4Telecom'
		db	0, 0, 0, 0
		db	'TWTELCOM.EXE'
		db	 00h, 2Bh, 00h, 00h, 00h
		db	'5Calendar'
		db	0, 0, 0
		db	'TWCALEND.EXE'
		db	 00h, 38h, 00h, 00h, 00h
		db	 36h, 4Dh, 61h, 69h, 6Ch
		db	7 dup (0)
		db	'TWMAIL.EXE'
		db	 00h, 00h, 00h, 45h
		db	33 dup (0)
		db	'TWALARM.EXE', 0
		db	'TWHOST.EXE', 0
		db	'Day Of Week ERROR', 0
		db	'            ', 0
		db	'          ', 0
		db	'          ', 0
		db	'????????.???', 0
		db	30h
		db	15 dup (0)
		db	13 dup (20h)
		db	0
		db	11 dup (20h)
		db	141 dup (0)
		db	'DeskMate', 0
		db	'[F1]    [F2]    [F3]    [F4]    '
		db	'[F5]    ', 0
		db	'[F6]    [F7]    [F8]    [F9]    '
		db	'[F10]   '
		db	8 dup (0)
		db	'ALARM.ARM'
		db	0
		db	'not enough memory', 0Ah
data_102	dw	0
data_103	dw	0			; segment storage
data_104	dw	0
data_105	db	0
		db	0, 0
data_107	dw	0
		db	0, 0, 0, 0, 0, 0
data_108	dw	0
data_109	dw	0
data_110	dw	0
data_111	dw	0
		db	0, 0, 0, 0
data_112	db	0
		db	139 dup (0)
data_113	dw	0			; Data table (indexed access)
		db	259 dup (0)
data_114	dw	0			; Data table (indexed access)
		db	1273 dup (0)
data_115	db	0			; Data table (indexed access)
		db	3071 dup (0)
data_116	db	0			; Data table (indexed access)
		db	1535 dup (0)
data_117	db	0			; Data table (indexed access)
		db	4607 dup (0)
data_118	db	0			; Data table (indexed access)
		db	1535 dup (0)
data_119	db	0			; Data table (indexed access)
		db	8447 dup (0)
data_120	db	0			; Data table (indexed access)
		db	0, 0, 0, 0
data_121	dw	0
data_122	dw	0
data_123	dw	0
data_124	dw	0
data_125	db	0
data_126	dw	0
data_127	dw	0
data_128	db	0
data_129	dw	0
data_130	dw	0
		db	240 dup (0)

stack_seg_b	ends



		end	start
