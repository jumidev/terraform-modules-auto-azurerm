output "resource_group_name" {
  value = azurerm_app_service_active_slot.this.resource_group_name
}

output "app_service_name" {
  value = azurerm_app_service_active_slot.this.app_service_name
}

output "app_service_slot_name" {
  value = azurerm_app_service_active_slot.this.app_service_slot_name
}

