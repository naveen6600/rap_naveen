@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view parent entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zinv_cds_curnt_stkl_projection
  provider contract transactional_query
  as projection on zinv_cds_curnt_stkl

{

      @UI.facet: [{

          id: 'frontpage_inv',
          purpose: #STANDARD,

          position: 10,
          label: 'Inventory Stocks',
          type:#IDENTIFICATION_REFERENCE

      },{
      id: 'secondpage_inv',
          purpose: #STANDARD,

          position: 20,
          label: 'Material_Movement',
          targetElement: '_mtmvmt',
          type : #LINEITEM_REFERENCE

      },
      {
      id: 'thirdpage_inv',
          purpose: #STANDARD,

          position: 20,
          label: 'Slow_Material_Movement',
          targetElement: '_invstck',
          type : #LINEITEM_REFERENCE

      }
      ,

      {
      id: 'fourthpage_inv',
          purpose: #STANDARD,
          position: 20,
          label: 'Stock Valution',
          targetElement: '_slwmvmt',
          type : #LINEITEM_REFERENCE

      }

      ]

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
      Stocktype,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position : 50 }]
      Quantity,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position : 60 }]
      Unitofmeasure,
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position : 70 }]
      @Semantics.amount.currencyCode: 'Currencycode'
      Value,
      Currencycode,
      @UI.lineItem: [{ position: 80 }]
      @UI.identification: [{ position : 80 }]
      Unit,
      /* Associations */
      _invstck : redirected to composition child Zinv_stock_val58_projection,
      _mtmvmt  : redirected to composition child ZINV_MATERIALMVMT58_projection,
      _slwmvmt : redirected to composition child Zinv_slow_mvmtcds_projection
}
