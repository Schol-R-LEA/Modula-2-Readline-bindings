MODULE rl_test;

FROM SYSTEM IMPORT ADDRESS;

FROM DynamicStrings IMPORT String, Fin, Length, InitString,
                           InitStringCharStar, CopyOut, Equal,
                           EqualArray, string ;

FROM StrIO IMPORT WriteString, WriteLn;

FROM readline IMPORT readline, add_history;
FROM FIO IMPORT FlushOutErr;
FROM libc IMPORT printf;

VAR
   input: String;
   temp : ARRAY [0..1024] OF CHAR;
BEGIN
   input := NIL;
   REPEAT
      Fin(input);
      FlushOutErr;
      input := InitStringCharStar (readline ("Write something: "));
      IF Length(input) > 0 THEN
         WriteString("You Wrote: ");
         CopyOut(temp, input);

         WriteString(temp);
         WriteLn;
         add_history(temp);
      ELSE
         WriteString("No input");
         WriteLn;
      END;
   UNTIL EqualArray (input, "exit")
END rl_test.
