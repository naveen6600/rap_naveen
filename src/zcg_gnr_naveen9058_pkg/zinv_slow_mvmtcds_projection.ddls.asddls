@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'slow projection cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zinv_slow_mvmtcds_projection as projection on Zinv_slow_mvmtcds
{

@UI.facet: [{
    
    id: 'slowmmt',
    purpose:#STANDARD,
    position:10,
    label: 'Slow_movement',
    type:#IDENTIFICATION_REFERENCE  
    
}]
@UI.lineItem: [{ position: 10 }]
    @UI.identification: [{ position : 10 }]
    key Materialid,
    @UI.lineItem: [{ position: 20 }]
    @UI.identification: [{ position : 20 }]
    key Plant,
    @UI.lineItem: [{ position: 30 }]
    @UI.identification: [{ position : 30 }]
    Storagelocation,
    @UI.lineItem: [{ position: 40 }]
    @UI.identification: [{ position : 40 }]
    Lastmovementdate,
    @UI.lineItem: [{ position: 50 }]
    @UI.identification: [{ position : 50 }]
    Dayswithoutmovemnet,
    @UI.lineItem: [{ position: 60 }]
    @UI.identification: [{ position : 60 }]
    Quantity,
    @UI.lineItem: [{ position: 70 }]
    @UI.identification: [{ position : 70 }]
    Unitofmeasure,
    @UI.lineItem: [{ position: 80 }]
    @UI.identification: [{ position : 80 }]
    @Semantics.amount.currencyCode: 'Currencycode'
    Value,
  
    Currencycode,
    /* Associations */
    _invcds : redirected to parent zinv_cds_curnt_stkl_projection
}
