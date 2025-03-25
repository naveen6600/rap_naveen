CLASS zbookingtable9058 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZBOOKINGTABLE9058 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data: wa type ztbl_booking9058,
        lt_booking type standard table of ztbl_booking9058 .
*  wa-booking = '1'.
*  wa-client = sy-mandt.
*  wa-cost = '10000'.
*  wa-country = 'india'.
*  wa-currencycode = 'rup'.
*  wa-customer_name = 'raghav'.
*  wa-dateofbooking = '20250204120202.0'.
*  wa-dateoftravel = '20250404120202.0'.
*  wa-emailaddress = 'naveenmujaediya@gmail.com'.
*  wa-lastchangedat = '20250503120202.0'.
*  wa-numberofpassengers = '50'.
*
*
*    insert ztbl_booking9058 from @wa.
*    commit work.
*
 append value #(
    client = sy-mandt
    booking = 1006
    cost = '20000.00'
    country = 'indian'
    currencycode = 'rup'
    customer_name = 'raju'
    dateofbooking = '20260208120000'
    dateoftravel = '20260303120000'
    emailaddress = 'naveenmujawdiya@'
    lastchangedat = '20250808120000'
    numberofpassengers ='2'



) to lt_booking.





lt_booking = value #(


(
  client = sy-mandt
    booking = 1002
    cost = '20000.00'
    country = 'indian'
    currencycode = 'rup'
    customer_name = 'raju'
    dateofbooking = '20260208120000'
    dateoftravel = '20260303120000'
    emailaddress = 'naveenmujawdiya@'
    lastchangedat = '20250808120000'
    numberofpassengers ='2'

 )

 (
 client = sy-mandt
    booking = 1003
    cost = '20000.00'
    country = 'indian'
    currencycode = 'rup'
    customer_name = 'raju'
    dateofbooking = '20260208120000'
    dateoftravel = '20260303120000'
    emailaddress = 'naveenmujawdiya@'
    lastchangedat = '20250808120000'
    numberofpassengers ='2'
 )


).

insert ztbl_booking9058 from table @lt_booking.
commit work.


  ENDMETHOD.
ENDCLASS.
