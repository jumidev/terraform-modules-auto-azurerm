data "azurerm_network_watcher" "this" {
  name                = var.network_watcher_name
  resource_group_name = var.network_watcher_resource_group_name == null ? null : var.network_watcher_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_watcher_flow_log" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  network_watcher_name      = data.azurerm_network_watcher.this.name
  resource_group_name       = data.azurerm_resource_group.this.name
  network_security_group_id = var.network_security_group_id
  storage_account_id        = var.storage_account_id
  enabled                   = var.enabled

  retention_policy {
    enabled = lookup(retention_policy.value, "enabled") # (Required) 
    days    = lookup(retention_policy.value, "days")    # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  location = var.location # Default: location

  dynamic "traffic_analytics" { # var.traffic_analytics
    for_each = var.traffic_analytics != null ? var.traffic_analytics : []
    content {
      enabled               = lookup(traffic_analytics.value, "enabled")               # (Required) 
      workspace_id          = lookup(traffic_analytics.value, "workspace_id")          # (Required) 
      workspace_region      = lookup(traffic_analytics.value, "workspace_region")      # (Required) 
      workspace_resource_id = lookup(traffic_analytics.value, "workspace_resource_id") # (Required) 
      interval_in_minutes   = lookup(traffic_analytics.value, "interval_in_minutes", 60)
    }
  }

  version = var.version
  tags    = var.tags
}
