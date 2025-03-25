@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'travel cds view'
@Metadata.ignorePropagatedAnnotations: true



define root view entity Zcds_travel58
  as select from zdt_travel58
  composition [0..*] of ZRP_BOOKING58            as _Booking
  association [0..1] to /DMO/I_Agency            as _agency   on $projection.AgencyId = _agency.AgencyID
  association [0..1] to /DMO/I_Customer          as _customer on $projection.CustomerId = _customer.CustomerID
  association [1..1] to I_Currency               as _curr     on $projection.CurrencyCode = _curr.Currency
  association [1..1] to /DMO/I_Overall_Status_VH as _status   on $projection.OverallStatus = _status.OverallStatus

{
@UI.facet: [{
   
    id: 'flight',
    purpose: #STANDARD,
    label: 'flight',
    type: #IDENTIFICATION_REFERENCE ,
    position : 10
    
} ,
{
    id: 'booking',
    purpose: #STANDARD,
    label: 'BOOKING',
    type: #LINEITEM_REFERENCE ,
    targetElement : '_Booking',
    position : 20
    
}]



     @UI.lineItem: [{ position : 10 }]
 @UI.identification: [{ position: 10 }]
         @UI.selectionField: [{ position : 10 }]
         @Consumption.valueHelpDefinition: [{
             entity: {
                 name: '/DMO/I_Customer',
                 element: 'CustomerID'
             }
         }]

  key travel_id       as TravelId,
      agency_id       as AgencyId,
      @UI.lineItem: [{ position : 30 }]
 @UI.identification: [{ position: 30 }]
         @UI.selectionField: [{ position : 30 }]
         @Consumption.valueHelpDefinition: [{
             entity: {
                 name: '/DMO/I_Customer',
                 element: 'CustomerID'
             }
         }]
      customer_id     as CustomerId,
       @UI.lineItem: [{ position : 40 }]
      @UI.identification: [{ position: 40 }]
      begin_date      as BeginDate,
        @UI.lineItem: [{ position : 50 }]
      @UI.identification: [{ position: 50 }]
      end_date        as EndDate,
        @UI.lineItem: [{ position : 60 }]
          @UI.identification: [{ position: 60 }]
   
      @Semantics.amount.currencyCode: 'CurrencyCode'
       
      booking_fee     as BookingFee,
        @UI.lineItem: [{ position : 80 }]
          @UI.identification: [{ position: 70 }]
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price     as TotalPrice,
        @UI.identification: [{ position: 80 }]
        @UI.lineItem: [{ position : 90 }]
      currency_code   as CurrencyCode,
        @UI.identification: [{ position: 90 }]
        @UI.lineItem: [{ position : 100 }]
      description     as Description,
        @UI.identification: [{ position: 100 }]
        @UI.lineItem: [{ position : 110 }]
         
      overall_status  as OverallStatus,
       @UI.identification: [{ position: 110 }]
        @UI.lineItem: [{ position : 120 }]
      created_by      as CreatedBy,
        @UI.lineItem: [{ position : 130 }]
      created_at      as CreatedAt,
        @UI.lineItem: [{ position : 140 }]
      last_changed_by as LastChangedBy,
        @UI.lineItem: [{ position : 150 }]
      last_changed_at as LastChangedAt,

      _agency,
      _customer,
      _curr,
      _status,
      _Booking


}
