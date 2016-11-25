      SUBROUTINE HEADGETH(FILE,COORDX,COORDY,COORDZ,TRANS,TYPE,
C<license>
C-------------------------------------------------------------------------------
C Copyright (c) 2007 ConocoPhillips Company
C
C Permission is hereby granted, free of charge, to any person obtaining a copy
C of this software and associated documentation files (the "Software"), to deal
C in the Software without restriction, including without limitation the rights
C to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
C copies of the Software, and to permit persons to whom the Software is
C furnished to do so, subject to the following conditions:
C
C The above copyright notice and this permission notice shall be included in all
C copies or substantial portions of the Software.
C
C THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
C IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
C FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
C AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
C LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
C OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
C SOFTWARE.
C-------------------------------------------------------------------------------
C</license>
     &  N1,N2,N3,O1,O2,O3,D1,D2,D3, HEAD)
C***************************** COPYRIGHT NOTICE ************************
C*
C*                 CONFIDENTIAL AND PROPRIETARY INFORMATION
C*                              OF CONOCO INC.
C*                      PROTECTED BY THE COPYRIGHT LAW
C*                          AS AN UNPUBLISHED WORK
C*
C***************************** COPYRIGHT NOTICE ************************
C        1         2         3         4         5         6         7
C23456789012345678901234567890123456789012345678901234567890123456789012
C\USER DOC
C-----------------------------------------------------------------------
C                       CONOCO PROCESSING SYSTEM
C                 EXPLORATION RESEARCH & SERVICES DIVISION
C                              CONOCO INC.
C
C                        C P S   P R I M I T I V E
C
CPrimitive names: HEADGETH, HEADPUTH
C        Author: Harlan
C  Date Written: 92/01/16
C  Last revised: 94/07/14 Hanson
C
C     Purpose: These routines read (write) parameters from (to) a header
C              file for grid or layer models.
C-----------------------------------------------------------------------
C                           CALLING SEQUENCE
C     CALL QSET(1)   (call if you will be on the Cray)
C     CALL HEADGETH(FILE,COORDX,COORDY,TRANS,TYPE,
C    &  N1,N2,N3,O1,O2,O3,D1,D2,D3, HEAD)
C
C Where: same source works on Vax and Cray
C Name    Type*  Valid  Description         *Type: I=IN, O=OUT, B=BOTH
C ----    ----   -----  -----------
C HEAD   CHARACTER*(*) Name of ASII header file (only input parameter)
C FILE   CHARACTER*(*) Name of file containing grid or layer model.
C COORDX CHARACTER*(*) Name of X coordinate
C COORDY CHARACTER*(*) Name of Y coordinate.
C COORDZ CHARACTER*(*) Name of Z coordinate (TIME or DEPTH).
C TRANS  CHARACTER*(*) Name of transform file.
C TYPE   CHARACTER*(*) Type of file containing grid or layer model.
C N1     INTEGER  Dimension of fastest (vertical) direction (NZ)
C N2     INTEGER  Dimension of 2nd fastest (horizontal) direction (NX)
C N3     INTEGER  Dimension of slowest (crossline) direction (NY)
C O1     REAL     Coordinate of first vertical sample (ZMIN)
C O2     REAL     Coordinate of first horizontal sample (XMIN)
C                 in units of COORDX
C O3     REAL     Coordinate of first crossline sample (YMIN)
C                 in units of COORDY
C D1     REAL     Sampling interval for vertical direction (ZINC)
C D2     REAL     Sampling interval for horizontal direction (XINC)
C                 in units of COORDX
C D3     REAL     Sampling interval for crossline direction (YINC)
C                 in units of COORDY
C-----------------------------------------------------------------------
C                                 NOTES
C 1.  Set any defaults for parameters before calling HEADGETH.  HEADGETH
C     will change values of these parameters if they are specified in
C     the parameter file.
C 2.  The following groups are written and read as synonyms:
C     O1,ZMIN; O2,XMIN; O3,YMIN; D1,DZ,ZINC; D2,DX,XINC; D3,DY,YINC.
C 3.  Specify parameters in the header file according to the following
C rules.  Use the format "NAME=VALUE", where NAME is the name of the
C parameter, and VALUE the value specified for the parameter--either
C an integer, real, or character string.  The following are all valid:
C         NX=1001     TRANS=FILE.TRANS      N3 =100  ZMIN=0  n2=50.
C       TYPE = GRID         FILE = "FILE.GRID"  Garbage
C        trash    XcoORDinate= XBASEMENT   junk    D1=4.e-3
C        (D2=10.,D3=1.)
C Exponenial notation is allowed. These specifications can appear in
C any order, with or without separating commas.   You may also mix any
C other text or documentation which you find useful.  Upper and lower
C case are not distinguished in the names of parameters; however, the
C value of a character string is case sensitive.  You can add spaces
C around the equals signs. To avoid unnecessary decoding, all
C parameters should appear in the first 200 lines of the file.   If
C you specify a parameter more than once, then the last specification
C encountered will be used. A character string can be optionally
C bracketed by double quotes.  Decimals are optional, for reals or
C integers.  The end of a parameter value can designated by a blank, a
C comma, a semicolon, or a right parenthesis.  The beginning of a
C parameter name can be designated by a blank, a comma, a semicolon, or
C a left parenthesis.
C
C 4.  You can get and put individual parameters with other names by
C     calling the following subroutines.
C    HEADGVOP, HEADPVOP: open a header file for getting or putting.
C    HEADGVCL, HEADPVCL: close a header file after getting or putting.
C    HEADGVR, HEADPVR: get or put a real parameter.
C    HEADGVI, HEADPVI: get or put an imaginary parameter.
C    HEADGVC, HEADPVC: get or put a character parameter.
C      Look at the source if you want to try.  HEADGETH and
C      HEADPUTH show the style.  If they are useful, these subroutines
C      will be individually documented (call Harlan at x6053)
C 5.  The header file will not be closed until you call HEADGVCL()
C     or HEADPVCL(), or call this subroutine again.  HEADPVOP and
C     HEADGVOP close any header file that was previously opened before
C     opening a new one
C-----------------------------------------------------------------------
C\END DOC
C\PROG DOC
C-----------------------------------------------------------------------
C                         REVISION HISTORY
C     Date      Author    Description
C     ----      ------    -----------
C 8.  94/07/14  Hanson    ; no longer used as delimiter in headspac
C 7.  94/05/04  Hanson    # sign comments out following characters
C 7.  92/11/17  Hanson    Add LOGICAL FUNCTION HEADSPAC
C 6.  92/09/30  Hanson    Add OERR and CERR to return error status after
C                         open and close.  Correct CRAY version of IERR.
C 5.  92/09/09  Hanson    Add GVRC,GVIC, GVCC, to read value from card
C                         MLIN, GLIN to control how many lines to 
C                         read in GV2.  FORL, GORL to control how
C                         many occurences of value to look for
C 4.  92/03/12  Harlan    Slight change to comments in header file.
C 3.  92/02/20  Harlan    Rearrange lines nicely in output header file.
C 2.  92/01/16  Harlan    Add COORDZ.  Don't close parameter file.
C 1.  92/01/14  Harlan    Original Version
C-----------------------------------------------------------------------
C   SUBROUTINE, FUNCTION, ENTRY AND COMMON BLOCK NAMES IN THIS MODULE
C        SUBROUTINES:
C HEADPUTH,
C HEADADSU, HEADCADP, HEADCAPS, HEADCCAT, HEADCCPY, HEADCHSU,
C HEADCLFT, HEADCLOF, HEADDCOD, HEADDEVN, HEADFNEW, HEADGETC,
C HEADGV1, HEADGV2, HEADGVR, HEADHEYU, HEADLENL, HEADLENP,
C HEADLENR, HEADPVR, HEADQMAC, HEADGVRC
C        ENTRIES:
C HEADGETH,
C HEADCLOD, HEADDEV6, HEADDEVO, HEADFEND, HEADGTC1, HEADGTC2, HEADGVC,
C HEADGVCL, HEADGVDN, HEADGVI, HEADGVND, HEADGVOP, HEADHEYD, HEADOPEF,
C HEADOPIF, HEADPVC, HEADPVCL, HEADPVDN, HEADPVI, HEADPVOP, HEADQSET,
C HEADGVIC, HEADGVCC, HEADPLIN, HEADGLIN, HEADPORL, HEADGORL
C HEADOERR, HEADCERR
C        FUNCTIONS OR COMMON BLOCKS.
C HEADSPAC
C-----------------------------------------------------------------------
C                  EXTERNALS REFERENCED BY THIS MODULE
C CLOSFIL, GETLUN, OPNFIL  (used only on the Cray)
C                          (referenced but not used on the Vax)
C-----------------------------------------------------------------------
C                         MEMORY REQUIREMENTS
C
C  STORAGE       - 0
C  HEAP(dynamic) - 0
C-----------------------------------------------------------------------
C\END DOC
CNDXI GETH(        9112
      CHARACTER*(*) FILE,COORDX,COORDY,COORDZ,TRANS,TYPE,HEAD
      INTEGER N1,N2,N3
      REAL O1,O2,O3,D1,D2,D3
C GET SAMPLING RATE AND FILENAMES FROM HEADER FILE. SET OWN DEFAULTS 1ST
C HEAD IS NAME OF INPUT HEADER FILE.
C THE REST ARE VALUES OF PARAMETERS SET IN THE PARAMETER FILE.
      INTEGER NC
      REAL E1,E2,E3
      CALL HEADGVOP(HEAD)
        CALL HEADGVI(N1,'NZ')
        CALL HEADGVI(N2,'NX')
        CALL HEADGVI(N3,'NY')
        CALL HEADGVR(O1,'ZMIN')
        CALL HEADGVR(O2,'XMIN')
        CALL HEADGVR(O3,'YMIN')
        CALL HEADGVR(D1,'ZINC')
        CALL HEADGVR(D2,'XINC')
        CALL HEADGVR(D3,'YINC')
        CALL HEADGVR(D1,'DZ')
        CALL HEADGVR(D2,'DX')
        CALL HEADGVR(D3,'DY')
C THE FOLLOWING ARE OFFICIAL NAMES AND WILL OVERRIDE PREVIOUS NAMES
        CALL HEADGVI(N1,'N1')
        CALL HEADGVI(N2,'N2')
        CALL HEADGVI(N3,'N3')
        CALL HEADGVR(O1,'O1')
        CALL HEADGVR(O2,'O2')
        CALL HEADGVR(O3,'O3')
        CALL HEADGVR(D1,'D1')
        CALL HEADGVR(D2,'D2')
        CALL HEADGVR(D3,'D3')
        CALL HEADGVC(FILE,NC, 'FILE')
        CALL HEADGVC(TYPE,NC, 'TYPE')
        CALL HEADGVC(TRANS,NC, 'TRANSFORM')
        CALL HEADGVC(COORDX,NC, 'XCOORDINATE')
        CALL HEADGVC(COORDY,NC, 'YCOORDINATE')
        CALL HEADGVC(COORDZ,NC, 'ZCOORDINATE')
CC      CALL HEADGVCL()
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPUTH(FILE,COORDX,COORDY,COORDZ,TRANS,TYPE,
     &  N1,N2,N3,O1,O2,O3,D1,D2,D3, HEAD)
C PUT SAMPLING RATE AND FILENAMES INTO HEADER FILE.
      CALL HEADPVOP(HEAD)
        CALL HEADPVC(
     &    'These names are most convenient to change by hand:',
     &    '#')
        E1 = O1 + FLOAT(N1-1)*D1
        E2 = O2 + FLOAT(N2-1)*D2
        E3 = O3 + FLOAT(N3-1)*D3
         CALL HEADPVI(N1,'NZ')
        CALL HEADPVR(O1,'ZMIN')
        CALL HEADPVR(D1,'ZINC')
         CALL HEADPVI(N2,'NX')
        CALL HEADPVR(O2,'XMIN')
        CALL HEADPVR(D2,'XINC')
         CALL HEADPVI(N3,'NY')
        CALL HEADPVR(O3,'YMIN')
        CALL HEADPVR(D3,'YINC')
        CALL HEADPVC(FILE, 'FILE')
        CALL HEADPVC(TYPE, 'TYPE')
        CALL HEADPVC(TRANS, 'TRANSFORM')
        CALL HEADPVC(COORDX, 'XCOORDINATE')
        CALL HEADPVC(COORDY, 'YCOORDINATE')
        CALL HEADPVC(COORDZ, 'ZCOORDINATE')
C THE FOLLOWING ARE OFFICIAL NAMES AND SHOULD OVERRIDE PREVIOUS NAMES
        CALL HEADPVC(
     &   'Delete everything below this line if you change by hand:',
     &   '#')
        CALL HEADPVR(E1,'ZMAX_(for_reference)')
        CALL HEADPVR(E2,'XMAX_(for_reference)')
        CALL HEADPVR(E3,'YMAX_(for_reference)')
        CALL HEADPVC(
     &   'These are valid alternative names:',
     &   '#')
        CALL HEADPVR(D1,'DZ')
        CALL HEADPVR(D2,'DX')
        CALL HEADPVR(D3,'DY')
        CALL HEADPVC(
     &   'These are more general names that override others:',
     &   '#')
        CALL HEADPVI(N1,'N1')
        CALL HEADPVI(N2,'N2')
        CALL HEADPVI(N3,'N3')
        CALL HEADPVR(O1,'O1')
        CALL HEADPVR(O2,'O2')
        CALL HEADPVR(O3,'O3')
        CALL HEADPVR(D1,'D1')
        CALL HEADPVR(D2,'D2')
        CALL HEADPVR(D3,'D3')
CC      CALL HEADPVCL()
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     ADSU(

      SUBROUTINE HEADADSU(OUT, IN,SUB)
      CHARACTER*(*) OUT,IN,SUB
C ADD SUBSCRIPT TO FILE NAME, IF DOESN'T ALREADY HAVE ONE.
CNDXC ADSU( C
C OUT AND FNAME CAN BE THE SAME STRING VARIABLE.
      INTEGER NC,IC
      CHARACTER*80 TEMP,FNAME
      LOGICAL DOT,BRACK
      FNAME = IN
      NC = LEN(FNAME)
      DOT = .FALSE.
      BRACK = .FALSE.
      DO 100 IC=NC,1,-1
        BRACK = BRACK.OR.(FNAME(IC:IC).EQ.']')
        DOT = DOT.OR.( FNAME(IC:IC).EQ.'.' .AND..NOT.BRACK)
  100 CONTINUE
      TEMP = ' '
      IF(DOT) THEN
        CALL HEADCCPY(TEMP,FNAME,NC)
      ELSE
        CALL HEADCHSU(TEMP, FNAME,SUB)
      ENDIF
      OUT = TEMP
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CADP(

      SUBROUTINE HEADCADP(C, NC)
      CHARACTER*(*) C
      INTEGER NC
C ADD A PERIOD TO A STRING, SO THAT RESEMBLES FLOATING POINT NUMBER.
CNDXC CADP( C
      INTEGER I
      CHARACTER*80 CARD
      CARD = ' '
      CARD = C(:NC)
      CALL HEADCLFT(CARD)
      C(:NC) = CARD(:NC)
      DO 100 I=1,NC
        IF(C(I:I).EQ.' '.OR.C(I:I).EQ.'.') GOTO 200
  100 CONTINUE
      NC = NC + 1
      I = NC
  200 CONTINUE
      C(I:I) = '.'
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CAPS(

      SUBROUTINE HEADCAPS(COUT, CIN)
      CHARACTER*(*) COUT,CIN
C CAPITALIZE AN ASCII STRING
CNDXC CAPS(
      CHARACTER SMALL*26,BIG*26
      INTEGER NC,IC1,IC2
      DATA SMALL/'abcdefghijklmnopqrstuvwxyz'/
      DATA BIG/'ABCDEFGHIJKLMNOPQRSTUVWXYZ'/
      COUT = ' '
      COUT = CIN
      NC = LEN(COUT)
      DO 60 IC1=1,NC
        DO 50 IC2=1,26
          IF(COUT(IC1:IC1).EQ.SMALL(IC2:IC2)) THEN
            COUT(IC1:IC1) = BIG(IC2:IC2)
            GOTO 60
          ENDIF
   50   CONTINUE
   60 CONTINUE
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CCAT(

      SUBROUTINE HEADCCAT(COUT, C1,C2)
      CHARACTER*(*) COUT,C1,C2
C CONCATENATE TWO STRINGS.  DELETE STUFF AFTER 1ST BLANK IN C1.
CNDXC CCAT( C
      INTEGER N1,N2,I,NO
      COUT = ' '
      NO = LEN(COUT)
      CALL HEADLENL(N1,C1)
      N1 = MIN(N1,NO)
      IF(N1.GT.0) CALL HEADCCPY(COUT,C1,N1)
      N2 = LEN(C2)
      I = N1 + 1
      N2 = MIN(N2,NO-N1)
      IF(N2.GT.0) CALL HEADCCPY(COUT(I:NO),C2,N2)
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CCPY(

      SUBROUTINE HEADCCPY(COUT, CIN,NC)
      INTEGER NC
      CHARACTER*(*) COUT,CIN
C COPY A CHARACTER STRING
CNDXC CCPY( C
      INTEGER IC
      DO 100 IC=1,NC
        COUT(IC:IC) = CIN(IC:IC)
  100 CONTINUE
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CHSU(

      SUBROUTINE HEADCHSU(OUT, IN,SUB)
      CHARACTER*(*) OUT,IN,SUB
C CHANGE SUBSCRIPT ON FILE NAME.  CAN SHARE SAME MEMORY.
CNDXC CHSU( C
      INTEGER NC,I,NS
      CHARACTER*80 TEMP,FNAME
      FNAME = IN
      CALL HEADCLFT(FNAME)
      CALL HEADLENL(NS, SUB)
      CALL HEADLENL(NC, FNAME)
      CALL HEADLENP(I, FNAME)
      NC = MIN(NC,I)
      TEMP = ' '
      CALL HEADCCPY(TEMP, FNAME,NC)
      IF(SUB(1:1).EQ.'.') THEN
        CALL HEADCCPY(TEMP(NC+1:),SUB,NS)
      ELSE
        TEMP(NC+1:NC+1) = '.'
        CALL HEADCCPY(TEMP(NC+2:),SUB,NS)
      ENDIF
      OUT = TEMP
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CLFT(

      SUBROUTINE HEADCLFT(C)
      CHARACTER*(*) C
C GET RID OF LEADING BLANKS, ONLY ONE WORD MOVED, UP TO FIRST BLANK.
CNDXC CLFT( C
      INTEGER I,I1,N,I2,NALL,NC,NCREST
      NC = LEN(C)
      DO 100 I=1,NC
        IF(C(I:I).NE.' ') GOTO 200
  100 CONTINUE
      RETURN
  200 CONTINUE
      IF(I.EQ.1) RETURN
      NCREST = NC-I+1
      CALL HEADLENR(N, C(I:NC),NCREST)
      NALL = I+N-1
      DO 300 I1=1,NC
        I2 = I1 + I - 1
        IF(I1.LE.N) THEN
          C(I1:I1) = C(I2:I2)
        ELSE
          C(I1:I1) = ' '
        ENDIF
  300 CONTINUE
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     CLOF(

      SUBROUTINE HEADCLOF(IDEV,FNAME)
      INTEGER IDEV,NUMBER
      CHARACTER*(*) FNAME
C CLOSE NEW FORMATTED FILE. CALL DEV6 FOR S/O, SET MACHINE WITH QSET.
CNDXI CLOF(
C CALL GTC1() TO TURN OFF NUMBERING OF FILES.
      INTEGER ICRAY,IOERR,ICERR
      CHARACTER NAMEO*64, CN*3
      DATA IOERR,ICERR/0,0/,CN/'000'/
      ICERR = 0
      IF(IDEV.NE.6) THEN
        CALL HEADQMAC(ICRAY)
        IF(ICRAY.EQ.1) THEN
          CALL HEADCCAT(NAMEO, FNAME,CN)
          CALL HEADADSU(NAMEO,NAMEO,'DAT')
CC CFIL() IS A PROTECTED VERSION OF CRAY UTILITY CLOSFIL():
          CALL CLOSFIL(NAMEO,IDEV,*1301)
          CALL HEADHEYU('... FILE WRITTEN TO VAX:')
          CALL HEADHEYU(NAMEO)
        ELSE
          CLOSE(UNIT=IDEV)
        ENDIF
      ELSE
        CALL HEADFEND()
      ENDIF
      RETURN
C......................................................................
      ENTRY HEADOPEF(IDEV,FNAME)
C OPEN NEW FORMATTED FILE, CALL DEV6 FOR S/O, SET MACHINE WITH QSET
      IOERR = 0
      CALL HEADQMAC(ICRAY)
      IF(IDEV.EQ.0.OR.ICRAY.EQ.1) CALL HEADDEVO(IDEV)
      IF(IDEV.NE.6) THEN
        CALL HEADGETC(CN)
        IF(ICRAY.EQ.1) THEN
CC          CALL HEADCCAT(NAMEO, FNAME(1:4),CN)
C ASSIGN DEFAULT TEMPORARY NAME LIKE fort.21 (unicos) or FT21 (cos)
          OPEN(UNIT=IDEV,FORM='FORMATTED',STATUS='UNKNOWN',ERR=1302)
        ELSE
          CALL HEADCCAT(NAMEO, FNAME,CN)
          CALL HEADADSU(NAMEO,NAMEO,'DAT')
          OPEN(UNIT=IDEV,FILE=NAMEO,FORM='FORMATTED',STATUS='NEW'
     1,ERR=1302)
        ENDIF
      ELSE
        CALL HEADFNEW(FNAME)
      ENDIF
      RETURN
C......................................................................
      ENTRY HEADOPIF(IDEV,FNAME)
C...   OPEN A FORMATTED FILE FOR INPUT, ORDINARY CLOSE(IDEV) WILL DO.
        IOERR = 0
        CALL HEADQMAC(ICRAY)
        IF(ICRAY.EQ.1) THEN
          CALL HEADDEVN(IDEV)
CC OFIL IS A STATIC VERSION OF CRAY UTILITY OPNFIL
          CALL OPNFIL(FNAME,IDEV,*1302)
        ELSE
          IF(IDEV.EQ.0) CALL HEADDEVN(IDEV)
          OPEN(UNIT=IDEV,ERR=1302,FILE=FNAME,STATUS='OLD',
     &         FORM='FORMATTED',ACCESS='SEQUENTIAL')
        ENDIF
      RETURN
C......................................................................
      ENTRY HEADCLOD(IDEV,FNAME)
C CLOSE AND DELETE A FILE
      ICERR = 0
      CLOSE(UNIT=IDEV,STATUS='DELETE',ERR=1301)
      RETURN
C......................................................................
 1301 CONTINUE
        ICERR = 1
        CALL HEADHEYU('PROBLEM DISPOSING FILE WITH CLOSFIL IN CLOF')
        CALL HEADHEYU(FNAME)
      RETURN
 1302 CONTINUE
        IOERR = 1
        CALL HEADQMAC(ICRAY)
      IF (ICRAY .EQ. 1) CALL HEADHEYU(' ERROR IN HEADOPIF OPENING FILE')
        IF (ICRAY .EQ. 1) CALL HEADHEYU(FNAME)
        IF (ICRAY.EQ.1) CALL HEADHEYU(' ICRAY=1')
C CANNOT OPEN SO RETURN DEVICE NUMBER TO ZERO.
        IDEV = 0
      RETURN
      ENTRY HEADOERR(IOERR0)
C  RETURN STATUS OF LAST OPEN
      IOERR0 = IOERR
      RETURN
      ENTRY HEADCERR(ICERR0)
C  RETURN STATUS OF LAST CLOSE
      ICERR0 = ICERR
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     DCOD(

      SUBROUTINE HEADDCOD(VALUE, CARD)
      REAL VALUE
      CHARACTER*(*) CARD
C DECODE A REAL NUMBER, PERHAPS IN SCIENTIFIC NOTATION.
CNDXI DCOD( I
      INTEGER N,I,N1,N2
      LOGICAL EE
      REAL R1,R2
      CHARACTER*20 C20
C SHIFT TO LEFT
      CALL HEADCLFT(CARD)
C FIND OUT IF IN EXPONENTIAL NOTATION
      N = LEN(CARD)
      EE = .FALSE.
      DO 100 I=1,N
        EE = (CARD(I:I).EQ.'E'.OR.CARD(I:I).EQ.'e')
        IF(EE) THEN
          N1 = I - 1
          N2 = I + 1
          GOTO 200
        ENDIF
  100 CONTINUE
  200 CONTINUE
      IF(.NOT.EE) THEN
C...        NO EXPONENT
        C20 = ' '
        C20 = CARD
        CALL HEADCADP(C20,20)
        READ(C20,1401,ERR=1301) VALUE
      ELSE
C...        HAVE AN EXPONENT, READ MANTISSA FIRST
        C20 = ' '
        C20 = CARD(:N1)
        CALL HEADCADP(C20,20)
        READ(C20,1401,ERR=1301) R1
C...        READ EXPONENT SECOND
        C20 = ' '
        C20 = CARD(N2:)
        CALL HEADCADP(C20,20)
        READ(C20,1401,ERR=1301) R2
        VALUE = R1 * EXP(LOG(10.)*R2)
      ENDIF
      RETURN
 1301 CONTINUE
        CALL HEADHEYU('DCOD: PROBLEM DECODING CARD')
        CALL HEADHEYU(CARD)
      RETURN
 1401 FORMAT(F20.7)
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     DEVN(

      SUBROUTINE HEADDEVN(IDEV)
      INTEGER IDEV
C GET A FREE DEVICE NUMBER FOR FORTRAN OPEN, USE FOR INPUT FILES.
CNDXI DEVN( I
      INTEGER IOUT
      DATA IOUT/0/
      CALL GETLUN(IDEV)
      RETURN
C***********************************************************************
      ENTRY HEADDEVO(IDEV)
C GETS DEVICE # FOR FORMATTED OUTPUT, RETURNS IDEV=6 IF DEV6() CALLED.
C  IS CALLED FIRST.
      IF(IOUT.NE.0) THEN
        IDEV = IOUT
      ELSE
        CALL GETLUN(IDEV)
      ENDIF
      RETURN
C***********************************************************************
      ENTRY HEADDEV6()
C CALL THIS IF DEVO SHOULD GO TO STANDARD OUTPUT
        IOUT = 6
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     FNEW(

      SUBROUTINE HEADFNEW(FILE)
C OPEN A PSEUDO FILE WITHIN A FILE; FEND CLOSES IT.
CNDXI FNEW( I
      CHARACTER FILE*(*),FILENO*20,C*3
      CALL HEADGETC(C)
      CALL HEADCCAT(FILENO, FILE,C)
      WRITE(6,*) 'BEGINNING OUTPUT OF FILE ',FILENO
      WRITE(6,*) '@BEGIN@'
      WRITE(6,*) FILENO
      RETURN
C**********************************
      ENTRY HEADFEND()
      WRITE(6,*) '@END@'
      WRITE(6,*) 'END OF OUTPUT OF FILE ',FILENO
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     GETC(

      SUBROUTINE HEADGETC(C)
      CHARACTER*1 C(3)
C GET NEXT CONSECUTIVE INTEGER (FROM 1) IN CHARACTER FORM FOR FILE NAMES
CNDXC GETC( C
      CHARACTER*1 CC(10)
      INTEGER IC,JC(3),I,KC,NC(10),J,L,ION
      DATA IC/0/
      DATA CC/'0','1','2','3','4','5','6','7','8','9'/
      DATA NC/0,1,2,3,4,5,6,7,8,9/
      DATA ION/-1/
      IF(ION.GT.0) THEN
        IC = IC + 1
        KC = IC
        DO 100 I=1,3
          JC(I) = MOD(KC,10)
          KC = KC/10
  100   CONTINUE
        DO 300 I=1,3
          L = 4 - I
          DO 200 J=1,10
            IF(NC(J).EQ.JC(I)) C(L) = CC(J)
  200     CONTINUE
  300   CONTINUE
      ELSE
        C(1) = ' '
        C(2) = ' '
        C(3) = ' '
      ENDIF
      RETURN
C***********************************************************************
      ENTRY HEADGTC1()
C TURN OFF NUMBERING OF FILES.
       ION = - 1
      RETURN
C***********************************************************************
      ENTRY HEADGTC2()
C TURN ON NUMBERING OF FILES.
       ION = 1
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     GV1(

      SUBROUTINE HEADGV1(VALUE,NVALUE, CARD,NAME)
      CHARACTER*(*) VALUE,CARD,NAME
      INTEGER NVALUE
C GET CHARACTER VALUE OF A VARIABLE 'NAME' FROM CARD.  NAME=VALUE.
CNDXC GV1( C
      CHARACTER CCARD*160,CNAME*80
      INTEGER IC1,IC2,IN1,NNAME,I,JC1,NCARD,IGAP,IBEGIN
      LOGICAL LQUOTE,HEADSPAC
C
      NCARD = LEN(CARD)

C  MODIFY SO # SIGN COMMENTS OUT FOLLOWING CHARACTERS DWH 05-03-94
      DO IC1 = 1 , NCARD
        IF (CARD(IC1:IC1) .EQ. '#') THEN
          NCARD = IC1 - 1
          GOTO 301
        ENDIF    ! IF (CARD(IC1:IC1) .EQ. '#') THEN
      ENDDO    ! DO IC1 = 1 , NCARD
  301 CONTINUE

C CAPITALIZE NAME AND CARD
      CALL HEADCAPS(CCARD, CARD)
      CALL HEADCAPS(CNAME, NAME)
      CALL HEADCLFT(CNAME)
      NVALUE = 0
      VALUE = ' '
      CALL HEADLENL(NNAME, NAME)
      NNAME = MIN(80, NNAME)
      DO 300 IC1=1,NCARD
        IF(CARD(IC1:IC1).EQ.'=') THEN
C COUNT IGAP, THE NUMBER OF INTERVENING BLANKS
          IGAP = 0
   50     CONTINUE
          IC2 = IC1 - IGAP - 1
          IF(IC2.LT.1) GOTO 300
          IF(CCARD(IC2:IC2).EQ.' ') THEN
            IGAP = IGAP + 1
            GOTO 50
          ENDIF
C SEE IF STRING MATCHES BEFORE BLANKS
          DO 100 IN1=1,NNAME
            IC2 = IC1 - NNAME - 1 + IN1 - IGAP
              IF(IC2.LT.1) GOTO 300
              IF(CCARD(IC2:IC2).NE.CNAME(IN1:IN1)) GOTO 300
  100     CONTINUE
C CHECK TO SEE IF CNAME IS NOT THE LAST PART OF ANOTHER NAME.
          IC2 = IC1 - NNAME - 1 - IGAP
          IF(IC2.GT.0) THEN
            IF (.NOT.HEADSPAC(CARD(IC2:IC2))) GOTO 300
C            IF(      CCARD(IC2:IC2).NE.' '.AND.
C     &               CCARD(IC2:IC2).NE.','.AND.
C     &               CCARD(IC2:IC2).NE.';'.AND.
C     &               CCARD(IC2:IC2).NE.'('         ) GOTO 300
          ENDIF
C HAVE A MATCH ; IGNORE FIRST BLANKS AFTER EQUALS SIGN
          IBEGIN = IC1 + 1
  150     CONTINUE
            IF(CARD(IBEGIN:IBEGIN).EQ.' ') THEN
              IBEGIN = IBEGIN + 1
              IF(IBEGIN.GT.NCARD) GOTO 300
              GOTO 150
            ENDIF
C CHECK TO SEE IF STRING IS IN QUOTES
          LQUOTE = (CARD(IBEGIN:IBEGIN).EQ.'"')
          IF(LQUOTE) IBEGIN = IBEGIN + 1
C START LOOP TO SET OUTPUT STRING
          VALUE = ' '
          JC1 = IBEGIN - 1
          NVALUE = 1
  200     CONTINUE
            IC2 = JC1 + NVALUE
            IF(IC2.LE.NCARD) THEN
              IF( ((.NOT.LQUOTE).AND.(.NOT.HEADSPAC(CARD(IC2:IC2))))
     &      .OR. (LQUOTE.AND.CARD(IC2:IC2).NE.'"') ) THEN
C              IF( ((.NOT.LQUOTE).AND.
C     &           CARD(IC2:IC2).NE.' '.AND.
C     &           CARD(IC2:IC2).NE.')'.AND.
C     &           CARD(IC2:IC2).NE.';'.AND.
C     &           CARD(IC2:IC2).NE.',').OR.
C     &           (LQUOTE.AND.CARD(IC2:IC2).NE.'"') ) THEN
                VALUE(NVALUE:NVALUE) = CARD(IC2:IC2)
                NVALUE = NVALUE + 1
                GOTO 200
              ENDIF
            ENDIF
          NVALUE = NVALUE - 1
        ENDIF
  300 CONTINUE
CC    WRITE(6,*) 'NAME VALUE ',CNAME(:NNAME),' ',VALUE(:NVALUE), NVALUE
      RETURN
      END

      SUBROUTINE HEADGV2(VALUE,NVALUE, NAME,IDEV)
      CHARACTER*(*) VALUE,NAME
      INTEGER NVALUE,IDEV
      SAVE MLINES,NFORL
      DATA MLINES,NFORL/200,-1/
C GET THE VALUE OF A VARIABLE 'NAME' FROM DEVICE IDEV
CNDXC GV2( C
C  USE FORMAT   'NAME=VALUE',  RETURNED VALUE IS A STRING.
C  STRING IS DELIMITED ON RIGHT BY BLANK, COMMA, OR PARENTHESIS.
C  KEEP LAST ASSIGNMENT IN FILE
C FIRST OPEN IDEV WITH
      CHARACTER CARD*160, VAL*80
      INTEGER NNAME,NVAL,NLINES,JLINES,MLINES,IFORL,JFORL,NFORL
      REWIND(IDEV)
      NVALUE = 0
      NLINES = 1
      IFORL = 0
  100 CONTINUE
        READ(IDEV,1401,END=200,ERR=1301) CARD
        CALL HEADGV1(VAL,NVAL, CARD,NAME)
        IF(NVAL.GT.0) THEN
          VALUE = VAL(:NVAL)
          NVALUE = NVAL
          IFORL = IFORL + 1
          IF (IFORL .EQ. NFORL) GOTO 200
        ENDIF
      NLINES = NLINES + 1
      IF(NLINES.LT.MLINES) GOTO 100
  200 CONTINUE
        CALL HEADLENL(NNAME,NAME)
CC        WRITE(6,*) 'NAME VALUE ',NAME(:NNAME),' ',VALUE(:NVALUE)
      RETURN
 1301 CONTINUE
C      WRITE(6,*) 'ERROR READING DEVICE ',IDEV
      RETURN
 1401 FORMAT(160A)
      ENTRY HEADPLIN(JLINES)
C SET THE NUMBER OF LINES TO READ IN GV2
      MLINES = JLINES
      RETURN
      ENTRY HEADGLIN(JLINES)
C RETURN THE NUMBER OF LINES TO READ IN GV2
      JLINES = MLINES
      RETURN
      ENTRY HEADPORL(JFORL)
C  SE THE NUMBER OF OCCURENCES TO SEARCH FOR
      NFORL = JFORL
      RETURN
      ENTRY HEADGORL(JFORL)
C  RETURN THE NUMBER OF OCCURENCES TO SEARCH FOR
      JFORL = NFORL
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     GVR(

      SUBROUTINE HEADGVR(RVALUE, NAME)
      REAL RVALUE
      INTEGER IVALUE,NCHAR,IDEVN
      CHARACTER*(*) NAME,CVALUE,FNAME
C GET REAL VALUE FROM FILE; "NAME=RVALUE" ; 1ST CALL GVOP; GVCL LAST.
CNDXI GVR( I
      INTEGER NVALUE,IDEV,IOS,ICRAY,IOPEN,I
      REAL R
      CHARACTER*80 VALUE
      CHARACTER*20 C20
      DATA IDEV/0/,IOPEN/0/
        IF(IOPEN.EQ.0) RETURN
        CALL HEADGV2(VALUE,NVALUE, NAME,IDEV)
        IF(NVALUE.GE.1) THEN
          CALL HEADDCOD(RVALUE, VALUE(:NVALUE))
        ENDIF
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVI(IVALUE, NAME)
C GET AN INTEGER VALUE FROM A PARAMETER FILE
        IF(IOPEN.EQ.0) RETURN
        CALL HEADGV2(VALUE,NVALUE, NAME,IDEV)
        IF(NVALUE.GE.1) THEN
          CALL HEADDCOD(R,VALUE(:NVALUE))
          IVALUE = INT(R+0.499)
        ENDIF
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVC(CVALUE,NCHAR, NAME)
C GET A CHARACTER STRING FROM A PARAMETER FILE
        IF(IOPEN.EQ.0) THEN
          NCHAR = 0
          RETURN
        ENDIF
        CALL HEADGV2(VALUE,NVALUE, NAME,IDEV)
        IF(NVALUE.GE.1) THEN
          CVALUE = ' '
          CVALUE = VALUE(:NVALUE)
          NCHAR = NVALUE
        ENDIF
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVOP(FNAME)
C CALL THIS TO OPEN A PARAMETER FILE BEFORE CALLING GVR,GVI,OR GVC
        IF(IOPEN.EQ.1) CLOSE(IDEV)
        CALL HEADOPIF(IDEV,FNAME)
        IOPEN = 1
        IF(IDEV.EQ.0) IOPEN=0
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVDN(IDEVN)
C CALL THIS TO FIND OUT WHAT THE DEVICE (UNIT) NUMBER IS OPEN
        IDEVN = IDEV
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVND(IDEVN)
C CALL THIS TO SET THE DEVICE NUMBER TO AN EXTERNALLY OPENED FILE.
        IDEV = IDEVN
        IOPEN = 1
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVCL()
C CALL THIS TO CLOSE THE PARAMETER FILE
        IF(IOPEN.EQ.1) CLOSE(IDEV)
        IOPEN = 0
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     HEYU(

      SUBROUTINE HEADHEYU(STRING)
      INTEGER NEWDEV
      CHARACTER*(*) STRING
C WRITE A MESSAGE TO ERROR OUTPUT; DEFAULT IS UNIT 6.
CNDXA HEYU( A
      INTEGER N,IDEV
      DATA IDEV/6/
      N = LEN(STRING)
      IF(N.GT.0) THEN
        N = MAX(1,MIN(80, N ))
        WRITE(IDEV,1401) STRING(:N)
      ENDIF
 1401 FORMAT(X,80A)
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADHEYD(NEWDEV)
C ARGUMENT SETS HEYU() OUTPUT TO ANOTHER DEVICE UNIT NUMBER
      IDEV = NEWDEV
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     LENL(

      SUBROUTINE HEADLENL(N, C)
      CHARACTER*(*) C
      INTEGER N
C FIND THE LENGTH OF A STRING BEFORE FIRST BLANK, FROM LEFT.
CNDXC LENL( C
      INTEGER NC,I
      NC = LEN(C)
      DO 100 I=1,NC
        N = I
        IF(C(N:N).EQ.' ') GOTO 200
  100 CONTINUE
      N = NC + 1
C BREAK
  200 CONTINUE
      N = N - 1
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     LENP(

      SUBROUTINE HEADLENP(N, C)
      CHARACTER*(*) C
      INTEGER N
C FIND THE LENGTH OF A STRING BEFORE FIRST PERIOD, FROM RIGHT
CNDXC LENP( C
C STOP AT FIRST BRACKET ]. IF NO PERIOD STOP BEFORE FIRST BLANK.
      INTEGER NC,NCB,I
      NC = LEN(C)
      NCB = NC + 1
      DO 100 I=NC,1,-1
        N = I
        IF(C(N:N).EQ.' ') NCB = N
        IF(C(N:N).EQ.']') GOTO 150
        IF(C(N:N).EQ.'.') GOTO 200
  100 CONTINUE
  150 CONTINUE
      N = NCB
  200 CONTINUE
      N = N - 1
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     LENR(

      SUBROUTINE HEADLENR(N, C,NC)
      CHARACTER*(*) C
      INTEGER N,NC
C FIND THE LENTH OF A STRING BEFORE FIRST BLANK, FROM RIGHT
CNDXC LENR( C
      INTEGER I
      DO 100 I=NC,1,-1
        N = I
        IF(C(N:N).NE.' ') GOTO 200
  100 CONTINUE
      N = 1
  200 CONTINUE
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     PVR(

      SUBROUTINE HEADPVR(RVALUE, NAME)
      REAL RVALUE
      INTEGER IVALUE,IDEVN
      CHARACTER*(*) NAME,CVALUE,FNAME
C PUT REAL VALUE TO PARAMETER FILE; "NAME=RVALUE"; 1ST CALL PVOP
CNDXI PVR( I
      INTEGER NVALUE,IDEV,IOS,ICRAY,NNAME,NCHAR,NC40,NC
      REAL R
      CHARACTER VALUE*80, C80*80, C40*40, FILOPN*64
      DATA IDEV/0/,FILOPN/' '/
        CALL HEADLENL(NNAME, NAME)
        C40 = ' '
        WRITE(C40,1402) RVALUE
        CALL HEADCLFT(C40)
        WRITE(C80,1401) NAME(1:NNAME),'=',C40
        CALL HEADLENR(NC, C80,80)
        WRITE(IDEV,1401,ERR=1304) C80(:NC)
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPVI(IVALUE, NAME)
C PUTS INTEGER VALUE INTO A PARAMETER FILE.
        CALL HEADLENL(NNAME, NAME)
        C40 = ' '
        WRITE(C40,1403) IVALUE
        CALL HEADCLFT(C40)
        WRITE(C80,1401) NAME(1:NNAME),'=',C40
        CALL HEADLENR(NC, C80,80)
        WRITE(IDEV,1401,ERR=1304) C80(:NC)
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPVC(CVALUE, NAME)
C PUTS A CHARACTER STRING TO A PARAMETER FILE.
        CALL HEADLENL(NNAME, NAME)
        NC = LEN(CVALUE)
        CALL HEADLENR(NCHAR, CVALUE,NC)
        WRITE(C80,1401) NAME(1:NNAME),'="',CVALUE(1:NCHAR),'"'
        CALL HEADLENR(NC, C80,80)
        WRITE(IDEV,1401,ERR=1304) C80(:NC)
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPVOP(FNAME)
C OPENS A NEW PARAMETER FILE
        FILOPN = FNAME
        CALL HEADOPEF(IDEV,FNAME)
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPVDN(IDEVN)
C FIND OUT WHAT DEVICE UNIT NUMBER IS BEING USED.
        IDEVN = IDEV
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADPVCL()
C CLOSE THE PARAMETER FILE AFTER WRITING.
        CALL HEADCLOF(IDEV,FILOPN)
      RETURN
C***********************************************************************
 1301 CONTINUE
      CALL HEADHEYU('DEATH IN PVOP')
      STOP
 1302 CONTINUE
      CALL HEADHEYU('DEATH IN PVR')
      STOP
 1303 CONTINUE
      CALL HEADHEYU('DEATH IN PVI')
      STOP
 1304 CONTINUE
      CALL HEADHEYU('DEATH IN PVC')
      STOP
 1401 FORMAT(X,80A)
 1402 FORMAT(X,G16.6)
 1403 FORMAT(X,I16)
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
C     QMAC(

      SUBROUTINE HEADQMAC(IMAC)
      INTEGER IMAC
C QUERY MACHINE: IMAC = 0,VAX; 1,CRAY.
CNDXI QMAC( I
      INTEGER JMAC
      DATA JMAC/0/
      IMAC = JMAC
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADQSET(IMAC)
C SPECIFY MACHINE
      JMAC = IMAC
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
      SUBROUTINE HEADGVRC(CARD,RVALUE, NAME)
      REAL RVALUE
      INTEGER IVALUE,NCHAR,IDEVN
      CHARACTER*(*) CARD,NAME,CVALUE
C GET REAL VALUE FROM CHARACTER STRING; "NAME=RVALUE" ; 1ST CALL GVOP; GVCL LAST.
CNDXI GVRC( I
      INTEGER NVALUE
      REAL R
      CHARACTER*80 VALUE
        CALL HEADGV1(VALUE,NVALUE, CARD,NAME)
        IF (NVALUE.GE.1) CALL HEADDCOD(RVALUE, VALUE(:NVALUE))
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVIC(CARD,IVALUE, NAME)
C GET AN INTEGER VALUE FROM A CHARACTER STRING
        CALL HEADGV1(VALUE,NVALUE, CARD,NAME)
        IF (NVALUE.GE.1) THEN
          CALL HEADDCOD(R, VALUE(:NVALUE))
          IVALUE = INT(R+0.499)
        ENDIF
      RETURN
C23456789012345678901234567890123456789012345678901234567890123456789012
      ENTRY HEADGVCC(CARD,CVALUE,NCHAR, NAME)
C GET A CHARACTER STRING FROM A CHARACTER STRING
        NCHAR = 0
        CALL HEADGV1(VALUE,NVALUE, CARD,NAME)
        IF(NVALUE.GE.1) THEN
          CVALUE = ' '
          CVALUE = VALUE(:NVALUE)
          NCHAR = NVALUE
        ENDIF
      RETURN
      END

C23456789012345678901234567890123456789012345678901234567890123456789012
      LOGICAL FUNCTION HEADSPAC(CARD)
C  IS CARD OONE OF THE DELIMITERS
      CHARACTER *1 CARD
      INTEGER MC
      PARAMETER (MC=3)
      CHARACTER C(3)*1
      DATA C/' ',',','('/
      HEADSPAC = .FALSE.
      DO 1 I = 1 , MC
        HEADSPAC = HEADSPAC .OR. (CARD .EQ. C(I))
    1 CONTINUE
      RETURN
      END

