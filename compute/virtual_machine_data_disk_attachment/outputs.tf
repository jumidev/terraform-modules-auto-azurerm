output "virtual_machine_id" {
  value = azurerm_virtual_machine_data_disk_attachment.this.virtual_machine_id
}

output "managed_disk_id" {
  value = azurerm_virtual_machine_data_disk_attachment.this.managed_disk_id
}

output "lun" {
  value = azurerm_virtual_machine_data_disk_attachment.this.lun
}

output "caching" {
  value = azurerm_virtual_machine_data_disk_attachment.this.caching
}

output "create_option" {
  value = azurerm_virtual_machine_data_disk_attachment.this.create_option
}

output "write_accelerator_enabled" {
  value = azurerm_virtual_machine_data_disk_attachment.this.write_accelerator_enabled
}

output "id" {
  description = "The ID of the Virtual Machine Data Disk attachment."
  value       = azurerm_virtual_machine_data_disk_attachment.this.id
}

