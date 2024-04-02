

resource "azurerm_stack_hci_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  client_id           = var.client_id

  ########################################
  # optional vars
  ########################################
  tenant_id                   = var.tenant_id
  tags                        = var.tags
  automanage_configuration_id = var.automanage_configuration_id
}
