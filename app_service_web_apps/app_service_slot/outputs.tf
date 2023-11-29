output "name" {
  value = azurerm_app_service_slot.this.name
}

output "resource_group_name" {
  value = azurerm_app_service_slot.this.resource_group_name
}

output "location" {
  value = azurerm_app_service_slot.this.location
}

output "app_service_plan_id" {
  value = azurerm_app_service_slot.this.app_service_plan_id
}

output "app_service_name" {
  value = azurerm_app_service_slot.this.app_service_name
}

output "app_settings" {
  value = azurerm_app_service_slot.this.app_settings
}

output "auth_settings" {
  value = azurerm_app_service_slot.this.auth_settings
}

output "connection_string" {
  value = azurerm_app_service_slot.this.connection_string
}

output "client_affinity_enabled" {
  value = azurerm_app_service_slot.this.client_affinity_enabled
}

output "enabled" {
  value = azurerm_app_service_slot.this.enabled
}

output "https_only" {
  value = azurerm_app_service_slot.this.https_only
}

output "site_config" {
  value = azurerm_app_service_slot.this.site_config
}

output "storage_account" {
  value = azurerm_app_service_slot.this.storage_account
}

output "logs" {
  value = azurerm_app_service_slot.this.logs
}

output "identity" {
  value = azurerm_app_service_slot.this.identity
}

output "key_vault_reference_identity_id" {
  value = azurerm_app_service_slot.this.key_vault_reference_identity_id
}

output "tags" {
  value = azurerm_app_service_slot.this.tags
}

output "id" {
  description = "The ID of the App Service Slot."
  value       = azurerm_app_service_slot.this.id
}

output "default_site_hostname" {
  description = "The Default Hostname associated with the App Service Slot - such as 'mysite.azurewebsites.net'"
  value       = azurerm_app_service_slot.this.default_site_hostname
}

output "site_credential" {
  description = "A 'site_credential' block, which contains the site-level credentials used to publish to this App Service slot."
  value       = azurerm_app_service_slot.this.site_credential
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this App Service slot."
  value       = azurerm_app_service_slot.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service slot."
  value       = azurerm_app_service_slot.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service slot."
  value       = azurerm_app_service_slot.this.tenant_id
}

output "username" {
  description = "The username which can be used to publish to this App Service"
  value       = azurerm_app_service_slot.this.username
}

output "password" {
  description = "The password associated with the username, which can be used to publish to this App Service."
  value       = azurerm_app_service_slot.this.password
}

