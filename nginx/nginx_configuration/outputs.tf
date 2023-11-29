output "nginx_deployment_id" {
  value = azurerm_nginx_configuration.this.nginx_deployment_id
}

output "root_file" {
  value = azurerm_nginx_configuration.this.root_file
}

output "package_data" {
  value = azurerm_nginx_configuration.this.package_data
}

output "config_file" {
  value = azurerm_nginx_configuration.this.config_file
}

output "protected_file" {
  value = azurerm_nginx_configuration.this.protected_file
}

output "id" {
  description = "The ID of this Nginx Configuration."
  value       = azurerm_nginx_configuration.this.id
}

