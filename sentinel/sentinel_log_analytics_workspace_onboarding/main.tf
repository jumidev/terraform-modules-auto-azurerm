data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.log_analytics_workspace_resource_group_name == null ? null : var.log_analytics_workspace_resource_group_name
}


resource "azurerm_sentinel_log_analytics_workspace_onboarding" "this" {

  ########################################
  # optional vars
  ########################################
  resource_group_name          = data.azurerm_resource_group.this.name
  workspace_name               = data.azurerm_log_analytics_workspace.this.name
  customer_managed_key_enabled = var.customer_managed_key_enabled # Default: False
}
