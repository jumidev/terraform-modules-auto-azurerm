

resource "azurerm_subnet" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes

  ########################################
  # optional vars
  ########################################

  dynamic "delegation" { # var.delegations
    for_each = var.delegations != null ? var.delegations : []
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

##############################################################################################
# optional azurerm_subnet_nat_gateway_association 
##############################################################################################
resource "azurerm_subnet_nat_gateway_association" "this" {
  count          = var.nat_gateway_id != null ? 1 : 0
  nat_gateway_id = var.nat_gateway_id
  subnet_id      = azurerm_subnet.this.id
}

##############################################################################################
# optional azurerm_subnet_network_security_group_association 
##############################################################################################
resource "azurerm_subnet_network_security_group_association" "this" {
  count                     = var.network_security_group_id != null ? 1 : 0
  network_security_group_id = var.network_security_group_id
  subnet_id                 = azurerm_subnet.this.id
}

##############################################################################################
# optional azurerm_subnet_route_table_association 
##############################################################################################
resource "azurerm_subnet_route_table_association" "this" {
  count          = var.route_table_id != null ? 1 : 0
  route_table_id = var.route_table_id
  subnet_id      = azurerm_subnet.this.id
}

##############################################################################################
# optional azurerm_application_load_balancer_subnet_association 
##############################################################################################
resource "azurerm_application_load_balancer_subnet_association" "this" {
  count                        = var.application_load_balancer_subnet_association != null ? 1 : 0
  name                         = lookup(var.application_load_balancer_subnet_association, "name")
  application_load_balancer_id = lookup(var.application_load_balancer_subnet_association, "application_load_balancer_id")
  subnet_id                    = azurerm_subnet.this.id
  tags                         = lookup(var.application_load_balancer_subnet_association, "tags", null)
}
