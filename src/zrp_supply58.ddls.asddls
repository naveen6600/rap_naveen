@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'supply cds view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRp_Supply58
  as select from zdt_supply58

  association        to parent ZRP_BOOKING58  as _booking on  $projection.TravelId  = _booking.TravelId
                                                          and $projection.BookingId = _booking.BookingId
  association [1..1] to Zcds_travel58         as _Travel  on  $projection.TravelId = _Travel.TravelId
  association [1..1] to /DMO/I_Supplement     as _suppl   on  $projection.SupplementId = _suppl.SupplementID
  association [1..*] to /DMO/I_SupplementText as _supple  on  $projection.SupplementId = _supple.SupplementID

{

      @UI.lineItem: [{ position : 10  }]
  key travel_id             as TravelId,
  key booking_id            as BookingId,
  key booking_supplement_id as BookingSupplementId,
      supplement_id         as SupplementId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,
      last_changed_at       as LastChangedAt,

      _suppl,
      _supple,
      _booking,
      _Travel
}
