data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_log_analytics_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  allow_resource_only_permissions = var.allow_resource_only_permissions # Default: True
  local_authentication_disabled   = var.local_authentication_disabled   # Default: False
  sku                             = var.sku                             # Default: PerGB2018
  retention_in_days               = var.retention_in_days
  daily_quota_gb                  = var.daily_quota_gb
  cmk_for_query_forced            = var.cmk_for_query_forced

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | identity_ids
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  internet_ingestion_enabled         = var.internet_ingestion_enabled # Default: True
  internet_query_enabled             = var.internet_query_enabled     # Default: True
  reservation_capacity_in_gb_per_day = var.reservation_capacity_in_gb_per_day
  data_collection_rule_id            = var.data_collection_rule_id
  tags                               = var.tags
}

##############################################################################################
# optional azurerm_virtual_desktop_workspace_application_group_association 
##############################################################################################
resource "azurerm_virtual_desktop_workspace_application_group_association" "this" {
  count                = var.application_group_id != null ? 1 : 0
  workspace_id         = azurerm_log_analytics_workspace.this.id
  application_group_id = azurerm_virtual_desktop_application_group.this.id
}
