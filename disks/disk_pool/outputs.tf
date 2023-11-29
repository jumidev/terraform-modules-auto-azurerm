output "name" {
  value = azurerm_disk_pool.this.name
}

output "resource_group_name" {
  value = azurerm_disk_pool.this.resource_group_name
}

output "location" {
  value = azurerm_disk_pool.this.location
}

output "zones" {
  value = azurerm_disk_pool.this.zones
}

output "sku_name" {
  value = azurerm_disk_pool.this.sku_name
}

output "subnet_id" {
  value = azurerm_disk_pool.this.subnet_id
}

output "tags" {
  value = azurerm_disk_pool.this.tags
}

output "id" {
  description = "The ID of the Disk Pool."
  value       = azurerm_disk_pool.this.id
}

