output "name" {
  value = azurerm_logic_app_action_custom.this.name
}

output "logic_app_id" {
  value = azurerm_logic_app_action_custom.this.logic_app_id
}

output "body" {
  value = azurerm_logic_app_action_custom.this.body
}

output "id" {
  description = "The ID of the Action within the Logic App Workflow."
  value       = azurerm_logic_app_action_custom.this.id
}

