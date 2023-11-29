

resource "azurerm_lb_backend_address_pool" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  loadbalancer_id = var.loadbalancer_id

  ########################################
  # optional vars
  ########################################

  dynamic "tunnel_interface" { # var.tunnel_interface
    for_each = var.tunnel_interface != null ? var.tunnel_interface : []
    content {
      identifier = lookup(tunnel_interface.value, "identifier") # (Required) 
      type       = lookup(tunnel_interface.value, "type")       # (Required) possible values: None | Internal | External
      protocol   = lookup(tunnel_interface.value, "protocol")   # (Required) possible values: None | Native | VXLAN
      port       = lookup(tunnel_interface.value, "port")       # (Required) 
    }
  }

  virtual_network_id = var.virtual_network_id
}
