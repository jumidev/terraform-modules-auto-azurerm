output "name" {
  value = azurerm_lb_nat_pool.this.name
}

output "resource_group_name" {
  value = azurerm_lb_nat_pool.this.resource_group_name
}

output "loadbalancer_id" {
  value = azurerm_lb_nat_pool.this.loadbalancer_id
}

output "frontend_ip_configuration_name" {
  value = azurerm_lb_nat_pool.this.frontend_ip_configuration_name
}

output "protocol" {
  value = azurerm_lb_nat_pool.this.protocol
}

output "frontend_port_start" {
  value = azurerm_lb_nat_pool.this.frontend_port_start
}

output "frontend_port_end" {
  value = azurerm_lb_nat_pool.this.frontend_port_end
}

output "backend_port" {
  value = azurerm_lb_nat_pool.this.backend_port
}

output "idle_timeout_in_minutes" {
  value = azurerm_lb_nat_pool.this.idle_timeout_in_minutes
}

output "floating_ip_enabled" {
  value = azurerm_lb_nat_pool.this.floating_ip_enabled
}

output "tcp_reset_enabled" {
  value = azurerm_lb_nat_pool.this.tcp_reset_enabled
}

output "id" {
  description = "The ID of the Load Balancer NAT pool."
  value       = azurerm_lb_nat_pool.this.id
}

