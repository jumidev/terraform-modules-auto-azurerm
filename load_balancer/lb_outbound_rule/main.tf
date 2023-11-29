

resource "azurerm_lb_outbound_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  loadbalancer_id         = var.loadbalancer_id
  backend_address_pool_id = var.backend_address_pool_id
  protocol                = var.protocol

  ########################################
  # optional vars
  ########################################

  dynamic "frontend_ip_configuration" { # var.frontend_ip_configuration
    for_each = var.frontend_ip_configuration != null ? var.frontend_ip_configuration : []
    content {
      name = frontend_ip_configuration.key
    }
  }

  enable_tcp_reset         = var.enable_tcp_reset
  allocated_outbound_ports = var.allocated_outbound_ports # Default: 1024
  idle_timeout_in_minutes  = var.idle_timeout_in_minutes  # Default: 4
}
