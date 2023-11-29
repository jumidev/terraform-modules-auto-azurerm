data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_site_recovery_protection_container_mapping" "this" {

  ########################################
  # required vars
  ########################################
  name                                      = var.name
  resource_group_name                       = data.azurerm_resource_group.this.name
  recovery_vault_name                       = var.recovery_vault_name
  recovery_fabric_name                      = var.recovery_fabric_name
  recovery_source_protection_container_name = var.recovery_source_protection_container_name
  recovery_target_protection_container_id   = var.recovery_target_protection_container_id
  recovery_replication_policy_id            = var.recovery_replication_policy_id

  ########################################
  # optional vars
  ########################################

  dynamic "automatic_update" { # var.automatic_update
    for_each = var.automatic_update != null ? var.automatic_update : []
    content {
      enabled               = lookup(automatic_update.value, "enabled", false)
      automation_account_id = lookup(automatic_update.value, "automation_account_id", null)
      authentication_type   = lookup(automatic_update.value, "authentication_type", null)
    }
  }

}
