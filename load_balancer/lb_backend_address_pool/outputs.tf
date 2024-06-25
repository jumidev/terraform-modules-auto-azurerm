output "name" {
  value = azurerm_lb_backend_address_pool.this.name
}

output "loadbalancer_id" {
  value = azurerm_lb_backend_address_pool.this.loadbalancer_id
}

output "synchronous_mode" {
  value = azurerm_lb_backend_address_pool.this.synchronous_mode
}

output "tunnel_interface" {
  value = azurerm_lb_backend_address_pool.this.tunnel_interface
}

output "virtual_network_id" {
  value = azurerm_lb_backend_address_pool.this.virtual_network_id
}

output "port" {
  description = "The port number that this Gateway Load Balancer Tunnel Interface listens to. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_backend_address_pool.this.port
}

output "id" {
  description = "The ID of the Backend Address Pool."
  value       = azurerm_lb_backend_address_pool.this.id
}

output "backend_ip_configurations" {
  description = "The Backend IP Configurations associated with this Backend Address Pool."
  value       = azurerm_lb_backend_address_pool.this.backend_ip_configurations
}

output "load_balancing_rules" {
  description = "The Load Balancing Rules associated with this Backend Address Pool."
  value       = azurerm_lb_backend_address_pool.this.load_balancing_rules
}

output "inbound_nat_rules" {
  description = "An array of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool."
  value       = azurerm_lb_backend_address_pool.this.inbound_nat_rules
}

output "outbound_rules" {
  description = "An array of the Load Balancing Outbound Rules associated with this Backend Address Pool."
  value       = azurerm_lb_backend_address_pool.this.outbound_rules
}

output "network_interface_backend_address_pool_association" {
  value = var.network_interface_backend_address_pool_association
}

output "network_interface_application_gateway_backend_address_pool_association" {
  value = var.network_interface_application_gateway_backend_address_pool_association
}

