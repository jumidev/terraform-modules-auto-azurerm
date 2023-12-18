data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_lb_nat_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  resource_group_name            = data.azurerm_resource_group.this.name
  loadbalancer_id                = var.loadbalancer_id
  frontend_ip_configuration_name = var.frontend_ip_configuration_name # Default: primary
  protocol                       = var.protocol
  backend_port                   = var.backend_port

  ########################################
  # optional vars
  ########################################
  frontend_port           = var.frontend_port
  frontend_port_start     = var.frontend_port_start
  frontend_port_end       = var.frontend_port_end
  backend_address_pool_id = var.backend_address_pool_id
  idle_timeout_in_minutes = var.idle_timeout_in_minutes # Default: 4
  enable_floating_ip      = var.enable_floating_ip      # Default: False
  enable_tcp_reset        = var.enable_tcp_reset
}

##############################################################################################
# optional azurerm_network_interface_nat_rule_association 
##############################################################################################
resource "azurerm_network_interface_nat_rule_association" "this" {
  count                 = var.network_interface_nat_rule_association != null ? 1 : 0
  network_interface_id  = lookup(var.network_interface_nat_rule_association, "network_interface_id")
  ip_configuration_name = lookup(var.network_interface_nat_rule_association, "ip_configuration_name", "primary")
  nat_rule_id           = azurerm_lb_nat_rule.this.id
}
