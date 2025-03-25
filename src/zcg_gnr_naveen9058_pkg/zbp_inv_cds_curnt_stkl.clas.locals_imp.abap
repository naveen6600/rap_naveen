CLASS lhc_zinv_cds_curnt_stkl DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zinv_cds_curnt_stkl RESULT result.

ENDCLASS.

CLASS lhc_zinv_cds_curnt_stkl IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
