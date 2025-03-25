@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'desgnation code'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #BASIC
define view entity ZZ_designationCC as select from ZEMp_designationcode
{
@ObjectModel.text.element: [ '' ]
key designationID,
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.8
@Semantics.text: true
@Semantics.organization.name: true
DesignationName as DesignationName
    
}
