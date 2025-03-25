@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection of family cds'
@Metadata.ignorePropagatedAnnotations: false
define view entity Zhr_familycds58projection as projection on Zhr_familycds58
{
    key EmpId,
    key Familymemberid,
    Familymembername,
    Relationship,
    Dateofbirth,
    Gender,
   _empcds : redirected to parent  Zhr_empcds58Projection
}
