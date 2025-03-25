@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of current stock'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zinv_cds_curnt_stkl
  as select from zinv_curnt_stk58
  composition [0..*] of zinv_materialmvmt58  as _mtmvmt
  composition [0..*] of Zinv_slow_mvmtcds    as _slwmvmt
  composition [0..*] of Zinv_stock_val58_cds as _invstck


{
  key materialid      as Materialid,
  key plant           as Plant,
      storagelocation as Storagelocation,
      stocktype       as Stocktype,
      quantity        as Quantity,
      unitofmeasure   as Unitofmeasure,
      @Semantics.amount.currencyCode: 'currencycode'
      value           as Value,
      currencycode    as Currencycode,
      unit            as Unit,
      _mtmvmt,
      _slwmvmt,
      _invstck
      //    _association_name // Make association public
}
