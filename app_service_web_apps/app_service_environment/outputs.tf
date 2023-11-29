output "name" {
  value = azurerm_app_service_environment.this.name
}

output "subnet_id" {
  value = azurerm_app_service_environment.this.subnet_id
}

output "cluster_setting" {
  value = azurerm_app_service_environment.this.cluster_setting
}

output "internal_load_balancing_mode" {
  value = azurerm_app_service_environment.this.internal_load_balancing_mode
}

output "pricing_tier" {
  value = azurerm_app_service_environment.this.pricing_tier
}

output "front_end_scale_factor" {
  value = azurerm_app_service_environment.this.front_end_scale_factor
}

output "allowed_user_ip_cidrs" {
  value = azurerm_app_service_environment.this.allowed_user_ip_cidrs
}

output "resource_group_name" {
  value = azurerm_app_service_environment.this.resource_group_name
}

output "tags" {
  value = azurerm_app_service_environment.this.tags
}

output "id" {
  description = "The ID of the App Service Environment."
  value       = azurerm_app_service_environment.this.id
}

output "internal_ip_address" {
  description = "IP address of internal load balancer of the App Service Environment."
  value       = azurerm_app_service_environment.this.internal_ip_address
}

output "location" {
  description = "The location where the App Service Environment exists."
  value       = azurerm_app_service_environment.this.location
}

output "outbound_ip_addresses" {
  description = "List of outbound IP addresses of the App Service Environment."
  value       = azurerm_app_service_environment.this.outbound_ip_addresses
}

output "service_ip_address" {
  description = "IP address of service endpoint of the App Service Environment."
  value       = azurerm_app_service_environment.this.service_ip_address
}

