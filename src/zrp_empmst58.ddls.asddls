@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYEE MASTER'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZRP_EMPMST58 as select from zdt_empmast58
composition [0..*] of ZRP_EMPALLC58 as _empalloc
association [0..*] to ZZ_companycode58 as _comp on $projection.CompanyName = _comp.CompanyCodeName
{




@UI.facet: [{
    
    id: 'EMP_ID',
    purpose: #STANDARD,
    position: 10 ,
    label: 'EMP_MASTER',
    type: #IDENTIFICATION_REFERENCE
},

{
    id: 'allocation',
    purpose: #STANDARD,
    label: 'allocation',
    type: #LINEITEM_REFERENCE ,
    targetElement : '_empalloc',
    position : 20
    
}]

@UI.selectionField: [{ position : 10 }]
@UI.lineItem: [{ position : 10 }]
@UI.identification: [{ position : 10 }]
    key emp_id as EmpId,
    @UI.selectionField: [{ position : 20 }]
    @UI.lineItem: [{ position : 20 }]
@UI.identification: [{ position : 20 }]
    emp_name as EmpName,
        @UI.selectionField: [{ position : 30 }]
    @UI.lineItem: [{ position : 30 }]
@UI.identification: [{ position : 30 }]

@Consumption.valueHelpDefinition: [{
             entity: {
                 name: 'ZZ_companycode58',
                 element: 'CompanyCodeName'
             }
         }]
    company_name as CompanyName,
        @UI.selectionField: [{ position : 40 }]
    @Consumption.valueHelpDefinition: [{
             entity: {
                 name: 'ZZ_DESIGNATIONCC',
                 element: 'DesignationName'
             }
         }]
    
    @UI.lineItem: [{ position : 40 }]
@UI.identification: [{ position : 40 }]
    designation as Designation ,
    
    _empalloc ,// Make association public
    _comp 
}
