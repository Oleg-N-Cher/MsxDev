MODULE [foreign] Basic; IMPORT SYSTEM; (** non-portable *)

CONST
  SCREEN0* = 0; (* TEXT 1/2    | 40/80 x 24 chars |  2 from 512 | Text      *)
  SCREEN1* = 1; (* GRAPHIC 1   |    32 x 24 chars | 16 from 512 | Text      *)
  SCREEN2* = 2; (* GRAPHIC 2   | 256 x 192 dots   | 16 from 512 | High res. *)
  SCREEN3* = 3; (* MULTICOLOUR |  64 x  48 dots   | 16 from 512 | Low res.  *)
  SCREEN4* = 4; (* GRAPHIC 3   | 256 x 192 dots   | 16 from 512 | High res. *)
  SCREEN5* = 5; (* GRAPHIC 4   | 256 x 212 dots   | 16 from 512 | Bit map   *)
  SCREEN6* = 6; (* GRAPHIC 5   | 512 x 212 dots   |  4 from 512 | Bit map   *)
  SCREEN7* = 7; (* GRAPHIC 6   | 512 x 212 dots   | 16 from 512 | Bit map   *)
  SCREEN8* = 8; (* GRAPHIC 7   | 256 x 212 dots   |     256     | Bit map   *)

  Transparent*  =  0;
  Black*        =  1;
  BrightGreen*  =  2;
  LightGreen*   =  3;
  DeepBlue*     =  4;
  BrightBlue*   =  5;
  DeepRed*      =  6;
  LightBlue*    =  7;
  BrightRed*    =  8;
  LightRed*     =  9;
  BrightYellow* = 10;
  PaleYellow*   = 11;
  DeepGreen*    = 12;
  Purple*       = 13;
  Grey*         = 14;
  White*        = 15;

TYPE
  BYTE = SYSTEM.BYTE;
  CARDINAL = INT16;
  ADDRESS = INT32;

PROCEDURE- ATR* (atr: BYTE);
PROCEDURE- CLS*;
PROCEDURE- COLOR* (fore, back, border: BYTE);
PROCEDURE- LINE* (x1, y1, x2, y2: BYTE);
PROCEDURE- LOCATE* (x, y: BYTE);
PROCEDURE- PEEK* (addr: ADDRESS): BYTE;
PROCEDURE- PEEKW* (addr: ADDRESS): CARDINAL;
PROCEDURE- POKE* (addr: ADDRESS; value: BYTE);
PROCEDURE- POKEW* (addr: ADDRESS; value: CARDINAL);
PROCEDURE- SCREEN* (mode: BYTE);
PROCEDURE- VPEEK* (addr: ADDRESS): BYTE;
PROCEDURE- VPOKE* (addr: ADDRESS; value: BYTE);
PROCEDURE- WIDTH* (width: BYTE);

END Basic.
