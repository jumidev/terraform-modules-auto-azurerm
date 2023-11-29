data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_log_analytics_linked_service" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  workspace_id        = var.workspace_id

  ########################################
  # optional vars
  ########################################
  read_access_id  = var.read_access_id
  write_access_id = var.write_access_id
}
