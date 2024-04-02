

resource "azurerm_log_analytics_datasource_windows_performance_counter" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  workspace_name      = var.workspace_name
  object_name         = var.object_name
  instance_name       = var.instance_name
  counter_name        = var.counter_name
  interval_seconds    = var.interval_seconds
}
