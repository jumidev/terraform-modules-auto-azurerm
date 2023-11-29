output "resource_group_name" {
  value = azurerm_nginx_deployment.this.resource_group_name
}

output "name" {
  value = azurerm_nginx_deployment.this.name
}

output "location" {
  value = azurerm_nginx_deployment.this.location
}

output "sku" {
  value = azurerm_nginx_deployment.this.sku
}

output "managed_resource_group" {
  value = azurerm_nginx_deployment.this.managed_resource_group
}

output "capacity" {
  value = azurerm_nginx_deployment.this.capacity
}

output "diagnose_support_enabled" {
  value = azurerm_nginx_deployment.this.diagnose_support_enabled
}

output "email" {
  value = azurerm_nginx_deployment.this.email
}

output "identity" {
  value = azurerm_nginx_deployment.this.identity
}

output "frontend_private" {
  value = azurerm_nginx_deployment.this.frontend_private
}

output "frontend_public" {
  value = azurerm_nginx_deployment.this.frontend_public
}

output "logging_storage_account" {
  value = azurerm_nginx_deployment.this.logging_storage_account
}

output "network_interface" {
  value = azurerm_nginx_deployment.this.network_interface
}

output "tags" {
  value = azurerm_nginx_deployment.this.tags
}

output "id" {
  description = "The ID of the Nginx Deployment."
  value       = azurerm_nginx_deployment.this.id
}

output "ip_address" {
  description = "The IP address of the deployment."
  value       = azurerm_nginx_deployment.this.ip_address
}

output "nginx_version" {
  description = "The version of deployed nginx."
  value       = azurerm_nginx_deployment.this.nginx_version
}

