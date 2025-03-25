@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'inv stock val cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zinv_stock_val58_cds as select from zinv_stock_val58
association to parent zinv_cds_curnt_stkl as _invcds on $projection.Materialid = _invcds.Materialid and 
$projection.Plant = _invcds.Plant
{
    key materialid as Materialid,
    key plant as Plant,
    valutiontype as Valutiontype,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode : 'currencycode'
    value as Value,
    currencycode as Currencycode,
    valuationdate as Valuationdate,
    _invcds
}
