CLASS zcl_travel_58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  types : t_type_travel type standARD TABLE OF zcds_travel58.
  methods: get_travel_data,
  send_travel_info exporting et_travel TYPE t_type_travel.
  PROTECTED SECTION.
  PRIVATE SECTION.

  data : t_travel type standard TABLE OF zcds_travel58.


ENDCLASS.



CLASS ZCL_TRAVEL_58 IMPLEMENTATION.


method : get_travel_data.
clear t_travel.
select from Zcds_travel58 fielDS * into table @t_travel up to 1000 rows.
endMETHOD.


method : send_travel_info .
et_travel  = t_travel .
endMETHOD.
ENDCLASS.
