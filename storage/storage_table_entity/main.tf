

resource "azurerm_storage_table_entity" "this" {

  ########################################
  # required vars
  ########################################
  storage_table_id = var.storage_table_id
  partition_key    = var.partition_key
  row_key          = var.row_key
  entity           = var.entity
}
