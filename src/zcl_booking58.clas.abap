CLASS zcl_booking58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  types : t_booking type stANDARD TABLE OF zrp_booking58.
  methodS : get_booking_data ,
  send_booking exporting et_booking type t_booking.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: lt_booking type standARD TABLE OF zrp_booking58.
ENDCLASS.



CLASS ZCL_BOOKING58 IMPLEMENTATION.


method : get_booking_data.
clear lt_booking .
 select from zrp_booking58 fields * into table @lt_booking up to 1000 rows.

endmethod.


  METHOD send_booking.
  et_booking = lt_booking.

  ENDMETHOD.
ENDCLASS.
