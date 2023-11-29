output "name" {
  value = azurerm_container_app_environment.this.name
}

output "resource_group_name" {
  value = azurerm_container_app_environment.this.resource_group_name
}

output "location" {
  value = azurerm_container_app_environment.this.location
}

output "dapr_application_insights_connection_string" {
  value = azurerm_container_app_environment.this.dapr_application_insights_connection_string
}

output "infrastructure_subnet_id" {
  value = azurerm_container_app_environment.this.infrastructure_subnet_id
}

output "internal_load_balancer_enabled" {
  value = azurerm_container_app_environment.this.internal_load_balancer_enabled
}

output "zone_redundancy_enabled" {
  value = azurerm_container_app_environment.this.zone_redundancy_enabled
}

output "log_analytics_workspace_id" {
  value = azurerm_container_app_environment.this.log_analytics_workspace_id
}

output "tags" {
  value = azurerm_container_app_environment.this.tags
}

output "id" {
  description = "The ID of the Container App Environment"
  value       = azurerm_container_app_environment.this.id
}

output "default_domain" {
  description = "The default, publicly resolvable, name of this Container App Environment."
  value       = azurerm_container_app_environment.this.default_domain
}

output "docker_bridge_cidr" {
  description = "The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation."
  value       = azurerm_container_app_environment.this.docker_bridge_cidr
}

output "platform_reserved_cidr" {
  description = "The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses."
  value       = azurerm_container_app_environment.this.platform_reserved_cidr
}

output "platform_reserved_dns_ip_address" {
  description = "The IP address from the IP range defined by 'platform_reserved_cidr' that is reserved for the internal DNS server."
  value       = azurerm_container_app_environment.this.platform_reserved_dns_ip_address
}

output "static_ip_address" {
  description = "The Static IP address of the Environment."
  value       = azurerm_container_app_environment.this.static_ip_address
}

