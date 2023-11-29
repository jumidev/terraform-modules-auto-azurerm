output "name" {
  value = azurerm_lb.this.name
}

output "resource_group_name" {
  value = azurerm_lb.this.resource_group_name
}

output "location" {
  value = azurerm_lb.this.location
}

output "edge_zone" {
  value = azurerm_lb.this.edge_zone
}

output "frontend_ip_configuration" {
  value = azurerm_lb.this.frontend_ip_configuration
}

output "sku" {
  value = azurerm_lb.this.sku
}

output "sku_tier" {
  value = azurerm_lb.this.sku_tier
}

output "tags" {
  value = azurerm_lb.this.tags
}

output "id" {
  description = "The id of the Frontend IP Configuration."
  value       = azurerm_lb.this.id
}

output "frontend_ip_configuration" {
  description = "A 'frontend_ip_configuration' block."
  value       = azurerm_lb.this.frontend_ip_configuration
}

output "private_ip_address" {
  description = "Private IP Address to assign to the Load Balancer."
  value       = azurerm_lb.this.private_ip_address
}

output "private_ip_addresses" {
  description = "The list of private IP address assigned to the load balancer in 'frontend_ip_configuration' blocks, if any."
  value       = azurerm_lb.this.private_ip_addresses
}

output "gateway_load_balancer_frontend_ip_configuration_id" {
  description = "The id of the Frontend IP Configuration of a Gateway Load Balancer that this Load Balancer points to."
  value       = azurerm_lb.this.gateway_load_balancer_frontend_ip_configuration_id
}

output "inbound_nat_rules" {
  description = "The list of IDs of inbound rules that use this frontend IP."
  value       = azurerm_lb.this.inbound_nat_rules
}

output "load_balancer_rules" {
  description = "The list of IDs of load balancing rules that use this frontend IP."
  value       = azurerm_lb.this.load_balancer_rules
}

output "outbound_rules" {
  description = "The list of IDs outbound rules that use this frontend IP."
  value       = azurerm_lb.this.outbound_rules
}

output "private_ip_address_allocation" {
  description = "The allocation method for the Private IP Address used by this Load Balancer. Possible values are 'Dynamic' and 'Static'."
  value       = azurerm_lb.this.private_ip_address_allocation
}

output "public_ip_address_id" {
  description = "The ID of a Public IP Address which is associated with this Load Balancer."
  value       = azurerm_lb.this.public_ip_address_id
}

output "public_ip_prefix_id" {
  description = "The ID of a Public IP Prefix which is associated with the Load Balancer."
  value       = azurerm_lb.this.public_ip_prefix_id
}

output "subnet_id" {
  description = "The ID of the Subnet which is associated with the IP Configuration."
  value       = azurerm_lb.this.subnet_id
}

