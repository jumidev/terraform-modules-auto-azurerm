

resource "azurerm_site_recovery_vmware_replication_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                                                 = var.name
  recovery_vault_id                                    = var.recovery_vault_id
  recovery_point_retention_in_minutes                  = var.recovery_point_retention_in_minutes
  application_consistent_snapshot_frequency_in_minutes = var.application_consistent_snapshot_frequency_in_minutes
}
