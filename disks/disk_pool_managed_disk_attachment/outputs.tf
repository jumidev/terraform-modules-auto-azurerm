output "disk_pool_id" {
  value = azurerm_disk_pool_managed_disk_attachment.this.disk_pool_id
}

output "managed_disk_id" {
  value = azurerm_disk_pool_managed_disk_attachment.this.managed_disk_id
}

output "id" {
  description = "The ID of the Disk Pool Managed Disk Attachment."
  value       = azurerm_disk_pool_managed_disk_attachment.this.id
}

