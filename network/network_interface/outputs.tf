output "ip_configuration" {
  value = azurerm_network_interface.this.ip_configuration
}

output "location" {
  value = azurerm_network_interface.this.location
}

output "name" {
  value = azurerm_network_interface.this.name
}

output "resource_group_name" {
  value = azurerm_network_interface.this.resource_group_name
}

output "auxiliary_mode" {
  value = azurerm_network_interface.this.auxiliary_mode
}

output "auxiliary_sku" {
  value = azurerm_network_interface.this.auxiliary_sku
}

output "dns_servers" {
  value = azurerm_network_interface.this.dns_servers
}

output "edge_zone" {
  value = azurerm_network_interface.this.edge_zone
}

output "enable_ip_forwarding" {
  value = azurerm_network_interface.this.enable_ip_forwarding
}

output "enable_accelerated_networking" {
  value = azurerm_network_interface.this.enable_accelerated_networking
}

output "internal_dns_name_label" {
  value = azurerm_network_interface.this.internal_dns_name_label
}

output "tags" {
  value = azurerm_network_interface.this.tags
}

output "applied_dns_servers" {
  description = "If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set."
  value       = azurerm_network_interface.this.applied_dns_servers
}

output "id" {
  description = "The ID of the Network Interface."
  value       = azurerm_network_interface.this.id
}

output "internal_domain_name_suffix" {
  description = "Even if 'internal_dns_name_label' is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of 'internal_domain_name_suffix'."
  value       = azurerm_network_interface.this.internal_domain_name_suffix
}

output "mac_address" {
  description = "The Media Access Control (MAC) Address of the Network Interface."
  value       = azurerm_network_interface.this.mac_address
}

output "private_ip_address" {
  description = "The first private IP address of the network interface."
  value       = azurerm_network_interface.this.private_ip_address
}

output "private_ip_addresses" {
  description = "The private IP addresses of the network interface."
  value       = azurerm_network_interface.this.private_ip_addresses
}

output "virtual_machine_id" {
  description = "The ID of the Virtual Machine which this Network Interface is connected to."
  value       = azurerm_network_interface.this.virtual_machine_id
}

output "network_interface_id" {
  value = azurerm_network_interface_application_security_group_association.this.*.network_interface_id
}

output "application_security_group_id" {
  value = azurerm_network_interface_application_security_group_association.this.*.application_security_group_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Application Security Group."
  value       = azurerm_network_interface_application_security_group_association.this.*.id
}

output "network_interface_backend_address_pool_association.network_interface_id" {
  value = lookup(var.network_interface_backend_address_pool_association, "network_interface_id", null)
}

output "network_interface_backend_address_pool_association.ip_configuration_name" {
  value = lookup(var.network_interface_backend_address_pool_association, "ip_configuration_name", null)
}

output "network_interface_backend_address_pool_association.backend_address_pool_id" {
  value = lookup(var.network_interface_backend_address_pool_association, "backend_address_pool_id", null)
}

output "network_interface_backend_address_pool_association.id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Load Balancers Backend Address Pool."
  value       = lookup(var.network_interface_backend_address_pool_association, "id", null)
}

output "network_interface_id" {
  value = azurerm_network_interface_security_group_association.this.*.network_interface_id
}

output "network_security_group_id" {
  value = azurerm_network_interface_security_group_association.this.*.network_security_group_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Network Interface."
  value       = azurerm_network_interface_security_group_association.this.*.id
}

output "network_interface_application_gateway_backend_address_pool_association.network_interface_id" {
  value = lookup(var.network_interface_application_gateway_backend_address_pool_association, "network_interface_id", null)
}

output "network_interface_application_gateway_backend_address_pool_association.ip_configuration_name" {
  value = lookup(var.network_interface_application_gateway_backend_address_pool_association, "ip_configuration_name", null)
}

output "network_interface_application_gateway_backend_address_pool_association.backend_address_pool_id" {
  value = lookup(var.network_interface_application_gateway_backend_address_pool_association, "backend_address_pool_id", null)
}

output "network_interface_application_gateway_backend_address_pool_association.id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Application Gateway Backend Address Pool."
  value       = lookup(var.network_interface_application_gateway_backend_address_pool_association, "id", null)
}

output "network_interface_nat_rule_association.network_interface_id" {
  value = lookup(var.network_interface_nat_rule_association, "network_interface_id", null)
}

output "network_interface_nat_rule_association.ip_configuration_name" {
  value = lookup(var.network_interface_nat_rule_association, "ip_configuration_name", null)
}

output "network_interface_nat_rule_association.nat_rule_id" {
  value = lookup(var.network_interface_nat_rule_association, "nat_rule_id", null)
}

output "network_interface_nat_rule_association.id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Load Balancers NAT Rule."
  value       = lookup(var.network_interface_nat_rule_association, "id", null)
}

