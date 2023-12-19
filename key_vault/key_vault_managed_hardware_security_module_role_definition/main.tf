

resource "azurerm_key_vault_managed_hardware_security_module_role_definition" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  vault_base_url = var.vault_base_url

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "permission" { # var.permission
    for_each = var.permission != null ? var.permission : []
    content {
      actions          = lookup(permission.value, "actions", null)
      not_actions      = lookup(permission.value, "not_actions", null)
      data_actions     = lookup(permission.value, "data_actions", null)
      not_data_actions = lookup(permission.value, "not_data_actions", null)
    }
  }

  role_name = var.role_name
}
