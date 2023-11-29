data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_log_analytics_data_export_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  workspace_resource_id   = var.workspace_resource_id
  destination_resource_id = var.destination_resource_id
  table_names             = var.table_names

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: False
}
