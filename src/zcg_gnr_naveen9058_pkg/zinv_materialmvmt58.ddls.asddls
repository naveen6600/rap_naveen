@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'material movement cds view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zinv_materialmvmt58 as select from zinv_materialm58
association to parent zinv_cds_curnt_stkl as _invcds on $projection.Materialid = _invcds.Materialid and 
$projection.Plant = _invcds.Plant                                                        

{
    key movementid as Movementid,
    key materialid as Materialid,
    key plant as Plant,
    storagelocation as Storagelocation,
    movementtype as Movementtype,
    quantity as Quantity,
    unitofmeasure as Unitofmeasure,
    movementdate as Movementdate,
    _invcds
}
