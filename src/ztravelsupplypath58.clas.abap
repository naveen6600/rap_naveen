CLASS ztravelsupplypath58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTRAVELSUPPLYPATH58 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  select from zcdssupplytravel88
  fields travel_id ,

  \_supply-client ,
  \_supply-booking_supplement_id into table @data(lt_flight).

  out->write( lt_flight ).

  ENDMETHOD.
ENDCLASS.
