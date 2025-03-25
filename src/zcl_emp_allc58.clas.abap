CLASS zcl_emp_allc58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EMP_ALLC58 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data: it_empalc type table of ZDT_EMP_ALN58.

        it_empalc = value #(
        (
        emp_id = 1
        allocation_id = 10
        profit_center = 1022
        allocation_per = 30
        Active = 'X'
        Status = 'Active'
        To_Date = 20220201
        from_date = 20250201

        )

          (
        emp_id = 1
        allocation_id = 11
        profit_center = 1023
        allocation_per = 30
        Active = 'X'
        Status = 'Active'
        To_Date = '20220201'
        from_date = '20250202'

        )
          (
        emp_id = 1
        allocation_id = 12
        profit_center = 1024
        allocation_per = 40
        Active = 'X'
        Status = 'Active'
        To_Date = '20220201'
        from_date = '20250503'

        )
          (
        emp_id = 2
        allocation_id = 13
        profit_center = 1022
        allocation_per = 60
        Active = 'X'
        Status = 'Active'
        To_Date = '20220201'
        from_date = '20250504'

        )
          (
        emp_id = 2
        allocation_id = 14
        profit_center = 1023
        allocation_per = 20
        Active = 'X'
        Status = 'Active'
        To_Date = '20220201'
        from_date = '20250201'

        )





         ).
          delete from ZDT_EMP_ALN58 .
        commit woRK and wait .
        insert ZDT_EMP_ALN58 from table @it_empalc.
        commit work and wait.
  ENDMETHOD.
ENDCLASS.
