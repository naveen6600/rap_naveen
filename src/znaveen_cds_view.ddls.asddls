@AbapCatalog.sqlViewName: 'ZCDSVIEW9058'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of booking'
@Metadata.ignorePropagatedAnnotations: true
define view Znaveen_cds_view as select from /dmo/booking as A inner join /dmo/travel as b
 on  b.travel_id = A.travel_id 
{
key A.travel_id ,
 A.booking_id ,
 b.begin_date,
 b.currency_code
 


  

  
    
}
