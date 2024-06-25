

resource "azurerm_storage_container_immutability_policy" "this" {

  ########################################
  # required vars
  ########################################
  storage_container_resource_manager_id = var.storage_container_resource_manager_id
  immutability_period_in_days           = var.immutability_period_in_days

  ########################################
  # optional vars
  ########################################
  locked                              = var.locked
  protected_append_writes_all_enabled = var.protected_append_writes_all_enabled # Default: False
  protected_append_writes_enabled     = var.protected_append_writes_enabled     # Default: False
}
