@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection of emp contract'
@Metadata.ignorePropagatedAnnotations: false
define view entity Zhr_contract58cdsProjection as projection on Zhr_contract58cds
{
    key EmpId,
    Contracttype,
    Startdate,
    Enddate,
    Payscalegroup,
    Payscalelevel,
    /* Associations */
    _empcds : redirected to parent Zhr_empcds58Projection
}
