output "name" {
  value = azurerm_container_registry_webhook.this.name
}

output "resource_group_name" {
  value = azurerm_container_registry_webhook.this.resource_group_name
}

output "registry_name" {
  value = azurerm_container_registry_webhook.this.registry_name
}

output "location" {
  value = azurerm_container_registry_webhook.this.location
}

output "service_uri" {
  value = azurerm_container_registry_webhook.this.service_uri
}

output "actions" {
  value = azurerm_container_registry_webhook.this.actions
}

output "status" {
  value = azurerm_container_registry_webhook.this.status
}

output "scope" {
  value = azurerm_container_registry_webhook.this.scope
}

output "custom_headers" {
  value = azurerm_container_registry_webhook.this.custom_headers
}

output "tags" {
  value = azurerm_container_registry_webhook.this.tags
}

output "id" {
  description = "The ID of the Container Registry Webhook."
  value       = azurerm_container_registry_webhook.this.id
}

