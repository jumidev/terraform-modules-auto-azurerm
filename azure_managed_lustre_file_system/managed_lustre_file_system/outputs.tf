output "name" {
  value = azurerm_managed_lustre_file_system.this.name
}

output "resource_group_name" {
  value = azurerm_managed_lustre_file_system.this.resource_group_name
}

output "location" {
  value = azurerm_managed_lustre_file_system.this.location
}

output "maintenance_window" {
  value = azurerm_managed_lustre_file_system.this.maintenance_window
}

output "sku_name" {
  value = azurerm_managed_lustre_file_system.this.sku_name
}

output "storage_capacity_in_tb" {
  value = azurerm_managed_lustre_file_system.this.storage_capacity_in_tb
}

output "subnet_id" {
  value = azurerm_managed_lustre_file_system.this.subnet_id
}

output "zones" {
  value = azurerm_managed_lustre_file_system.this.zones
}

output "hsm_setting" {
  value = azurerm_managed_lustre_file_system.this.hsm_setting
}

output "identity" {
  value = azurerm_managed_lustre_file_system.this.identity
}

output "encryption_key" {
  value = azurerm_managed_lustre_file_system.this.encryption_key
}

output "tags" {
  value = azurerm_managed_lustre_file_system.this.tags
}

output "id" {
  description = "The ID of the Azure Managed Lustre File System."
  value       = azurerm_managed_lustre_file_system.this.id
}

output "mgs_address" {
  description = "IP Address of Managed Lustre File System Services."
  value       = azurerm_managed_lustre_file_system.this.mgs_address
}

