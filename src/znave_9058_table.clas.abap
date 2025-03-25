CLASS znave_9058_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZNAVE_9058_TABLE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.




       data : wa  tYPE znaveen_employee ,
              it type table of  znaveen_employee .

              wa-employeeno = '127'.
              wa-employeename = 'naveen mujawdiya'.

              insert znaveen_employee from @wa.
              commit work.

                wa-employeeno = '124'.
              wa-employeename = 'naveen ram'.

              insert znaveen_employee from @wa.
              commit work.
                wa-employeeno = '124'.
              wa-employeename = 'naveen mshaa'.

              insert znaveen_employee from @wa.
              commit work.
                wa-employeeno = '125'.
              wa-employeename = 'naveen '.

              insert znaveen_employee from @wa.
              commit work.
                wa-employeeno = '126'.
              wa-employeename = 'naveen '.

              insert znaveen_employee from @wa.
              commit work.
                wa-employeeno = '128'.
              wa-employeename = 'naveen mujawdiya'.

              insert znaveen_employee from @wa.
              commit work.

             if sy-subrc = 0 .
              out->write( 'data inserted' ).
              endIF.





  ENDMETHOD.
ENDCLASS.
