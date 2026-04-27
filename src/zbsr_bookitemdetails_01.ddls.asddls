@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@ObjectModel.semanticKey: [ 'BookItemUUID' ]
define view entity ZBSR_BOOKITEMDETAILS_01
  as select from ZBSBKTMDTAILS_01 as BookItemDetails
  association to parent ZBSR_BOOKSTORE_01 as _BookStore on $projection.ParentUuid = _BookStore.Uuid
{
  key uuid as UUID,
  parent_uuid as ParentUUID,
  book_item_uuid as BookItemUUID,
  chapter_name as ChapterName,
  page_count as PageCount,
  _BookStore
}
