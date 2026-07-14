       IDENTIFICATION DIVISION.
       PROGRAM-ID. S3921-NONCOMPLIANT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ALPHA   PIC X(4).
      *> ...
       PROCEDURE DIVISION.
           MOVE "Now is the time" TO ALPHA *> Noncompliant. Becomes "Now "
           STOP RUN.
