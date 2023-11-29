output "client_connection_port" {
  value = azurerm_service_fabric_managed_cluster.this.client_connection_port
}

output "http_gateway_port" {
  value = azurerm_service_fabric_managed_cluster.this.http_gateway_port
}

output "lb_rule" {
  value = azurerm_service_fabric_managed_cluster.this.lb_rule
}

output "location" {
  value = azurerm_service_fabric_managed_cluster.this.location
}

output "name" {
  value = azurerm_service_fabric_managed_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_service_fabric_managed_cluster.this.resource_group_name
}

output "authentication" {
  value = azurerm_service_fabric_managed_cluster.this.authentication
}

output "backup_service_enabled" {
  value = azurerm_service_fabric_managed_cluster.this.backup_service_enabled
}

output "custom_fabric_setting" {
  value = azurerm_service_fabric_managed_cluster.this.custom_fabric_setting
}

output "dns_name" {
  value = azurerm_service_fabric_managed_cluster.this.dns_name
}

output "dns_service_enabled" {
  value = azurerm_service_fabric_managed_cluster.this.dns_service_enabled
}

output "node_type" {
  value = azurerm_service_fabric_managed_cluster.this.node_type
}

output "password" {
  value     = azurerm_service_fabric_managed_cluster.this.password
  sensitive = true
}

output "sku" {
  value = azurerm_service_fabric_managed_cluster.this.sku
}

output "tags" {
  value = azurerm_service_fabric_managed_cluster.this.tags
}

output "upgrade_wave" {
  value = azurerm_service_fabric_managed_cluster.this.upgrade_wave
}

output "username" {
  value = azurerm_service_fabric_managed_cluster.this.username
}

output "id" {
  description = "The ID of the Resource Group."
  value       = azurerm_service_fabric_managed_cluster.this.id
}

