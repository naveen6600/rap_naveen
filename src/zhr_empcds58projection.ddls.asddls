@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection of empcds'
@Metadata.ignorePropagatedAnnotations: false
define root view entity Zhr_empcds58Projection
  provider contract transactional_query
  as projection on Zhr_empcds58
{

  key EmpId,
      //      @UI.lineItem: [{ position : 20 }]
      //      @UI.identification: [{ position : 20 }]
      FirstName,
      //      @UI.lineItem: [{ position : 30 }]
      //      @UI.identification: [{ position : 30 }]
      LastName,
      //      @UI.lineItem: [{ position : 40 }]
      //      @UI.identification: [{ position : 40 }]
      DatOfBir,
      //      @UI.lineItem: [{ position : 50 }]
      //      @UI.identification: [{ position : 50 }]
      Gender,
      //      @UI.lineItem: [{ position : 60 }]
      //      @UI.identification: [{ position : 60 }]
      Nationality,

            _empaddrs    : redirected to composition child Zhr_addresscds58projection,
            _empcontract : redirected to composition child Zhr_contract58cdsProjection,
            _empfamily   : redirected to composition child ZHR_FAMILYCDS58PROJECTION,
            _empmt       : redirected to composition child Zhr_empmtcds58projection
}
