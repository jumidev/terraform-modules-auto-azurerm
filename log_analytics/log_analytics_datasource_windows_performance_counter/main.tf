data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name == null ? null : var.log_analytics_workspace_resource_group_name
}


resource "azurerm_log_analytics_datasource_windows_performance_counter" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  workspace_name      = data.azurerm_log_analytics_workspace.this.name
  object_name         = var.object_name
  instance_name       = var.instance_name
  counter_name        = var.counter_name
  interval_seconds    = var.interval_seconds
}
