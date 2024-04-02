

resource "azurerm_log_analytics_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  allow_resource_only_permissions = var.allow_resource_only_permissions # Default: True
  local_authentication_disabled   = var.local_authentication_disabled   # Default: False
  sku                             = var.sku                             # Default: PerGB2018
  retention_in_days               = var.retention_in_days
  daily_quota_gb                  = var.daily_quota_gb # Default: sku
  cmk_for_query_forced            = var.cmk_for_query_forced

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | identity_ids | type | principal_id | tenant_id
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  internet_ingestion_enabled              = var.internet_ingestion_enabled # Default: True
  internet_query_enabled                  = var.internet_query_enabled     # Default: True
  reservation_capacity_in_gb_per_day      = var.reservation_capacity_in_gb_per_day
  data_collection_rule_id                 = var.data_collection_rule_id
  immediate_data_purge_on_30_days_enabled = var.immediate_data_purge_on_30_days_enabled
  tags                                    = var.tags
}
