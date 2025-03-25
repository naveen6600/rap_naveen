CLASS zcl_data_generator_58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DATA_GENERATOR_58 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



*data(ld_text) = `Deleting value...` .
* out->write( ld_text ).
*DELETE FROM zdt_booking58.
*DELETE FROM zdt_travel58.
*DELETE FROM zdt_supply58.
*COMMIT WORK.
*ld_text = `Inserting value...` .
*out->write( ld_text ).
*INSERT zdt_travel58 FROM (
*   SELECT * FROM /dmo/travel_m
*).
*
*COMMIT WORK.
*INSERT zdt_booking58 FROM ( SELECT * FROM /dmo/booking_m ).
*COMMIT WORK.
*INSERT zdt_supply58  FROM ( SELECT * FROM /dmo/booksuppl_m ).
* COMMIT WORK.
*ld_text = `Process Complete...'`.
*out->write( ld_text ).


delete from zdt_travel58.
delete from zdt_booking58.
deleTE from zdt_supply58 .
commit work.

insert zdt_booking58 from ( select * from /dmo/booking_m ) .
commit work .
insert zdt_supply58 from ( select * from /dmo/booksuppl_m ).
commit work .

insert zdt_travel58 from ( select * from /dmo/travel_m ).
commit work .


select from zdt_travel58 fields * into table @data(lt_travel).
data(lv_total) = reduce zdt_TRAVEL58-total_price(
INIT lv_price = 0
        for <lfs_travel> in lt_travel
        next lv_price = lv_price + <lfs_travel>-total_price
).

out->write( lv_total ).


  ENDMETHOD.
ENDCLASS.
