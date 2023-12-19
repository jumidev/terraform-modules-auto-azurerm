

resource "azurerm_key_vault_managed_hardware_security_module_role_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  principal_id       = var.principal_id
  role_definition_id = var.role_definition_id
  scope              = var.scope
  vault_base_url     = var.vault_base_url
}
