

resource "azurerm_log_analytics_datasource_windows_event" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  workspace_name      = var.workspace_name
  event_log_name      = var.event_log_name
  event_types         = var.event_types
}
