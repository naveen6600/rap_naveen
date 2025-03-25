@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYEE ALLOCATION'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRP_EMPALLC58 as select from zdt_emp_aln58
association  to parent ZRP_EMPMST58 as _empmast on $projection.EmpId = _empmast.EmpId

{
@UI.facet: [{
    
    id: 'EMP_allc',
    purpose: #STANDARD,
    position: 10 ,
    label: 'Allcation',
    type: #IDENTIFICATION_REFERENCE
}]



   @UI.lineItem: [{ position : 10  }]
   @UI.identification: [{ position : 10 }]
    key emp_id as EmpId,
      @UI.lineItem: [{ position : 20  }]
  @UI.identification: [{ position : 20 }]
    key allocation_id as AllocationId,
      @UI.lineItem: [{ position : 30  }]
  @UI.identification: [{ position : 30 }]
    profit_center as ProfitCenter,
      @UI.lineItem: [{ position : 40  }]
  @UI.identification: [{ position : 40 }]
    allocation_per as AllocationPer,
      @UI.lineItem: [{ position : 50  }]
  @UI.identification: [{ position : 50 }]
    active as Active,
      @UI.lineItem: [{ position : 60  }]
  @UI.identification: [{ position : 60 }]
    status as Status,
      @UI.lineItem: [{ position : 70  }]
  @UI.identification: [{ position : 70 }]
    to_date as ToDate,
      @UI.lineItem: [{ position : 80  }]
  @UI.identification: [{ position : 80 }]
    from_date as FromDate,
      @UI.lineItem: [{ position : 80  }]
  @UI.identification: [{ position : 80 }]
    _empmast // Make association public
}
