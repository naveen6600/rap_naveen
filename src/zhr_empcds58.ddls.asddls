@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'employee cds hr'
@Metadata.ignorePropagatedAnnotations: false

define root view entity Zhr_empcds58
  as select from zdt_hr_emp58
//  association [0..*] to Zhr_empmtcds58    as _empmt       on $projection.EmpId = _empmt.EmpId
//  association [0..*] to Zhr_addresscds58  as _empaddrs    on $projection.EmpId = _empaddrs.EmpId
//  association [0..*] to Zhr_contract58cds as _empcontract on $projection.EmpId = _empcontract.EmpId
//  association [0..*] to Zhr_familycds58   as _empfamily   on $projection.EmpId = _empfamily.EmpId

    composition [0..*] of Zhr_empmtcds58    as _empmt
    composition [0..*] of Zhr_addresscds58  as _empaddrs
    composition [0..*] of Zhr_contract58cds as _empcontract
    composition [0..*] of Zhr_familycds58   as _empfamily

{


      @UI.facet: [{

          id: 'EMP_cds',
          purpose: #STANDARD,
          position: 10 ,
          label: 'EMP_MASTER',
          type: #IDENTIFICATION_REFERENCE
      },

      {
          id:'empmt',
          purpose: #STANDARD,
          label: 'Employment Details',
          type: #LINEITEM_REFERENCE ,
          targetElement : '_empmt',
          position : 20

      },

      {
      id:'empaddress',
          purpose: #STANDARD,
          label: 'Employee Address',
          type: #LINEITEM_REFERENCE ,
          targetElement : '_empaddrs',
          position : 30
      } ,
      {
      id:'empcontract',
          purpose: #STANDARD,
          label: 'Employee Contract Details',
          type: #LINEITEM_REFERENCE ,
          targetElement : '_empcontract',
          position : 40
      },
      {
      id:'empFamily',
          purpose: #STANDARD,
          label: 'Employee family details',
          type: #LINEITEM_REFERENCE ,
          targetElement : '_empfamily',
          position : 50
      }
      ]

      @UI.selectionField: [{ position : 10 }]
      @UI.lineItem: [{ position : 10 }]
      @UI.identification: [{ position : 10 }]
      
  key emp_id      as EmpId,
  
      @UI.lineItem: [{ position : 20 }]
      @UI.identification: [{ position : 20 }]
      first_name  as FirstName,
      @UI.lineItem: [{ position : 30 }]
      @UI.identification: [{ position : 30 }]
      last_name   as LastName,
      @UI.lineItem: [{ position : 40 }]
      @UI.identification: [{ position : 40 }]
      dat_of_bir  as DatOfBir,
      @UI.lineItem: [{ position : 50 }]
      @UI.identification: [{ position : 50 }]
      gender      as Gender,
      @UI.lineItem: [{ position : 60 }]
      @UI.identification: [{ position : 60 }]
      nationality as Nationality,
    
    
      _empmt, // Make association public
      _empaddrs,
      _empcontract,
      _empfamily

}
