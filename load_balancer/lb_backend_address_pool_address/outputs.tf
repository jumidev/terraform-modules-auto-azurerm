output "backend_address_pool_id" {
  value = azurerm_lb_backend_address_pool_address.this.backend_address_pool_id
}

output "ip_address" {
  value = azurerm_lb_backend_address_pool_address.this.ip_address
}

output "name" {
  value = azurerm_lb_backend_address_pool_address.this.name
}

output "virtual_network_id" {
  value = azurerm_lb_backend_address_pool_address.this.virtual_network_id
}

output "backend_address_ip_configuration_id" {
  value = azurerm_lb_backend_address_pool_address.this.backend_address_ip_configuration_id
}

output "backend_address_ip_configuration_id" {
  description = "The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool. -> **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_lb_backend_address_pool_address.this.backend_address_ip_configuration_id
}

output "id" {
  description = "The ID of the Backend Address Pool Address."
  value       = azurerm_lb_backend_address_pool_address.this.id
}

output "inbound_nat_rule_port_mapping" {
  description = "A list of 'inbound_nat_rule_port_mapping' block."
  value       = azurerm_lb_backend_address_pool_address.this.inbound_nat_rule_port_mapping
}

output "inbound_nat_rule_name" {
  description = "The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address."
  value       = azurerm_lb_backend_address_pool_address.this.inbound_nat_rule_name
}

output "frontend_port" {
  description = "The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address."
  value       = azurerm_lb_backend_address_pool_address.this.frontend_port
}

output "backend_port" {
  description = "The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address."
  value       = azurerm_lb_backend_address_pool_address.this.backend_port
}

