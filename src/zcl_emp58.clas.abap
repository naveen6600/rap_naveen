CLASS zcl_emp58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_EMP58 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA : it_emp TYPE TABLE OF Zdt_empmast58,
           wa_emp TYPE Zdt_empmast58.



    CLEAR : it_emp,
            wa_emp.


    it_emp = VALUE #(

                 (
                     emp_id = 1
                     emp_name = 'John Smith'
                     company_name = 'Tech Investors Inc'
                     designation = 'Data Analyst'

                 )
                  (
                     emp_id = 2
                     emp_name = 'Emily Johnson'
                     company_name = 'Global Solutions Ltd'
                     designation = 'Marketing Co-ordinater'

                 )
                  (
                     emp_id = 3
                     emp_name = 'Michael Brown'
                     company_name = 'Apex Enterprises'
                     designation = 'Sales Executive'

                 )
                 (

                   emp_id = 4
                   emp_name = 'Sarah Devis'
                   company_name = 'Visionary Ventures'
                   designation = 'Financial Analyst'
                 )
                 (

                 emp_id = 5
                 emp_name = 'David Wilson'
                 company_name = 'Stellar Technologies'
                 designation = 'Product Designer'
                 )

                 (
                 emp_id = 6
                 emp_name = 'Jessica Andrson'
                 company_name = 'Quantum Dynamics'
                 designation = 'Content Writer'
                 )

                 (
                 emp_id = 7
                 emp_name = 'Laura Thomas'
                 company_name = 'Horizon Industries'
                 designation = 'Data Analyst'
                 )
                 (
                 emp_id = 8
                 emp_name = 'James Taylor'
                 company_name = 'Pinnacle Partners'
                 designation = 'Sales Executive'
                 )
                 (
                 emp_id = 9
                 emp_name = 'Olivia Moore'
                 company_name = 'Nexus Networks'
                 designation = 'Financial Analyst'
                 )
                 (
                 emp_id = 10
                 emp_name = 'Robert Jackson'
                 company_name = 'Synergy Systems'
                 designation = 'Product Designer'
                 )
                 (
                 emp_id = 11
                 emp_name = 'Sophia White'
                 company_name = 'Elite Enterprises'
                 designation = 'Marketing Coordinator'
                 )



    ).

 delete from  zdt_empmast58.
           commit work and wait.
    INSERT zdt_empmast58 FROM TABLE @it_emp.
    COMMIT WORK AND WAIT.

    IF sy-subrc = 0.
      out->write( 'Data Inserted' ).
    ELSE.
      out->write( 'Failed' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
