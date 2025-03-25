@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'company code'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZZ_companycode as select from I_Language
{
    key cast('1' as abap.char(2)) as companyID ,
    cast ('Tech Innovators Inc.' as abap.char(50) ) as  CompanyCodeName
}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('2' as abap.char(2)) as companyID ,
    cast ('Global Solutions Ltd' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('3' as abap.char(2)) as companyID ,
    cast ('Apex Enterprises' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('4' as abap.char(2)) as companyID ,
    cast ('Visionary Ventures' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('5' as abap.char(2)) as companyID ,
    cast ('Stellar Technologies' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('6' as abap.char(2)) as companyID ,
    cast ('Quantum Dynamics' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('7' as abap.char(2)) as companyID ,
    cast ('Horizon Industries' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('8' as abap.char(2)) as companyID ,
    cast ('Pinnacle Partners' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('9' as abap.char(2)) as companyID ,
    cast ('Nexus Networks' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('10' as abap.char(2)) as companyID ,
    cast ('Synergy Systems' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language

union 
select from I_Language
{
 key cast('11' as abap.char(2)) as companyID ,
    cast ('Elite Enterprises' as abap.char(50) ) as  CompanyCodeName


}
where Language = $session.system_language






 