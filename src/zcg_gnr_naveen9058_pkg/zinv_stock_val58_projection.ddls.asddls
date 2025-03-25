@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'stock valution projection'
@Metadata.ignorePropagatedAnnotations: true
define view entity Zinv_stock_val58_projection as projection on Zinv_stock_val58_cds
{
@UI.facet: [{
    
    id: 'inv_stock',
    purpose:#STANDARD,
    position:10,
    label: 'Stock Valution',
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
    Valutiontype,
    @UI.lineItem: [{ position: 40 }]
    @UI.identification: [{ position : 40 }]
    Quantity,
    @UI.lineItem: [{ position: 50 }]
    @UI.identification: [{ position : 50 }]
    Unitofmeasure,
    @UI.lineItem: [{ position: 60 }]
    @UI.identification: [{ position : 60 }]
    @Semantics.amount.currencyCode: 'Currencycode'
    Value,
    @UI.lineItem: [{ position: 70 }]
    @UI.identification: [{ position : 70 }]
    Currencycode,
    @UI.lineItem: [{ position: 80 }]
    @UI.identification: [{ position : 80 }]
    Valuationdate,
    /* Associations */
    _invcds :redirected to parent zinv_cds_curnt_stkl_projection
}
