output "name" {
  value = azurerm_kusto_script.this.name
}

output "database_id" {
  value = azurerm_kusto_script.this.database_id
}

output "continue_on_errors_enabled" {
  value = azurerm_kusto_script.this.continue_on_errors_enabled
}

output "force_an_update_when_value_changed" {
  value = azurerm_kusto_script.this.force_an_update_when_value_changed
}

output "script_content" {
  value = azurerm_kusto_script.this.script_content
}

output "sas_token" {
  value = azurerm_kusto_script.this.sas_token
}

output "url" {
  value = azurerm_kusto_script.this.url
}

output "id" {
  description = "The ID of the Kusto Script."
  value       = azurerm_kusto_script.this.id
}

