@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection of emp;oyement'
@Metadata.ignorePropagatedAnnotations: false
define view entity Zhr_empmtcds58projection as projection on Zhr_empmtcds58
{
    key EmpId,
    CompCode,
    Personalarea,
    EmpGrp,
    EmpSubGrp,
    CostCenter,
    /* Associations */
     _empcds : redirected to parent ZHR_EMPCDS58PROJECTION
}
