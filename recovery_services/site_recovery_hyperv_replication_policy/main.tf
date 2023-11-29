

resource "azurerm_site_recovery_hyperv_replication_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                                               = var.name
  recovery_vault_id                                  = var.recovery_vault_id
  recovery_point_retention_in_hours                  = var.recovery_point_retention_in_hours
  application_consistent_snapshot_frequency_in_hours = var.application_consistent_snapshot_frequency_in_hours
  replication_interval_in_seconds                    = var.replication_interval_in_seconds
}
