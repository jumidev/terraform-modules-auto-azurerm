data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_recovery_services_vault" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  tags = var.tags

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  immutability                  = var.immutability
  storage_mode_type             = var.storage_mode_type            # Default: GeoRedundant
  cross_region_restore_enabled  = var.cross_region_restore_enabled # Default: False
  soft_delete_enabled           = var.soft_delete_enabled          # Default: True

  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      key_id                            = lookup(encryption.value, "key_id")                            # (Required) 
      infrastructure_encryption_enabled = lookup(encryption.value, "infrastructure_encryption_enabled") # (Required) 
      user_assigned_identity_id         = lookup(encryption.value, "user_assigned_identity_id", null)
      use_system_assigned_identity      = lookup(encryption.value, "use_system_assigned_identity", true)
    }
  }

  classic_vmware_replication_enabled = var.classic_vmware_replication_enabled

  dynamic "monitoring" { # var.monitoring
    for_each = var.monitoring != null ? var.monitoring : []
    content {
      alerts_for_all_job_failures_enabled            = lookup(monitoring.value, "alerts_for_all_job_failures_enabled", true)
      alerts_for_critical_operation_failures_enabled = lookup(monitoring.value, "alerts_for_critical_operation_failures_enabled", true)
    }
  }

}
