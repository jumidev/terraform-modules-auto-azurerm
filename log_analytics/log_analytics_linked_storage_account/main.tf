data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_log_analytics_linked_storage_account" "this" {

  ########################################
  # required vars
  ########################################
  data_source_type      = var.data_source_type
  resource_group_name   = data.azurerm_resource_group.this.name
  workspace_resource_id = var.workspace_resource_id
  storage_account_ids   = var.storage_account_ids
}
