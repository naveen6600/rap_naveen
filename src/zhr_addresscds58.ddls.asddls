@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'address of the empoyee cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zhr_addresscds58 as select from zdt_hr_add58
association to parent Zhr_empcds58 as _empcds
    on $projection.EmpId = _empcds.EmpId
{ 
@UI.facet: [{
    
    id: 'EMP_Address',
    purpose: #STANDARD,
    position: 10 ,
    label: 'Address_Details',
    type: #IDENTIFICATION_REFERENCE
}]


@UI.lineItem: [{ position : 10 }]
@UI.identification: [{ position : 10 }]

    key emp_id as EmpId,
    @UI.lineItem: [{ position : 20 }]
@UI.identification: [{ position : 20 }]
    
    addresstype as Addresstype,
    @UI.lineItem: [{ position : 30 }]
@UI.identification: [{ position : 30 }]
    
    country as Country,
    @UI.lineItem: [{ position : 40 }]
@UI.identification: [{ position : 40 }]
    
    city as City,
    @UI.lineItem: [{ position : 50 }]
@UI.identification: [{ position : 50 }]
    
    street as Street,
    @UI.lineItem: [{ position : 60 }]
@UI.identification: [{ position : 60 }]
    
    postalcode as Postalcode,
    _empcds // Make association public
}
