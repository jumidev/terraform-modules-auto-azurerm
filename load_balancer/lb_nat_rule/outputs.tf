output "name" {
  value = azurerm_lb_nat_rule.this.name
}

output "resource_group_name" {
  value = azurerm_lb_nat_rule.this.resource_group_name
}

output "loadbalancer_id" {
  value = azurerm_lb_nat_rule.this.loadbalancer_id
}

output "frontend_ip_configuration_name" {
  value = azurerm_lb_nat_rule.this.frontend_ip_configuration_name
}

output "protocol" {
  value = azurerm_lb_nat_rule.this.protocol
}

output "frontend_port" {
  value = azurerm_lb_nat_rule.this.frontend_port
}

output "backend_port" {
  value = azurerm_lb_nat_rule.this.backend_port
}

output "frontend_port_start" {
  value = azurerm_lb_nat_rule.this.frontend_port_start
}

output "frontend_port_end" {
  value = azurerm_lb_nat_rule.this.frontend_port_end
}

output "backend_address_pool_id" {
  value = azurerm_lb_nat_rule.this.backend_address_pool_id
}

output "idle_timeout_in_minutes" {
  value = azurerm_lb_nat_rule.this.idle_timeout_in_minutes
}

output "enable_floating_ip" {
  value = azurerm_lb_nat_rule.this.enable_floating_ip
}

output "enable_tcp_reset" {
  value = azurerm_lb_nat_rule.this.enable_tcp_reset
}

output "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule? In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_nat_rule.this.enable_tcp_reset
}

output "id" {
  description = "The ID of the Load Balancer NAT Rule."
  value       = azurerm_lb_nat_rule.this.id
}

output "network_interface_nat_rule_association" {
  value = var.network_interface_nat_rule_association
}

