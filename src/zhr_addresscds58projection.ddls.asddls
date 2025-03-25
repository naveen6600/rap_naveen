@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection of empcds address'
@Metadata.ignorePropagatedAnnotations: false
define view entity Zhr_addresscds58projection as projection on Zhr_addresscds58
{
    key EmpId,
    Addresstype,
    Country,
    City,
    Street,
    Postalcode,
    /* Associations */
    _empcds  : redirected to parent Zhr_empcds58Projection
}
