output "name" {
  value = azurerm_logic_app_action_http.this.name
}

output "logic_app_id" {
  value = azurerm_logic_app_action_http.this.logic_app_id
}

output "method" {
  value = azurerm_logic_app_action_http.this.method
}

output "uri" {
  value = azurerm_logic_app_action_http.this.uri
}

output "body" {
  value = azurerm_logic_app_action_http.this.body
}

output "headers" {
  value = azurerm_logic_app_action_http.this.headers
}

output "queries" {
  value = azurerm_logic_app_action_http.this.queries
}

output "run_after" {
  value = azurerm_logic_app_action_http.this.run_after
}

output "id" {
  description = "The ID of the HTTP Action within the Logic App Workflow."
  value       = azurerm_logic_app_action_http.this.id
}

