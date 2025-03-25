@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view slow movement'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zinv_slow_mvmtcds as select from zinv_slow_movg58
association to parent zinv_cds_curnt_stkl as _invcds on $projection.Materialid = _invcds.Materialid and 
$projection.Plant = _invcds.Plant

{
    key materialid as Materialid,
    key plant as Plant,
    storagelocation as Storagelocation,
    lastmovementdate as Lastmovementdate,
    dayswithoutmovemnet as Dayswithoutmovemnet,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    @Semantics.amount.currencyCode : 'currencycode'
    value as Value,
    currencycode as Currencycode,
    _invcds
}
