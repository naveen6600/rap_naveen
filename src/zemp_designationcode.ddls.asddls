@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'desgination value help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZEMp_designationcode as select from I_Language
{
    key cast ('1' as abap.char(1)) as designationID ,
    cast('Data Analyst' as abap.char(50)) as DesignationName
}
where Language = $session.system_language

union 

select from I_Language
{
 key cast ('2' as abap.char(1)) as designationID ,
    cast('Marketing Coordinator' as abap.char(50)) as DesignationName

}
 