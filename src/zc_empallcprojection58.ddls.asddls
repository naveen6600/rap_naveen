@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'employee projection child'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZC_empallcprojection58 as projection on ZRP_EMPALLC58
{
    key EmpId,
    key AllocationId,
    ProfitCenter,
    AllocationPer,
    Active,
    Status,
    ToDate,
    FromDate,
    /* Associations */
    _empmast : redirected to parent ZC_empmstrProjection58 
    
}
