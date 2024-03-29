output "name" {
  value = azurerm_lb_rule.this.name
}

output "loadbalancer_id" {
  value = azurerm_lb_rule.this.loadbalancer_id
}

output "frontend_ip_configuration_name" {
  value = azurerm_lb_rule.this.frontend_ip_configuration_name
}

output "protocol" {
  value = azurerm_lb_rule.this.protocol
}

output "frontend_port" {
  value = azurerm_lb_rule.this.frontend_port
}

output "backend_port" {
  value = azurerm_lb_rule.this.backend_port
}

output "backend_address_pool_ids" {
  value = azurerm_lb_rule.this.backend_address_pool_ids
}

output "probe_id" {
  value = azurerm_lb_rule.this.probe_id
}

output "enable_floating_ip" {
  value = azurerm_lb_rule.this.enable_floating_ip
}

output "idle_timeout_in_minutes" {
  value = azurerm_lb_rule.this.idle_timeout_in_minutes
}

output "load_distribution" {
  value = azurerm_lb_rule.this.load_distribution
}

output "disable_outbound_snat" {
  value = azurerm_lb_rule.this.disable_outbound_snat
}

output "enable_tcp_reset" {
  value = azurerm_lb_rule.this.enable_tcp_reset
}

output "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule? In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_rule.this.enable_tcp_reset
}

output "id" {
  description = "The ID of the Load Balancer Rule."
  value       = azurerm_lb_rule.this.id
}

