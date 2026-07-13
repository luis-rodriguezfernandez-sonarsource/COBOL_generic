       IDENTIFICATION DIVISION.
       PROGRAM-ID. TRUNC.
      *----------------------------------------------------------------
      * Minimal demo: MOVE a string longer than the target variable.
      * WS-EXPLICIT has an explicit PIC clause: PIC X(5).
      * WS-IMPLICIT has no PIC clause; its type and length (5) are
      * inferred from the VALUE literal "12345" (COBOL 2002 feature,
      * supported by GnuCOBOL and Microfocus).
      *----------------------------------------------------------------
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-EXPLICIT   PIC X(5).
       01  WS-IMPLICIT   VALUE "HELLO WORLD".

       PROCEDURE DIVISION.
       MAIN-PARA.
           MOVE "HELLO WORLD" TO WS-EXPLICIT.
           MOVE "HELLO WORLD" TO WS-IMPLICIT.

           DISPLAY "WS-EXPLICIT = [" WS-EXPLICIT "]".
           DISPLAY "WS-IMPLICIT = [" WS-IMPLICIT "]".

           STOP RUN.
