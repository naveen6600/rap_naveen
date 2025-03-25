@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'employement cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zhr_empmtcds58 as select from zdt_hr_empmt58
association to parent  Zhr_empcds58  as _empcds
    on $projection.EmpId = _empcds.EmpId
{

@UI.facet: [{
    
    id: 'EMPloyemnt58',
    purpose: #STANDARD,
    position: 10 ,
    label: 'Employement',
    type: #IDENTIFICATION_REFERENCE
}]
   @UI.lineItem: [{ position : 10  }]
   @UI.identification: [{ position : 10 }]
    key emp_id as EmpId,
       @UI.lineItem: [{ position : 20  }]
   @UI.identification: [{ position : 20 }]
    comp_code as CompCode,
       @UI.lineItem: [{ position : 30  }]
   @UI.identification: [{ position : 30 }]
    personalarea as Personalarea,
       @UI.lineItem: [{ position : 40  }]
   @UI.identification: [{ position : 40 }]
    emp_grp as EmpGrp,
       @UI.lineItem: [{ position : 50  }]
   @UI.identification: [{ position : 50 }]
    emp_sub_grp as EmpSubGrp,
       @UI.lineItem: [{ position : 60 }]
   @UI.identification: [{ position : 60 }]
    cost_center as CostCenter,
 // Make association public
    _empcds 
    
}
