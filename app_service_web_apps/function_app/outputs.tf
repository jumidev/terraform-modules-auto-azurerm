output "name" {
  value = azurerm_function_app.this.name
}

output "resource_group_name" {
  value = azurerm_function_app.this.resource_group_name
}

output "location" {
  value = azurerm_function_app.this.location
}

output "app_service_plan_id" {
  value = azurerm_function_app.this.app_service_plan_id
}

output "app_settings" {
  value = azurerm_function_app.this.app_settings
}

output "auth_settings" {
  value = azurerm_function_app.this.auth_settings
}

output "connection_string" {
  value = azurerm_function_app.this.connection_string
}

output "client_cert_mode" {
  value = azurerm_function_app.this.client_cert_mode
}

output "daily_memory_time_quota" {
  value = azurerm_function_app.this.daily_memory_time_quota
}

output "enabled" {
  value = azurerm_function_app.this.enabled
}

output "enable_builtin_logging" {
  value = azurerm_function_app.this.enable_builtin_logging
}

output "https_only" {
  value = azurerm_function_app.this.https_only
}

output "identity" {
  value = azurerm_function_app.this.identity
}

output "key_vault_reference_identity_id" {
  value = azurerm_function_app.this.key_vault_reference_identity_id
}

output "os_type" {
  value = azurerm_function_app.this.os_type
}

output "site_config" {
  value = azurerm_function_app.this.site_config
}

output "source_control" {
  value = azurerm_function_app.this.source_control
}

output "storage_account_name" {
  value = azurerm_function_app.this.storage_account_name
}

output "storage_account_access_key" {
  value     = azurerm_function_app.this.storage_account_access_key
  sensitive = true
}

output "version" {
  value = azurerm_function_app.this.version
}

output "tags" {
  value = azurerm_function_app.this.tags
}

output "id" {
  description = "The ID of the Function App"
  value       = azurerm_function_app.this.id
}

output "custom_domain_verification_id" {
  description = "An identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_function_app.this.custom_domain_verification_id
}

output "default_hostname" {
  description = "The default hostname associated with the Function App - such as 'mysite.azurewebsites.net'"
  value       = azurerm_function_app.this.default_hostname
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'"
  value       = azurerm_function_app.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_function_app.this.possible_outbound_ip_addresses
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this App Service."
  value       = azurerm_function_app.this.identity
}

output "site_credential" {
  description = "A 'site_credential' block, which contains the site-level credentials used to publish to this App Service."
  value       = azurerm_function_app.this.site_credential
}

output "kind" {
  description = "The Function App kind - such as 'functionapp,linux,container'"
  value       = azurerm_function_app.this.kind
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_function_app.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_function_app.this.tenant_id
}

output "username" {
  description = "The username which can be used to publish to this App Service"
  value       = azurerm_function_app.this.username
}

output "password" {
  description = "The password associated with the username, which can be used to publish to this App Service."
  value       = azurerm_function_app.this.password
}

