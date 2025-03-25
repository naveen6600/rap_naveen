CLASS zcl_flightfinal DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  methods : get_data , prepare_final_table .
  interFACES : if_oo_adt_classrun.

   types : beGIN OF type_final,

*travel
          travelId type zcds_travel58-TravelId,
          agencyid type zcds_travel58-AgencyId,
          customerid type zcds_travel58-CustomerId,
* booking
          bookingid type zrp_booking58-BookingId,
          bookingdate type zrp_booking58-BookingDate,

          bookingSupplementid type zrp_supply58-BookingSupplementId,
          supplementid type zrp_supply58-BookingSupplementId,

          end of type_final,

          t_type_final type standard table of type_final.

  PROTECTED SECTION.


  PRIVATE SECTION.
  data : obj_travel type ref to zcl_travel_58,
         obj_supply type ref to zcl_supply58,
         obj_booking type ref to zcl_booking58.
  data: lt_final type t_type_final .
ENDCLASS.



CLASS ZCL_FLIGHTFINAL IMPLEMENTATION.


  METHOD get_data.

  obj_travel = new zcl_travel_58(  ).
  obj_booking = new zcl_booking58(  ).
  obj_supply = new zcl_supply58(  ).

  obj_travel->get_travel_data(  ).
  obj_supply->get_supply_data(  ).
  obj_booking->get_booking_data(  ).



  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
  get_data(  ).
  prepare_final_table(  ).
  out->write( lt_final ).

  ENDMETHOD.


  METHOD prepare_final_table.
  data : lt_travel type stANDARD TABLE OF zcds_travel58,
         lt_booking type STANDARD TABLE OF zrp_booking58,
         lt_supply type stANDARD TABLE OF zrp_supply58.

         obj_travel->send_travel_info(
         importing
         et_travel = lt_travel
         ).

          obj_booking->send_booking(
         importing
         et_booking = lt_booking
         ).

          obj_supply->send_supply_info(
         importing
         et_supply = lt_supply
         ).

         lt_final = value #(
         for lw_travel in lt_travel
               for lw_booking in lt_booking where ( travelid = lw_travel-TravelId )

                FOR Lw_supply in lt_supply where ( travelid = lw_travel-TravelId )
               (
               travelid = lw_travel-TravelId
               agencyid = lw_travel-AgencyId
               customerid = lw_travel-CustomerId

               bookingid = lw_booking-BookingId
               bookingdate = lw_booking-BookingDate

               bookingsupplementid = lw_supply-BookingSupplementId



               )
         ).

  ENDMETHOD.
ENDCLASS.
