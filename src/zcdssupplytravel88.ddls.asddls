@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association Cds view  supply travel'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZcdsSupplytravel88 as select from zdt_travel58 as A
association [1..*] to zdt_supply58 as _supply
    on $projection.travel_id = _supply.travel_id
{
    key A.travel_id,
    A.customer_id,
    @Semantics.amount.currencyCode: 'Currency_Code'
    A.total_price,
    A.currency_code,
    
      
      
    _supply // Make association public
}
