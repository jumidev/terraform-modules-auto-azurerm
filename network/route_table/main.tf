

resource "azurerm_route_table" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "route" { # var.routes
    for_each = var.routes != null ? var.routes : []
    content {
      name                   = route.key
      address_prefix         = lookup(route.value, "address_prefix") # (Required) possible values: 10.1.0.0/16 | ApiManagement | AzureBackup | AzureMonitor
      next_hop_type          = lookup(route.value, "next_hop_type")  # (Required) possible values: VirtualNetworkGateway | VnetLocal | Internet | VirtualAppliance | None
      next_hop_in_ip_address = lookup(route.value, "next_hop_in_ip_address", null)
    }
  }

  disable_bgp_route_propagation = var.disable_bgp_route_propagation
  tags                          = var.tags
}

##############################################################################################
# optional azurerm_subnet_route_table_association 
##############################################################################################
resource "azurerm_subnet_route_table_association" "this" {
  count          = var.subnet_id != null ? 1 : 0
  route_table_id = azurerm_route_table.this.id
  subnet_id      = var.subnet_id
}
