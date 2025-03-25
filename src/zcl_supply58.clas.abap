CLASS zcl_supply58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

 PUBLIC SECTION.
    types : t_type_supply type standARD TABLE OF zrp_supply58.
  methods: get_supply_data,
  send_supply_info exporting et_supply TYPE t_type_supply.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: lt_supply type standARD TABLE OF zrp_supply58.
ENDCLASS.



CLASS ZCL_SUPPLY58 IMPLEMENTATION.


method : get_supply_data.
clear lt_supply .
 select from zrp_supply58 fields * into table @lt_supply up to 1000 rows.

endmethod.


  METHOD send_supply_info.
  et_supply = lt_supply.

  ENDMETHOD.
ENDCLASS.
