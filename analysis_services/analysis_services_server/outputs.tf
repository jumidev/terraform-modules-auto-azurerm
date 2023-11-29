output "name" {
  value = azurerm_analysis_services_server.this.name
}

output "location" {
  value = azurerm_analysis_services_server.this.location
}

output "resource_group_name" {
  value = azurerm_analysis_services_server.this.resource_group_name
}

output "sku" {
  value = azurerm_analysis_services_server.this.sku
}

output "admin_users" {
  value = azurerm_analysis_services_server.this.admin_users
}

output "querypool_connection_mode" {
  value = azurerm_analysis_services_server.this.querypool_connection_mode
}

output "backup_blob_container_uri" {
  value = azurerm_analysis_services_server.this.backup_blob_container_uri
}

output "enable_power_bi_service" {
  value = azurerm_analysis_services_server.this.enable_power_bi_service
}

output "ipv4_firewall_rule" {
  value = azurerm_analysis_services_server.this.ipv4_firewall_rule
}

output "tags" {
  value = azurerm_analysis_services_server.this.tags
}

output "id" {
  description = "The ID of the Analysis Services Server."
  value       = azurerm_analysis_services_server.this.id
}

output "server_full_name" {
  description = "The full name of the Analysis Services Server."
  value       = azurerm_analysis_services_server.this.server_full_name
}

