output "app_service_id" {
  value = azurerm_app_service_slot_virtual_network_swift_connection.this.app_service_id
}

output "slot_name" {
  value = azurerm_app_service_slot_virtual_network_swift_connection.this.slot_name
}

output "subnet_id" {
  value = azurerm_app_service_slot_virtual_network_swift_connection.this.subnet_id
}

output "id" {
  description = "The ID of the App Service Slot Virtual Network Association"
  value       = azurerm_app_service_slot_virtual_network_swift_connection.this.id
}

