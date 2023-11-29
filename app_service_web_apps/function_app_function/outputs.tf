output "name" {
  value = azurerm_function_app_function.this.name
}

output "function_app_id" {
  value = azurerm_function_app_function.this.function_app_id
}

output "config_json" {
  value = azurerm_function_app_function.this.config_json
}

output "enabled" {
  value = azurerm_function_app_function.this.enabled
}

output "file" {
  value = azurerm_function_app_function.this.file
}

output "language" {
  value = azurerm_function_app_function.this.language
}

output "test_data" {
  value = azurerm_function_app_function.this.test_data
}

output "id" {
  description = "The ID of the Function App Function"
  value       = azurerm_function_app_function.this.id
}

output "config_url" {
  description = "The URL of the configuration JSON."
  value       = azurerm_function_app_function.this.config_url
}

output "invocation_url" {
  description = "The invocation URL."
  value       = azurerm_function_app_function.this.invocation_url
}

output "script_root_path_url" {
  description = "The Script root path URL."
  value       = azurerm_function_app_function.this.script_root_path_url
}

output "script_url" {
  description = "The script URL."
  value       = azurerm_function_app_function.this.script_url
}

output "secrets_file_url" {
  description = "The URL for the Secrets File."
  value       = azurerm_function_app_function.this.secrets_file_url
}

output "test_data_url" {
  description = "The Test data URL."
  value       = azurerm_function_app_function.this.test_data_url
}

output "url" {
  description = "The function URL."
  value       = azurerm_function_app_function.this.url
}

