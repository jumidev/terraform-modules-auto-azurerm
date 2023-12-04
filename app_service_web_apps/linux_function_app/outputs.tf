output "location" {
  value = azurerm_linux_function_app.this.location
}

output "name" {
  value = azurerm_linux_function_app.this.name
}

output "resource_group_name" {
  value = azurerm_linux_function_app.this.resource_group_name
}

output "service_plan_id" {
  value = azurerm_linux_function_app.this.service_plan_id
}

output "site_config" {
  value = azurerm_linux_function_app.this.site_config
}

output "app_settings" {
  value = azurerm_linux_function_app.this.app_settings
}

output "auth_settings" {
  value = azurerm_linux_function_app.this.auth_settings
}

output "auth_settings_v2" {
  value = azurerm_linux_function_app.this.auth_settings_v2
}

output "backup" {
  value = azurerm_linux_function_app.this.backup
}

output "builtin_logging_enabled" {
  value = azurerm_linux_function_app.this.builtin_logging_enabled
}

output "client_certificate_enabled" {
  value = azurerm_linux_function_app.this.client_certificate_enabled
}

output "client_certificate_mode" {
  value = azurerm_linux_function_app.this.client_certificate_mode
}

output "client_certificate_exclusion_paths" {
  value = azurerm_linux_function_app.this.client_certificate_exclusion_paths
}

output "connection_string" {
  value = azurerm_linux_function_app.this.connection_string
}

output "daily_memory_time_quota" {
  value = azurerm_linux_function_app.this.daily_memory_time_quota
}

output "enabled" {
  value = azurerm_linux_function_app.this.enabled
}

output "content_share_force_disabled" {
  value = azurerm_linux_function_app.this.content_share_force_disabled
}

output "functions_extension_version" {
  value = azurerm_linux_function_app.this.functions_extension_version
}

output "ftp_publish_basic_authentication_enabled" {
  value = azurerm_linux_function_app.this.ftp_publish_basic_authentication_enabled
}

output "https_only" {
  value = azurerm_linux_function_app.this.https_only
}

output "public_network_access_enabled" {
  value = azurerm_linux_function_app.this.public_network_access_enabled
}

output "identity" {
  value = azurerm_linux_function_app.this.identity
}

output "key_vault_reference_identity_id" {
  value = azurerm_linux_function_app.this.key_vault_reference_identity_id
}

output "storage_account" {
  value = azurerm_linux_function_app.this.storage_account
}

output "sticky_settings" {
  value = azurerm_linux_function_app.this.sticky_settings
}

output "storage_account_access_key" {
  value     = azurerm_linux_function_app.this.storage_account_access_key
  sensitive = true
}

output "storage_account_name" {
  value = azurerm_linux_function_app.this.storage_account_name
}

output "storage_uses_managed_identity" {
  value = azurerm_linux_function_app.this.storage_uses_managed_identity
}

output "storage_key_vault_secret_id" {
  value     = azurerm_linux_function_app.this.storage_key_vault_secret_id
  sensitive = true
}

output "tags" {
  value = azurerm_linux_function_app.this.tags
}

output "virtual_network_subnet_id" {
  value = azurerm_linux_function_app.this.virtual_network_subnet_id
}

output "webdeploy_publish_basic_authentication_enabled" {
  value = azurerm_linux_function_app.this.webdeploy_publish_basic_authentication_enabled
}

output "zip_deploy_file" {
  value = azurerm_linux_function_app.this.zip_deploy_file
}

output "id" {
  description = "The ID of the Linux Function App."
  value       = azurerm_linux_function_app.this.id
}

output "custom_domain_verification_id" {
  description = "The identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_linux_function_app.this.custom_domain_verification_id
}

output "default_hostname" {
  description = "The default hostname of the Linux Function App."
  value       = azurerm_linux_function_app.this.default_hostname
}

output "hosting_environment_id" {
  description = "The ID of the App Service Environment used by Function App."
  value       = azurerm_linux_function_app.this.hosting_environment_id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_linux_function_app.this.identity
}

output "kind" {
  description = "The Kind value for this Linux Function App."
  value       = azurerm_linux_function_app.this.kind
}

output "outbound_ip_address_list" {
  description = "A list of outbound IP addresses. For example '['52.23.25.3', '52.143.43.12']'"
  value       = azurerm_linux_function_app.this.outbound_ip_address_list
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses as a string. For example '52.23.25.3,52.143.43.12'."
  value       = azurerm_linux_function_app.this.outbound_ip_addresses
}

output "possible_outbound_ip_address_list" {
  description = "A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of 'outbound_ip_address_list'. For example '['52.23.25.3', '52.143.43.12']'."
  value       = azurerm_linux_function_app.this.possible_outbound_ip_address_list
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of possible outbound IP addresses as a string. For example '52.23.25.3,52.143.43.12,52.143.43.17'. This is a superset of 'outbound_ip_addresses'."
  value       = azurerm_linux_function_app.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "A 'site_credential' block."
  value       = azurerm_linux_function_app.this.site_credential
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_linux_function_app.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_linux_function_app.this.tenant_id
}

output "name" {
  description = "The Site Credentials Username used for publishing."
  value       = azurerm_linux_function_app.this.name
}

output "password" {
  description = "The Site Credentials Password used for publishing."
  value       = azurerm_linux_function_app.this.password
  sensitive   = true
}

