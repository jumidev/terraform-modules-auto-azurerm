output "name" {
  value = azurerm_private_endpoint.this.name
}

output "resource_group_name" {
  value = azurerm_private_endpoint.this.resource_group_name
}

output "location" {
  value = azurerm_private_endpoint.this.location
}

output "subnet_id" {
  value = azurerm_private_endpoint.this.subnet_id
}

output "custom_network_interface_name" {
  value = azurerm_private_endpoint.this.custom_network_interface_name
}

output "private_dns_zone_group" {
  value = azurerm_private_endpoint.this.private_dns_zone_group
}

output "private_service_connection" {
  value = azurerm_private_endpoint.this.private_service_connection
}

output "ip_configuration" {
  value = azurerm_private_endpoint.this.ip_configuration
}

output "tags" {
  value = azurerm_private_endpoint.this.tags
}

output "member_name" {
  description = "Specifies the member name this IP address applies to. If it is not specified, it will use the value of 'subresource_name'. Changing this forces a new resource to be created. -> **NOTE:** 'member_name' will be required and will not take the value of 'subresource_name' in the next major version. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_endpoint.this.member_name
}

output "id" {
  description = "The ID of the Private DNS Zone Config."
  value       = azurerm_private_endpoint.this.id
}

output "network_interface" {
  description = "A 'network_interface' block."
  value       = azurerm_private_endpoint.this.network_interface
}

output "custom_dns_configs" {
  description = "A 'custom_dns_configs' block."
  value       = azurerm_private_endpoint.this.custom_dns_configs
}

output "private_dns_zone_configs" {
  description = "A 'private_dns_zone_configs' block."
  value       = azurerm_private_endpoint.this.private_dns_zone_configs
}

output "ip_configuration" {
  description = "A 'ip_configuration' block."
  value       = azurerm_private_endpoint.this.ip_configuration
}

output "name" {
  description = "The name of the Private DNS Zone that the config belongs to."
  value       = azurerm_private_endpoint.this.name
}

output "fqdn" {
  description = "The fully qualified domain name to the 'private_dns_zone'."
  value       = azurerm_private_endpoint.this.fqdn
}

output "ip_addresses" {
  description = "A list of all IP Addresses that map to the 'private_dns_zone' fqdn. -> **NOTE:** If a Private DNS Zone Group has not been configured correctly the 'record_sets' attributes will be empty."
  value       = azurerm_private_endpoint.this.ip_addresses
}

output "private_dns_zone_id" {
  description = "A list of IP Addresses"
  value       = azurerm_private_endpoint.this.private_dns_zone_id
}

output "record_sets" {
  description = "A 'record_sets' block."
  value       = azurerm_private_endpoint.this.record_sets
}

output "private_ip_address" {
  description = "The static IP address set by this configuration. It is recommended to use the private IP address exported in the 'private_service_connection' block to obtain the address associated with the private endpoint."
  value       = azurerm_private_endpoint.this.private_ip_address
}

output "subresource_name" {
  description = "The subresource this IP address applies to, which corresponds to the 'group_id'."
  value       = azurerm_private_endpoint.this.subresource_name
}

output "type" {
  description = "The type of DNS record."
  value       = azurerm_private_endpoint.this.type
}

output "ttl" {
  description = "The time to live for each connection to the 'private_dns_zone'."
  value       = azurerm_private_endpoint.this.ttl
}

output "application_security_group_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.application_security_group_id
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.private_endpoint_id
}

output "private_endpoint_id" {
  description = "The id of private endpoint to associate. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_endpoint_application_security_group_association.this.*.private_endpoint_id
}

output "id" {
  description = "The (Terraform specific) ID of the association between Private Endpoint and Application Security Group."
  value       = azurerm_private_endpoint_application_security_group_association.this.*.id
}

