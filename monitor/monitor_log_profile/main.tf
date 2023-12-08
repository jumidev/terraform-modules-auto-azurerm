

resource "azurerm_monitor_log_profile" "this" {

  ########################################
  # required vars
  ########################################
  name       = var.name
  categories = var.categories
  locations  = var.locations

  retention_policy {
    enabled = lookup(retention_policy.value, "enabled") # (Required) 
    days    = lookup(retention_policy.value, "days", 0)
  }


  ########################################
  # optional vars
  ########################################
  storage_account_id = var.storage_account_id
  servicebus_rule_id = var.servicebus_rule_id
}
