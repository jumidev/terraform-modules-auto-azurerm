

resource "azurerm_blueprint_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  target_subscription_id = var.target_subscription_id
  location               = var.location

  identity {
    type         = lookup(identity.value, "type") # (Required) 
    identity_ids = lookup(identity.value, "identity_ids", null)
  }

  version_id = var.version_id

  ########################################
  # optional vars
  ########################################
  parameter_values        = var.parameter_values
  resource_groups         = var.resource_groups
  lock_mode               = var.lock_mode # Default: None
  lock_exclude_principals = var.lock_exclude_principals
  lock_exclude_actions    = var.lock_exclude_actions
}
