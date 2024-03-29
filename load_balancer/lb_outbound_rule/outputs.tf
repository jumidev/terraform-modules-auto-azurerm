output "name" {
  value = azurerm_lb_outbound_rule.this.name
}

output "loadbalancer_id" {
  value = azurerm_lb_outbound_rule.this.loadbalancer_id
}

output "frontend_ip_configuration" {
  value = azurerm_lb_outbound_rule.this.frontend_ip_configuration
}

output "backend_address_pool_id" {
  value = azurerm_lb_outbound_rule.this.backend_address_pool_id
}

output "protocol" {
  value = azurerm_lb_outbound_rule.this.protocol
}

output "enable_tcp_reset" {
  value = azurerm_lb_outbound_rule.this.enable_tcp_reset
}

output "allocated_outbound_ports" {
  value = azurerm_lb_outbound_rule.this.allocated_outbound_ports
}

output "idle_timeout_in_minutes" {
  value = azurerm_lb_outbound_rule.this.idle_timeout_in_minutes
}

output "name" {
  description = "The name of the Frontend IP Configuration. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_outbound_rule.this.name
}

output "id" {
  description = "The ID of the Load Balancer Outbound Rule."
  value       = azurerm_lb_outbound_rule.this.id
}

