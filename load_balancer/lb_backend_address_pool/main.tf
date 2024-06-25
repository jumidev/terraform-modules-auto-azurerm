

resource "azurerm_lb_backend_address_pool" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  loadbalancer_id = var.loadbalancer_id

  ########################################
  # optional vars
  ########################################
  synchronous_mode = var.synchronous_mode

  dynamic "tunnel_interface" { # var.tunnel_interfaces
    for_each = var.tunnel_interfaces != null ? var.tunnel_interfaces : []
    content {
      identifier = lookup(tunnel_interface.value, "identifier") # (Required) 
      type       = lookup(tunnel_interface.value, "type")       # (Required) possible values: None | Internal | External
      protocol   = lookup(tunnel_interface.value, "protocol")   # (Required) possible values: None | Native | VXLAN
      port       = lookup(tunnel_interface.value, "port")       # (Required) 
    }
  }

  virtual_network_id = var.virtual_network_id
}

##############################################################################################
# optional azurerm_network_interface_backend_address_pool_association 
##############################################################################################
resource "azurerm_network_interface_backend_address_pool_association" "this" {
  count                   = var.network_interface_backend_address_pool_association != null ? 1 : 0
  network_interface_id    = lookup(var.network_interface_backend_address_pool_association, "network_interface_id")
  ip_configuration_name   = lookup(var.network_interface_backend_address_pool_association, "ip_configuration_name", "primary")
  backend_address_pool_id = azurerm_lb_backend_address_pool.this.id
}

##############################################################################################
# optional azurerm_network_interface_application_gateway_backend_address_pool_association 
##############################################################################################
resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "this" {
  count                   = var.network_interface_application_gateway_backend_address_pool_association != null ? 1 : 0
  network_interface_id    = lookup(var.network_interface_application_gateway_backend_address_pool_association, "network_interface_id")
  ip_configuration_name   = lookup(var.network_interface_application_gateway_backend_address_pool_association, "ip_configuration_name", "primary")
  backend_address_pool_id = azurerm_lb_backend_address_pool.this.id
}
