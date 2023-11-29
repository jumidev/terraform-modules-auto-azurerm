data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_manager" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  scope {
    management_group_ids = lookup(scope.value, "management_group_ids", null)
    subscription_ids     = lookup(scope.value, "subscription_ids", null)
  }

  scope_accesses = var.scope_accesses

  ########################################
  # optional vars
  ########################################
  description = var.description
  tags        = var.tags
}
