output "name" {
  value = azurerm_api_management_logger.this.name
}

output "resource_group_name" {
  value = azurerm_api_management_logger.this.resource_group_name
}

output "api_management_name" {
  value = azurerm_api_management_logger.this.api_management_name
}

output "application_insights" {
  value = azurerm_api_management_logger.this.application_insights
}

output "buffered" {
  value = azurerm_api_management_logger.this.buffered
}

output "description" {
  value = azurerm_api_management_logger.this.description
}

output "eventhub" {
  value = azurerm_api_management_logger.this.eventhub
}

output "resource_id" {
  value = azurerm_api_management_logger.this.resource_id
}

output "id" {
  description = "The ID of the API Management Logger."
  value       = azurerm_api_management_logger.this.id
}

