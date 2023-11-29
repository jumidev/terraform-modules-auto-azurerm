output "name" {
  value = azurerm_image.this.name
}

output "resource_group_name" {
  value = azurerm_image.this.resource_group_name
}

output "location" {
  value = azurerm_image.this.location
}

output "source_virtual_machine_id" {
  value = azurerm_image.this.source_virtual_machine_id
}

output "os_disk" {
  value = azurerm_image.this.os_disk
}

output "data_disk" {
  value = azurerm_image.this.data_disk
}

output "tags" {
  value = azurerm_image.this.tags
}

output "zone_resilient" {
  value = azurerm_image.this.zone_resilient
}

output "hyper_v_generation" {
  value = azurerm_image.this.hyper_v_generation
}

output "id" {
  description = "The ID of the Image."
  value       = azurerm_image.this.id
}

