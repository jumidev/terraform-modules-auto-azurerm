data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name
}


resource "azurerm_storage_table_entity" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_name = data.azurerm_storage_account.this.name
  table_name           = var.table_name
  partition_key        = var.partition_key
  row_key              = var.row_key
  entity               = var.entity
}
