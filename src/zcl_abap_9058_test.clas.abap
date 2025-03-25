CLASS zcl_abap_9058_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_9058_TEST IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data(s1) = |hello{ cl_abap_context_info=>get_system_date(  ) }!|.
  OUT->WRITE( s1 ).
    out->write( 'hello world' ).

    data(s2) = |hello| && |world !|.
    out->write( s2 ).

    data(s3) = 'test' && 'world'.
    out->write( s3 ).

    data: lv_matnr type char10 value '1220'.
          lv_matnr = |{ lv_matnr alpha = in } |.
          out->write( lv_matnr ).


         out->write( lv_matnr && s1 && s2 && s3 ).

         data: obj_context tYPE ref tO cl_abap_context_info.
               obj_context = new cl_abap_context_info( ).

               data(s4) = |{ cl_abap_context_info=>get_user_technical_name( )   }|.
               out->write( s4 ).


               data(time) = cond string( when 'sy-timlo ' < '12000' then

               'morning'

               when 'sy-timlo' >'12000' then 'afternoon'

               when  'sy-timlo' = '12000' then
               'high noon'


               ).

               out->write( time ).

                           data(SUM) = REDUCE i(  init y = 0
                           for n = 7 then n + 1 WHILE n < 89
                           next y += n
                           ).

                           OUT->write( SUM ).











  ENDMETHOD.
ENDCLASS.
