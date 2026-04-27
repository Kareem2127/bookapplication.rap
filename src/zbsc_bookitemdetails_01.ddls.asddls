@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Semantickey: [ 'BookItemUUID' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZBSC_BOOKITEMDETAILS_01
  as projection on ZBSR_BOOKITEMDETAILS_01
  association [1..1] to ZBSR_BOOKITEMDETAILS_01 as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  ParentUUID,
  BookItemUUID,
  ChapterName,
  PageCount,
  _BookStore : redirected to parent ZBSC_BOOKSTORE_01,
  _BaseEntity
}
