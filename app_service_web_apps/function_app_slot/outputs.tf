output "name" {
  value = azurerm_function_app_slot.this.name
}

output "resource_group_name" {
  value = azurerm_function_app_slot.this.resource_group_name
}

output "location" {
  value = azurerm_function_app_slot.this.location
}

output "app_service_plan_id" {
  value = azurerm_function_app_slot.this.app_service_plan_id
}

output "function_app_name" {
  value = azurerm_function_app_slot.this.function_app_name
}

output "storage_account_name" {
  value = azurerm_function_app_slot.this.storage_account_name
}

output "storage_account_access_key" {
  value     = azurerm_function_app_slot.this.storage_account_access_key
  sensitive = true
}

output "app_settings" {
  value = azurerm_function_app_slot.this.app_settings
}

output "auth_settings" {
  value = azurerm_function_app_slot.this.auth_settings
}

output "enable_builtin_logging" {
  value = azurerm_function_app_slot.this.enable_builtin_logging
}

output "connection_string" {
  value = azurerm_function_app_slot.this.connection_string
}

output "os_type" {
  value = azurerm_function_app_slot.this.os_type
}

output "enabled" {
  value = azurerm_function_app_slot.this.enabled
}

output "https_only" {
  value = azurerm_function_app_slot.this.https_only
}

output "version" {
  value = azurerm_function_app_slot.this.version
}

output "daily_memory_time_quota" {
  value = azurerm_function_app_slot.this.daily_memory_time_quota
}

output "site_config" {
  value = azurerm_function_app_slot.this.site_config
}

output "identity" {
  value = azurerm_function_app_slot.this.identity
}

output "tags" {
  value = azurerm_function_app_slot.this.tags
}

output "id" {
  description = "The ID of the Function App Slot"
  value       = azurerm_function_app_slot.this.id
}

output "default_hostname" {
  description = "The default hostname associated with the Function App - such as 'mysite.azurewebsites.net'"
  value       = azurerm_function_app_slot.this.default_hostname
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'"
  value       = azurerm_function_app_slot.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_function_app_slot.this.possible_outbound_ip_addresses
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this Function App Slot."
  value       = azurerm_function_app_slot.this.identity
}

output "site_credential" {
  description = "A 'site_credential' block, which contains the site-level credentials used to publish to this Function App Slot."
  value       = azurerm_function_app_slot.this.site_credential
}

output "kind" {
  description = "The Function App kind - such as 'functionapp,linux,container'"
  value       = azurerm_function_app_slot.this.kind
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_function_app_slot.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_function_app_slot.this.tenant_id
}

output "username" {
  description = "The username which can be used to publish to this App Service"
  value       = azurerm_function_app_slot.this.username
}

output "password" {
  description = "The password associated with the username, which can be used to publish to this App Service."
  value       = azurerm_function_app_slot.this.password
  sensitive   = true
}

