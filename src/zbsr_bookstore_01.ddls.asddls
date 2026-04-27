@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZBSBookStoreApp000_01'
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'BookStoreUUID', 'BookStoreID' ]
define root view entity ZBSR_BOOKSTORE_01
  as select from ZBSBOOKSTORE_01 as BookStore
  composition [1..*] of ZBSR_BOOKITEMDETAILS_01 as _BookItemDetails
{
  key uuid as UUID,
  book_store_uuid as BookStoreUUID,
  book_store_id as BookStoreID,
  title as Title,
  author as Author,
  @Semantics.amount.currencyCode: 'PriceCurr'
  price as Price,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  price_curr as PriceCurr,
  published_date as PublishedDate,
  stock as Stock,
  @Semantics.amount.currencyCode: 'PriceCurr'
  discounted_price as DiscountedPrice,
  book_age as BookAge,
  created_by as CreatedBy,
  created_at as CreatedAt,
  updated_by as UpdatedBy,
  updated_at as UpdatedAt,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  _BookItemDetails
}
