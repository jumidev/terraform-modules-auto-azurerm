

resource "azurerm_site_recovery_services_vault_hyperv_site" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  recovery_vault_id = var.recovery_vault_id
}
