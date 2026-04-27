@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZBSBookStoreApp000_01', 
  Semantickey: [ 'BookStoreUUID', 'BookStoreID' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZBSC_BOOKSTORE_01
  provider contract TRANSACTIONAL_QUERY
  as projection on ZBSR_BOOKSTORE_01
  association [1..1] to ZBSR_BOOKSTORE_01 as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  BookStoreUUID,
  BookStoreID,
  Title,
  Author,
  @Semantics: {
    Amount.Currencycode: 'PriceCurr'
  }
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  PriceCurr,
  PublishedDate,
  Stock,
  @Semantics: {
    Amount.Currencycode: 'PriceCurr'
  }
  DiscountedPrice,
  BookAge,
  CreatedBy,
  CreatedAt,
  UpdatedBy,
  UpdatedAt,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BookItemDetails : redirected to composition child ZBSC_BOOKITEMDETAILS_01,
  _BaseEntity
}
