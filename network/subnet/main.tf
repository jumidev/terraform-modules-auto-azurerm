data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  resource_group_name = var.virtual_network_resource_group_name != null ? var.virtual_network_resource_group_name : var.resource_group_name

}


resource "azurerm_subnet" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.this.name
  virtual_network_name = data.azurerm_virtual_network.this.name
  address_prefixes     = var.address_prefixes

  ########################################
  # optional vars
  ########################################

  dynamic "delegation" { # var.delegation
    for_each = var.delegation != null ? var.delegation : []
    content {
      name = delegation.key

      dynamic "service_delegation" { # delegation.value.service_delegation
        for_each = delegation.value.service_delegation != null ? delegation.value.service_delegation : []
        content {
          name    = service_delegation.key
          actions = lookup(service_delegation.value, "actions", null)
        }
      }

    }
  }

  private_endpoint_network_policies_enabled     = var.private_endpoint_network_policies_enabled     # Default: True
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled # Default: True
  service_endpoints                             = var.service_endpoints
  service_endpoint_policy_ids                   = var.service_endpoint_policy_ids
}
