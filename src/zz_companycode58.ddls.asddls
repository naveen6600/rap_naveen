@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'company code'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #BASIC
define view entity ZZ_companycode58 as select from ZZ_companycode 
{
@ObjectModel.text.element: [ 'CompanyCodeName' ]
key companyID,
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.8
@Semantics.text: true
@Semantics.organization.name: true
CompanyCodeName as CompanyCodeName

    
}
