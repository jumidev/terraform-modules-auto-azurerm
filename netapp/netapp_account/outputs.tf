output "name" {
  value = azurerm_netapp_account.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_account.this.resource_group_name
}

output "location" {
  value = azurerm_netapp_account.this.location
}

output "active_directory" {
  value = azurerm_netapp_account.this.active_directory
}

output "tags" {
  value = azurerm_netapp_account.this.tags
}

output "id" {
  description = "The ID of the NetApp Account."
  value       = azurerm_netapp_account.this.id
}

