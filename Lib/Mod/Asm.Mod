MODULE [foreign] Asm; (* CPU Z80 *)
IMPORT SYSTEM;

TYPE
  BYTE = SYSTEM.BYTE; WORD = INT16;

PROCEDURE- Byte* (b: INT8);
PROCEDURE- Byte1* (b: INT8);
PROCEDURE- Byte2* (b1,b2: INT8);
PROCEDURE- Byte3* (b1,b2,b3: INT8);
PROCEDURE- Byte4* (b1,b2,b3,b4: INT8);
PROCEDURE- Byte5* (b1,b2,b3,b4,b5: INT8);
PROCEDURE- Byte6* (b1,b2,b3,b4,b5,b6: INT8);
PROCEDURE- Byte7* (b1,b2,b3,b4,b5,b6,b7: INT8);
PROCEDURE- Byte8* (b1,b2,b3,b4,b5,b6,b7,b8: INT8);
PROCEDURE- Byte9* (b1,b2,b3,b4,b5,b6,b7,b8,b9: INT8);
PROCEDURE- Byte10* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10: INT8);
PROCEDURE- Byte11* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11: INT8);
PROCEDURE- Byte12* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12: INT8);
PROCEDURE- Byte13* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13: INT8);
PROCEDURE- Byte14* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14: INT8);
PROCEDURE- Byte15* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15:
  INT8);
PROCEDURE- Byte16* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16:
  INT8);

PROCEDURE- Char* (b: BYTE);
PROCEDURE- Char1* (b: BYTE);
PROCEDURE- Char2* (b1,b2: BYTE);
PROCEDURE- Char3* (b1,b2,b3: BYTE);
PROCEDURE- Char4* (b1,b2,b3,b4: BYTE);
PROCEDURE- Char5* (b1,b2,b3,b4,b5: BYTE);
PROCEDURE- Char6* (b1,b2,b3,b4,b5,b6: BYTE);
PROCEDURE- Char7* (b1,b2,b3,b4,b5,b6,b7: BYTE);
PROCEDURE- Char8* (b1,b2,b3,b4,b5,b6,b7,b8: BYTE);
PROCEDURE- Char9* (b1,b2,b3,b4,b5,b6,b7,b8,b9: BYTE);
PROCEDURE- Char10* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10: BYTE);
PROCEDURE- Char11* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11: BYTE);
PROCEDURE- Char12* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12: BYTE);
PROCEDURE- Char13* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13: BYTE);
PROCEDURE- Char14* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14: BYTE);
PROCEDURE- Char15* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15:
  BYTE);
PROCEDURE- Char16* (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16:
  BYTE);

PROCEDURE- Word* (w: WORD);
PROCEDURE- Word1* (w: WORD);
PROCEDURE- Word2* (w1,w2: WORD);
PROCEDURE- Word3* (w1,w2,w3: WORD);
PROCEDURE- Word4* (w1,w2,w3,w4: WORD);
PROCEDURE- Word5* (w1,w2,w3,w4,w5: WORD);
PROCEDURE- Word6* (w1,w2,w3,w4,w5,w6: WORD);
PROCEDURE- Word7* (w1,w2,w3,w4,w5,w6,w7: WORD);
PROCEDURE- Word8* (w1,w2,w3,w4,w5,w6,w7,w8: WORD);
PROCEDURE- Word9* (w1,w2,w3,w4,w5,w6,w7,w8,w9: WORD);
PROCEDURE- Word10* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10: WORD);
PROCEDURE- Word11* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11: WORD);
PROCEDURE- Word12* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12: WORD);
PROCEDURE- Word13* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13: WORD);
PROCEDURE- Word14* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14: WORD);
PROCEDURE- Word15* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15:
  WORD);
PROCEDURE- Word16* (w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16:
  WORD);
PROCEDURE- String* (str: ARRAY OF CHAR);
PROCEDURE- StringZ* (str: ARRAY OF CHAR);

PROCEDURE- Code* (str: ARRAY OF CHAR);

END Asm.