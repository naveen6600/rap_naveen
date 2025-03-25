@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'family cds of employee'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zhr_familycds58 as select from zhr_family58
association  to parent Zhr_empcds58 as _empcds
    on $projection.EmpId = _empcds.EmpId
{ 

@UI.facet: [{
    
    id: 'family58',
    purpose: #STANDARD,
    position: 10,
    label: 'FamilyDetails',
    type: #IDENTIFICATION_REFERENCE
   
}] 
    @UI.lineItem: [{ position : 10 }]
@UI.identification: [{ position : 10 }]
      
    key emp_id as EmpId,
    @UI.lineItem: [{ position : 20 }]
@UI.identification: [{ position : 20 }]
   
    key familymemberid as Familymemberid,
    @UI.lineItem: [{ position : 30 }]
@UI.identification: [{ position : 30 }]
 
    familymembername as Familymembername,
   
    @UI.lineItem: [{ position : 40 }]
@UI.identification: [{ position : 40 }]
    
    relationship as Relationship,
    @UI.lineItem: [{ position : 50 }]
@UI.identification: [{ position : 50 }]
     
    dateofbirth as Dateofbirth,
    @UI.lineItem: [{ position : 60 }]
@UI.identification: [{ position : 60 }]
      @EndUserText.label: 'Gendar'
    gender as Gender,
    _empcds // Make association public
}
