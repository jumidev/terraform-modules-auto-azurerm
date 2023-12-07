data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_lb_nat_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  resource_group_name            = data.azurerm_resource_group.this.name
  loadbalancer_id                = var.loadbalancer_id
  frontend_ip_configuration_name = var.frontend_ip_configuration_name # Default: primary
  protocol                       = var.protocol
  frontend_port_start            = var.frontend_port_start
  frontend_port_end              = var.frontend_port_end
  backend_port                   = var.backend_port

  ########################################
  # optional vars
  ########################################
  idle_timeout_in_minutes = var.idle_timeout_in_minutes # Default: 4
  floating_ip_enabled     = var.floating_ip_enabled
  tcp_reset_enabled       = var.tcp_reset_enabled
}
