//ODEV1J JOB 1,NOTIFY=&SYSUID
//***************************************************************************//
//* Copyright Contributors to the COBOL Programming Course                  *//
//* SPDX-License-Identifier: CC-BY-4.0                                      *//
//***************************************************************************//
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(ODEV1),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(ODEV1),DISP=SHR
//***************************************************************************//
//*                                                                         *//
//* COBRUN  EXEC IGYWCL                                                     *//
//* Cobol programini derlerlemek icin kullanilir                            *//
//* COBRUN: COBOL programi calistirir                                       *//
//* EXEC:   Belirtilen programi calistirir                                  *//
//* IGYWCL: IBM makinelerinde derlemek ve calistirmak icin bir programdir   *//
//*                                                                         *//
//* COBOL.SYSIN  DD DSN=&SYSUID..CBL(ODEV1),DISP=SHR                        *//
//* COBOL.SYSIN:    Verilen DD(dataset definition) kullanarak programi      *//
//*                 derler bu ornekte (userid).CBL deki ODEV1 dosyasina     *//
//*                 isaret eder DISP=SHR datasetinin paylasimli oldugu      *//
//*                 anlamina gelir                                          *//
//*                                                                         *//
//* LKED.SYSLMOD DD DSN=&SYSUID..LOAD(ODEV1),DISP=SHR                       *//
//* LKED.SYSLMOD:   Verilen isimde dataset olusturup derlenen programi      *//
//*                 oraya cikartir                                          *//
//*                                                                         *//
//***************************************************************************//
// IF RC = 0 THEN
//***************************************************************************//
//*                                                                         *//
//* Return degeri 0 ise asagidaki kodlari calistiracak degilse else gidecek *//
//*                                                                         *//
//***************************************************************************//
//RUN     EXEC PGM=ODEV1
//***************************************************************************//
//*                                                                         *//
//* ODEV1 adi verilmis programi calistiracak                                *//
//* NOT:CBL dosyasinda PROGRAM-ID ile belirtdigimiz yer                     *//
//*                                                                         *//
//***************************************************************************//
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//***************************************************************************//
//*                                                                         *//
//* yanlis anlamadiysam yukardaki odev1 programini gorebilmesi icin lazim   *//
//* olan dataset. (userid).load kismindan aciyor orada derlenen programimiz *//
//* var                                                                     *//
//*                                                                         *//
//***************************************************************************//
//ACCTREC   DD DSN=&SYSUID..DATA,DISP=SHR
//***************************************************************************//
//*                                                                         *//
//* Programda okumak icin bir dataset aciyoruz                              *//
//*                                                                         *//
//***************************************************************************//
//PRTLINE   DD DSN=&SYSUID..DATA.PRT,DISP=(NEW,CATLG,DELETE),
//          SPACE=(TRK,(150,10))
//***************************************************************************//
//*                                                                         *//
//* DISP=(NEW,CATLG,DELETE):                                                *//
//* NEW =   Yeni bir dataset olusturuyoruz                                  *//
//* CATLG=  Dataseti ilerde kullanabilmek icin kaydediyoruz.                *//
//* DELETE= Islem sonunda data setini siliyoruz                             *//
//* CATLG islem basarili ise calisir DDLETE ise basarisiz olursa calisir    *//
//*                                                                         *//
//* SPACE:  Datasetin boyutunu vermek icin kullanilir                       *//
//* TRK:    Diskte track olusturur.                                         *//
//* CYL:    TRK yerine yazilabilir. Diskte bir Cylinder yer olusturur.      *//
//* Bir diskin uzerindeki okuma yazma basinin baslangic yerinden baslayarak *//
//* bir tur ayni duzlemde donmesi 1 cylinder eder. Track ise bu cylinder de *//
//* her bir isaret olarak tabir edilebilir.                                 *//
//*                                                                         *//
//***************************************************************************//
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
// ELSE
// ENDIF
