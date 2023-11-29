output "name" {
  value = azurerm_netapp_pool.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_pool.this.resource_group_name
}

output "account_name" {
  value = azurerm_netapp_pool.this.account_name
}

output "location" {
  value = azurerm_netapp_pool.this.location
}

output "service_level" {
  value = azurerm_netapp_pool.this.service_level
}

output "size_in_tb" {
  value = azurerm_netapp_pool.this.size_in_tb
}

output "qos_type" {
  value = azurerm_netapp_pool.this.qos_type
}

output "tags" {
  value = azurerm_netapp_pool.this.tags
}

output "id" {
  description = "The ID of the NetApp Pool."
  value       = azurerm_netapp_pool.this.id
}

