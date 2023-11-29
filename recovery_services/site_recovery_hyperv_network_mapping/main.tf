

resource "azurerm_site_recovery_hyperv_network_mapping" "this" {

  ########################################
  # required vars
  ########################################
  name                                              = var.name
  recovery_vault_id                                 = var.recovery_vault_id
  source_system_center_virtual_machine_manager_name = var.source_system_center_virtual_machine_manager_name
  source_network_name                               = var.source_network_name
  target_network_id                                 = var.target_network_id
}
