CLASS ztravelclass_58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
*    INTERFACES if_sadl_gw_data_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTRAVELCLASS_58 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data : lt_travel type table of zdt_travel58 .

         clear lt_travel.

         lt_travel = value #(


         (
         client = sy-mandt
         travel_id = 109
         agency_id = 1000
         customer_id = 9059
         begin_date = '20250808'
         end_date = '20260809'
         booking_fee = '500'
         total_price = '6000'
         currency_code = 'dol'
         description = 'he is travelling from gdi to mum'
         overall_status = 't'








         )

(
  client = sy-mandt
         travel_id = 110
         agency_id = 1007
         customer_id = 9060
         begin_date = '20250808'
         end_date = '20260809'
         booking_fee = '500'
         total_price = '6000'
         currency_code = 'dol'
         description = 'he is travelling from gdi to mum'
         overall_status = 't'
         created_by = cl_abap_context_info=>get_user_technical_name( )
         created_at = cl_abap_context_info=>get_system_time(  )








 )







         ).

         delete from  zdt_travel58.
           commit work and wait.
         insert zdt_travel58 from table @lt_travel .



  ENDMETHOD.
ENDCLASS.
