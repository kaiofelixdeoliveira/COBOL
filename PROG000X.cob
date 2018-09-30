      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIMEIRO-PROGRAMA.

      *====VARIAVEIS===========
       DATA DIVISION.
      *----ARQUIVOS E REGISTROS--------
       FILE SECTION.
      *----DECLARATIVES------------
       WORKING-STORAGE SECTION.
      *----<NIVEIS>-<IDENTIFICADOR>-<TIPO>-<TAMANHO EM BYTES>
           77  NUMEROX             PIC 9(18).
           77  NOMEX                PIC A(20).
           77  NOMENUMERO          PIC X(30).
           77  NUMERO-DECIMAL      PIC 9(02)V9(02).
           77  NUMEROX-SINAL       PIC S9(18).

           77 WKR-NOME PIC X(20) VALUE SPACES.
           77 WRK-DATA PIC 9(6) VALUE ZEROS.
           77 WRK-DATE-JULIANA PIC 9(5) VALUE ZEROS.
           77 WRK-HORA PIC 9(9) VALUE ZEROS.
           77 WRK-RESULTADO PIC 9(5).
           77 WRK-RESULTADO2 PIC 9(5).
           77 WRK-RESTO PIC 9(5).
      *-----01 VARAVEL DE REGISTRO
           01 CLIENTE.
               02 NOME PIC X(20) VALUE "KAIO FELIX".
               02 RG PIC X(11) VALUE "444444".
               02 CPF PIC X(11) VALUE "55555".
               02 ENDERECO PIC X(20) VALUE "RUA MANOEL".
               02 DATANASC.
                   03 DIA PIC XX VALUE "19".
                   03 MES PIC XX VALUE "03".
                   03 ANO PIC XXXX VALUE "1991".

      *#78-->CONSTANTE---------------
           78 MASCULINOS VALUE "M".

           01 GENERO PIC X.
      *--88-->TIPO BOOLEAN-----
               88 MASCULINO VALUE "M".
               88 FEMININO VALUE  "F".



      *----COMUNICAÇÃO ENTRE PORGRAMAS-----
       LINKAGE SECTION.
      *-----DEFINIÇÃO DE TELAS-------
       SCREEN SECTION.

      *=====LÓGICA DO PROGRAMA====
       PROCEDURE DIVISION.

      *      DISPLAY CLIENTE.
      *      STOP RUN.


       MAIN-PROCEDURE.
      *     SET MASCULINO TO TRUE.
      *     IF MASCULINO
      *      ACCEPT WRK-DATE-JULIANA FROM DAY.
            ACCEPT WRK-HORA FROM TIME.

      *----MOVE-**COPIA VALORES-----
            MOVE 4 TO WRK-HORA.

      *----ADD-**(WRK-HORA+1+3=8)
            ADD 1 3 TO WRK-HORA.

      *----GIVING--**
      *     ADD 1 3 GIVING WRK-HORA.

      *----COMPUTE-(ACEITA OPERADORAÇÕES DE *,/,+,-,**,(),=
           COMPUTE WRK-HORA EQUAL WRK-HORA/2

           ON SIZE ERROR
           DISPLAY "DDD"
           END-COMPUTE.
      *----SUBSTRACT--> USADO PARA SUBTRAIR
           SUBTRACT 50 FROM WRK-HORA GIVING WRK-RESULTADO.

      *----DIVIDE--> FAZ A DIVISÃO
      *    DIVIDE 2 INTO WRK-RESULTADO GIVING WRK-RESULTADO2.
           DIVIDE WRK-RESULTADO BY 2 GIVING WRK-RESULTADO2
      *----REMAINDE--> PEGA O RESTO DA DIVISÃO
           REMAINDER WRK-RESTO.

            DISPLAY WRK-RESULTADO2 " " WRK-RESTO.
            STOP RUN.
       END PROGRAM PRIMEIRO-PROGRAMA.
