/* Ofront+ 1.0 -sx3 -21 */
#include "SYSTEM.oh"
#include "Asm.oh"




export void GRAPHIC_Color (CHAR ForeGroundColor, CHAR BackGroudColor, CHAR BorderColor);
export void GRAPHIC_Pset (SHORTINT Destination_x, SHORTINT Destination_y, CHAR DestinationPage, CHAR Color, CHAR LogicalOperation);
export void GRAPHIC_Screen (CHAR mode);
export void GRAPHIC_SetColor (CHAR color);
export void GRAPHIC_Width (CHAR len);

#define GRAPHIC__init()  /*noinit*/

/*============================================================================*/

void GRAPHIC_Screen (CHAR mode)
{
  Asm_Code((CHAR*)"LD   HL, #2                   ", 31);
  Asm_Code((CHAR*)"ADD  HL, SP                   ", 31);
  Asm_Code((CHAR*)"LD   A, (HL)       ; (mode)   ", 31);
  Asm_Code((CHAR*)"LD   IY, (0xFCC0)  ;(EXPTBL-1)", 31);
  Asm_Code((CHAR*)"PUSH IX                       ", 31);
  Asm_Code((CHAR*)"LD   IX, #0x005F   ; CHGMOD   ", 31);
  Asm_Code((CHAR*)"CALL 0x001C        ; CALSLT   ", 31);
  Asm_Code((CHAR*)"EI                            ", 31);
  Asm_Code((CHAR*)"POP IX                        ", 31);
}

/*----------------------------------------------------------------------------*/
void GRAPHIC_Width (CHAR len)
{
  Asm_Code((CHAR*)"LD   HL, #2                   ", 31);
  Asm_Code((CHAR*)"ADD  HL, SP                   ", 31);
  Asm_Code((CHAR*)"LD   A, (HL)      ; (len)     ", 31);
  Asm_Code((CHAR*)"LD   (0xF3AE), A  ; (LINL40)  ", 31);
  Asm_Code((CHAR*)"LD   IY, (0xFCC0) ; (EXPTBL-1)", 31);
  Asm_Code((CHAR*)"PUSH IX                       ", 31);
  Asm_Code((CHAR*)"LD   IX, #0x006C  ; INITXT    ", 31);
  Asm_Code((CHAR*)"CALL 0x001C       ; CALSLT    ", 31);
  Asm_Code((CHAR*)"POP IX                        ", 31);
  Asm_Code((CHAR*)"EI                            ", 31);
}

/*----------------------------------------------------------------------------*/
void GRAPHIC_Color (CHAR ForeGroundColor, CHAR BackGroudColor, CHAR BorderColor)
{
  Asm_Code((CHAR*)"LD   HL, #2                   ", 31);
  Asm_Code((CHAR*)"ADD  HL, SP                   ", 31);
  Asm_Code((CHAR*)"LD   DE, #0xF3E9  ; (FORCLR)  ", 31);
  Asm_Code((CHAR*)"LD   BC, #3       ; (BAKCLR)  ", 31);
  Asm_Code((CHAR*)"LDIR              ; (BDRCLR)  ", 31);
  Asm_Code((CHAR*)"LD   IY, (0xFCC0) ; (EXPTBL-1)", 31);
  Asm_Code((CHAR*)"PUSH IX                       ", 31);
  Asm_Code((CHAR*)"LD   IX, #0x0062  ; CHGCLR    ", 31);
  Asm_Code((CHAR*)"CALL 0x001C       ; CALSLT    ", 31);
  Asm_Code((CHAR*)"POP IX                        ", 31);
  Asm_Code((CHAR*)"EI                            ", 31);
}

/*----------------------------------------------------------------------------*/
void GRAPHIC_SetColor (CHAR color)
{
  Asm_Code((CHAR*)"LD   HL, #2                   ", 31);
  Asm_Code((CHAR*)"ADD  HL, SP                   ", 31);
  Asm_Code((CHAR*)"LD   A, (HL)      ; (color)   ", 31);
  Asm_Code((CHAR*)"LD   IY, (0xFCC0) ; (EXPTBL-1)", 31);
  Asm_Code((CHAR*)"PUSH IX                       ", 31);
  Asm_Code((CHAR*)"LD   IX, #0x011A  ; SETATR    ", 31);
  Asm_Code((CHAR*)"CALL 0x001C       ; CALSLT    ", 31);
  Asm_Code((CHAR*)"EI                            ", 31);
  Asm_Code((CHAR*)"POP IX                        ", 31);
}

/*----------------------------------------------------------------------------*/
void GRAPHIC_Pset (SHORTINT Destination_x, SHORTINT Destination_y, CHAR DestinationPage, CHAR Color, CHAR LogicalOperation)
{
  Asm_Code((CHAR*)"DI                            ", 31);
  Asm_Code((CHAR*)"LD   A, #0x20                 ", 31);
  Asm_Code((CHAR*)"OUT  (0x99), A                ", 31);
  Asm_Code((CHAR*)"LD   A, #0x11                 ", 31);
  Asm_Code((CHAR*)"OR   #0x80                    ", 31);
  Asm_Code((CHAR*)"OUT  (0x99), A                ", 31);
  Asm_Code((CHAR*)"LD   B, #0x0F                 ", 31);
  Asm_Code((CHAR*)"LD   C, #0x9B                 ", 31);
  Asm_Code((CHAR*)"LD   HL, #0xF562              ", 31);
  Asm_Code((CHAR*)"OTIR                          ", 31);
  Asm_Code((CHAR*)"LOC_40E8$:", 11);
  Asm_Code((CHAR*)"LD   A, #2                    ", 31);
  Asm_Code((CHAR*)"OUT  (0x99), A                ", 31);
  Asm_Code((CHAR*)"LD   A, #0x0F                 ", 31);
  Asm_Code((CHAR*)"OR   #0x80                    ", 31);
  Asm_Code((CHAR*)"OUT  (0x99), A                ", 31);
  Asm_Code((CHAR*)"IN   A, (0x99)                ", 31);
  Asm_Code((CHAR*)"BIT  0, A                     ", 31);
  Asm_Code((CHAR*)"JR   NZ, LOC_40E8$            ", 31);
  Asm_Code((CHAR*)"XOR  A                        ", 31);
  Asm_Code((CHAR*)"OUT  (0x99), A                ", 31);
  Asm_Code((CHAR*)"LD   A, #0x8F                 ", 31);
  Asm_Code((CHAR*)"OUT  (0x63), A                ", 31);
  Asm_Code((CHAR*)"EI                            ", 31);
}

/*----------------------------------------------------------------------------*/

export void *GRAPHIC__init (void)
{
  __DEFMOD;
  __REGMOD("GRAPHIC", 0);
/* BEGIN */
  __ENDMOD;
}
