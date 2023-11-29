

resource "azurerm_machine_learning_synapse_spark" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  machine_learning_workspace_id = var.machine_learning_workspace_id
  location                      = var.location
  synapse_spark_pool_id         = var.synapse_spark_pool_id

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  local_auth_enabled = var.local_auth_enabled # Default: True
  tags               = var.tags
}
