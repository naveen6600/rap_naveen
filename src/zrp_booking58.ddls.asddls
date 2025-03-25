@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOOKING CDS VIEW'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRP_BOOKING58
  as select from zdt_booking58
  composition [0..*] of ZRp_Supply58      as _supply
  association        to parent Zcds_travel58     as _Travel  on  $projection.TravelId = _Travel.TravelId
  association [0..1] to /DMO/I_Carrier           as _carr    on  $projection.CarrierId = _carr.AirlineID
  association [0..1] to /DMO/I_Customer          as _cust    on  $projection.CustomerId = _cust.CustomerID
  association [1..1] to /DMO/I_Connection        as _conn    on  $projection.ConnectionId = _conn.ConnectionID
                                                             and $projection.CarrierId    = _conn.AirlineID
  association [1..1] to /DMO/I_Booking_Status_VH as _booksta on  $projection.BookingStatus = _booksta.BookingStatus

{
@UI.facet: [{
   
    id: 'Booking_id',
    purpose: #STANDARD,
    label: 'Booking',
    type: #IDENTIFICATION_REFERENCE ,
    position : 10
    
} ,
{
    id: 'supply',
    purpose: #STANDARD,
    label: 'supply',
    type: #LINEITEM_REFERENCE ,
    targetElement : '_supply',
    position : 20
    
}]




  @UI.lineItem: [{ position : 10  }]
  @UI.identification: [{ position : 10 }]
  
  key travel_id       as TravelId,
  key booking_id      as BookingId,
      booking_date    as BookingDate,
      customer_id     as CustomerId,
      carrier_id      as CarrierId,
      connection_id   as ConnectionId,
      flight_date     as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price    as FlightPrice,
      currency_code   as CurrencyCode,
      booking_status  as BookingStatus,
      last_changed_at as LastChangedAt,
      _carr,
      _cust,
      _conn,
      _booksta,
      _Travel ,
      _supply
}
