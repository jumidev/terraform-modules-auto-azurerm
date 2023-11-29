output "name" {
  value = azurerm_netapp_snapshot.this.name
}

output "resource_group_name" {
  value = azurerm_netapp_snapshot.this.resource_group_name
}

output "account_name" {
  value = azurerm_netapp_snapshot.this.account_name
}

output "pool_name" {
  value = azurerm_netapp_snapshot.this.pool_name
}

output "volume_name" {
  value = azurerm_netapp_snapshot.this.volume_name
}

output "location" {
  value = azurerm_netapp_snapshot.this.location
}

output "id" {
  description = "The ID of the NetApp Snapshot."
  value       = azurerm_netapp_snapshot.this.id
}

