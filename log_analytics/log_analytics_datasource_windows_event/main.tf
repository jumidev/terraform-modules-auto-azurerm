data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name != null ? var.log_analytics_workspace_resource_group_name : var.resource_group_name

}


resource "azurerm_log_analytics_datasource_windows_event" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  workspace_name      = data.azurerm_log_analytics_workspace.this.name
  event_log_name      = var.event_log_name
  event_types         = var.event_types
}
