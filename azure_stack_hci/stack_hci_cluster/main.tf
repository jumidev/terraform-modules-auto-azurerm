

resource "azurerm_stack_hci_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  client_id = var.client_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  tenant_id                   = var.tenant_id
  tags                        = var.tags
  automanage_configuration_id = var.automanage_configuration_id
}
