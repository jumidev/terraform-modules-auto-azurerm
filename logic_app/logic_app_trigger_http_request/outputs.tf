output "name" {
  value = azurerm_logic_app_trigger_http_request.this.name
}

output "logic_app_id" {
  value = azurerm_logic_app_trigger_http_request.this.logic_app_id
}

output "schema" {
  value = azurerm_logic_app_trigger_http_request.this.schema
}

output "method" {
  value = azurerm_logic_app_trigger_http_request.this.method
}

output "relative_path" {
  value = azurerm_logic_app_trigger_http_request.this.relative_path
}

output "id" {
  description = "The ID of the HTTP Request Trigger within the Logic App Workflow."
  value       = azurerm_logic_app_trigger_http_request.this.id
}

output "callback_url" {
  description = "The URL for the workflow trigger"
  value       = azurerm_logic_app_trigger_http_request.this.callback_url
}

