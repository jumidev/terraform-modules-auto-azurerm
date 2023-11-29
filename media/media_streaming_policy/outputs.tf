output "media_services_account_name" {
  value = azurerm_media_streaming_policy.this.media_services_account_name
}

output "name" {
  value = azurerm_media_streaming_policy.this.name
}

output "resource_group_name" {
  value = azurerm_media_streaming_policy.this.resource_group_name
}

output "common_encryption_cbcs" {
  value = azurerm_media_streaming_policy.this.common_encryption_cbcs
}

output "common_encryption_cenc" {
  value = azurerm_media_streaming_policy.this.common_encryption_cenc
}

output "default_content_key_policy_name" {
  value = azurerm_media_streaming_policy.this.default_content_key_policy_name
}

output "envelope_encryption" {
  value = azurerm_media_streaming_policy.this.envelope_encryption
}

output "no_encryption_enabled_protocols" {
  value = azurerm_media_streaming_policy.this.no_encryption_enabled_protocols
}

output "id" {
  description = "The ID of the Streaming Policy."
  value       = azurerm_media_streaming_policy.this.id
}

