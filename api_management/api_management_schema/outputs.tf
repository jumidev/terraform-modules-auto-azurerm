output "schema_id" {
  value = azurerm_api_management_schema.this.schema_id
}

output "api_management_name" {
  value = azurerm_api_management_schema.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_schema.this.resource_group_name
}

output "type" {
  value = azurerm_api_management_schema.this.type
}

output "value" {
  value = azurerm_api_management_schema.this.value
}

output "description" {
  value = azurerm_api_management_schema.this.description
}

output "id" {
  description = "The ID of the API Management API Schema."
  value       = azurerm_api_management_schema.this.id
}

