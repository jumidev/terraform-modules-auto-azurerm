data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_route_table" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "route" { # var.route
    for_each = var.route != null ? var.route : []
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
