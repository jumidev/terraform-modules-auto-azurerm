output "configuration_store_id" {
  value = azurerm_app_configuration_key.this.configuration_store_id
}

output "key" {
  value = azurerm_app_configuration_key.this.key
}

output "content_type" {
  value = azurerm_app_configuration_key.this.content_type
}

output "label" {
  value = azurerm_app_configuration_key.this.label
}

output "value" {
  value = azurerm_app_configuration_key.this.value
}

output "locked" {
  value = azurerm_app_configuration_key.this.locked
}

output "type" {
  value = azurerm_app_configuration_key.this.type
}

output "vault_key_reference" {
  value = azurerm_app_configuration_key.this.vault_key_reference
}

output "tags" {
  value = azurerm_app_configuration_key.this.tags
}

output "id" {
  description = "The App Configuration Key ID."
  value       = azurerm_app_configuration_key.this.id
}

output "etag" {
  description = "The ETag of the key."
  value       = azurerm_app_configuration_key.this.etag
}

