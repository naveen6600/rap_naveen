@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of employee hr'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zhr_contract58cds as select from zhr_contract58
association to parent Zhr_empcds58 as _empcds
    on $projection.EmpId = _empcds.EmpId
{  
@UI.facet: [{
    
    id: 'EMP_contract',
    purpose: #STANDARD,
    position: 10 ,
    label: 'Contract_Details',
    type: #IDENTIFICATION_REFERENCE
}]

@UI.lineItem: [{ position : 10 }]
@UI.identification: [{ position : 10 }]
    
    key emp_id as EmpId,
    @UI.lineItem: [{ position : 20 }]
@UI.identification: [{ position : 20 }]
    
    contracttype as Contracttype,
    @UI.lineItem: [{ position : 30 }]
@UI.identification: [{ position : 30 }]
    
    startdate as Startdate,
    @UI.lineItem: [{ position : 40 }]
@UI.identification: [{ position : 40 }]
    
    enddate as Enddate,
    @UI.lineItem: [{ position : 50 }]
@UI.identification: [{ position : 50 }]
    
    payscalegroup as Payscalegroup,
    @UI.lineItem: [{ position : 60 }]
@UI.identification: [{ position : 60 }]
    
    payscalelevel as Payscalelevel,
    _empcds // Make association public
}
