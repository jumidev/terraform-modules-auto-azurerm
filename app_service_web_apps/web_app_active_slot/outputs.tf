output "slot_id" {
  value = azurerm_web_app_active_slot.this.slot_id
}

output "overwrite_network_config" {
  value = azurerm_web_app_active_slot.this.overwrite_network_config
}

output "id" {
  description = "The ID of the Web App Active Slot"
  value       = azurerm_web_app_active_slot.this.id
}

output "last_successful_swap" {
  description = "The timestamp of the last successful swap with 'Production'."
  value       = azurerm_web_app_active_slot.this.last_successful_swap
}

