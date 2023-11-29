output "name" {
  value = azurerm_app_service_environment_v3.this.name
}

output "resource_group_name" {
  value = azurerm_app_service_environment_v3.this.resource_group_name
}

output "subnet_id" {
  value = azurerm_app_service_environment_v3.this.subnet_id
}

output "allow_new_private_endpoint_connections" {
  value = azurerm_app_service_environment_v3.this.allow_new_private_endpoint_connections
}

output "cluster_setting" {
  value = azurerm_app_service_environment_v3.this.cluster_setting
}

output "dedicated_host_count" {
  value = azurerm_app_service_environment_v3.this.dedicated_host_count
}

output "zone_redundant" {
  value = azurerm_app_service_environment_v3.this.zone_redundant
}

output "internal_load_balancing_mode" {
  value = azurerm_app_service_environment_v3.this.internal_load_balancing_mode
}

output "tags" {
  value = azurerm_app_service_environment_v3.this.tags
}

output "id" {
  description = "The ID of the App Service Environment."
  value       = azurerm_app_service_environment_v3.this.id
}

output "dns_suffix" {
  description = "the DNS suffix for this App Service Environment V3."
  value       = azurerm_app_service_environment_v3.this.dns_suffix
}

output "external_inbound_ip_addresses" {
  description = "The external inbound IP addresses of the App Service Environment V3."
  value       = azurerm_app_service_environment_v3.this.external_inbound_ip_addresses
}

output "inbound_network_dependencies" {
  description = "An 'inbound_network_dependencies' block."
  value       = azurerm_app_service_environment_v3.this.inbound_network_dependencies
}

output "internal_inbound_ip_addresses" {
  description = "The internal inbound IP addresses of the App Service Environment V3."
  value       = azurerm_app_service_environment_v3.this.internal_inbound_ip_addresses
}

output "ip_ssl_address_count" {
  description = "The number of IP SSL addresses reserved for the App Service Environment V3."
  value       = azurerm_app_service_environment_v3.this.ip_ssl_address_count
}

output "linux_outbound_ip_addresses" {
  description = "Outbound addresses of Linux based Apps in this App Service Environment V3"
  value       = azurerm_app_service_environment_v3.this.linux_outbound_ip_addresses
}

output "location" {
  description = "The location where the App Service Environment exists."
  value       = azurerm_app_service_environment_v3.this.location
}

output "pricing_tier" {
  description = "Pricing tier for the front end instances."
  value       = azurerm_app_service_environment_v3.this.pricing_tier
}

output "windows_outbound_ip_addresses" {
  description = "Outbound addresses of Windows based Apps in this App Service Environment V3."
  value       = azurerm_app_service_environment_v3.this.windows_outbound_ip_addresses
}

output "description" {
  description = "A short description of the purpose of the network traffic."
  value       = azurerm_app_service_environment_v3.this.description
}

output "ip_addresses" {
  description = "A list of IP addresses that network traffic will originate from in CIDR notation."
  value       = azurerm_app_service_environment_v3.this.ip_addresses
}

output "ports" {
  description = "The ports that network traffic will arrive to the App Service Environment V3 on."
  value       = azurerm_app_service_environment_v3.this.ports
}

