

resource "azurerm_role_definition" "this" {

  ########################################
  # required vars
  ########################################
  name  = var.name
  scope = var.scope

  ########################################
  # optional vars
  ########################################
  role_definition_id = var.role_definition_id
  description        = var.description

  dynamic "permissions" { # var.permissions
    for_each = var.permissions != null ? var.permissions : []
    content {
      actions          = lookup(permissions.value, "actions", null)
      data_actions     = lookup(permissions.value, "data_actions", null)
      not_actions      = lookup(permissions.value, "not_actions", null)
      not_data_actions = lookup(permissions.value, "not_data_actions", null)
    }
  }

  assignable_scopes = var.assignable_scopes
}
