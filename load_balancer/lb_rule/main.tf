

resource "azurerm_lb_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  loadbalancer_id                = var.loadbalancer_id
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  protocol                       = var.protocol
  frontend_port                  = var.frontend_port
  backend_port                   = var.backend_port

  ########################################
  # optional vars
  ########################################
  backend_address_pool_ids = var.backend_address_pool_ids
  probe_id                 = var.probe_id
  enable_floating_ip       = var.enable_floating_ip      # Default: False
  idle_timeout_in_minutes  = var.idle_timeout_in_minutes # Default: 4
  load_distribution        = var.load_distribution
  disable_outbound_snat    = var.disable_outbound_snat
  enable_tcp_reset         = var.enable_tcp_reset
}
