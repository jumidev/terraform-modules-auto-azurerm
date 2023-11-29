output "name" {
  value = azurerm_logic_app_trigger_custom.this.name
}

output "logic_app_id" {
  value = azurerm_logic_app_trigger_custom.this.logic_app_id
}

output "body" {
  value = azurerm_logic_app_trigger_custom.this.body
}

output "id" {
  description = "The ID of the Trigger within the Logic App Workflow."
  value       = azurerm_logic_app_trigger_custom.this.id
}

