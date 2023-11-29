output "media_services_account_name" {
  value = azurerm_media_content_key_policy.this.media_services_account_name
}

output "name" {
  value = azurerm_media_content_key_policy.this.name
}

output "policy_option" {
  value = azurerm_media_content_key_policy.this.policy_option
}

output "resource_group_name" {
  value = azurerm_media_content_key_policy.this.resource_group_name
}

output "description" {
  value = azurerm_media_content_key_policy.this.description
}

output "id" {
  description = "The ID of the Content Key Policy."
  value       = azurerm_media_content_key_policy.this.id
}

