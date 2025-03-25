@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projecyion of material movement cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZINV_MATERIALMVMT58_projection as projection on zinv_materialmvmt58 
{

@UI.facet: [{
    
    id: 'Materialmmt',
    purpose:#STANDARD,
    position:10,
    label: 'Material_mmt',
    type:#IDENTIFICATION_REFERENCE  
    
}]


@UI.lineItem: [{ position: 10 }]
    @UI.identification: [{ position : 10 }]


    key Movementid,
    @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position : 20 }]
    key Materialid,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position : 30 }]
    key Plant,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position : 40 }]
    Storagelocation,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position : 50 }]
    Movementtype,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position : 60 }]
    Quantity,
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position : 70 }]
    Unitofmeasure,
      @UI.lineItem: [{ position: 80 }]
      @UI.identification: [{ position : 80 }]
    Movementdate,
    /* Associations */
    _invcds : redirected to parent zinv_cds_curnt_stkl_projection
}
