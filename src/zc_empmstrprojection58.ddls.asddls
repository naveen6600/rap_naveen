@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'prohection view of emp master'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: false
@UI.headerInfo: {
    typeName: 'EmpMaster',
    typeNamePlural: 'EmpMasters',
    
    title: {
        type: #STANDARD,
        label: 'Employee Master',
        
        value: 'EmpId'
     }   

}
define root view entity ZC_empmstrProjection58 as projection on  ZRP_EMPMST58
{
    key EmpId,
    EmpName,
    CompanyName,
    Designation ,
    /* Associations */
    _empalloc : redirected to composition child ZC_empallcprojection58 ,
   _comp 
}
