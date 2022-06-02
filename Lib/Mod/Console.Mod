MODULE [foreign] Console; IMPORT SYSTEM;

TYPE
  Coords* = INT8;

PROCEDURE- At* (x, y: Coords);
PROCEDURE- Clear*;
PROCEDURE- WriteCh* (ch: CHAR);

END Console.