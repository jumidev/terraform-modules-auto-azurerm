output "name" {
  value = azurerm_windows_web_app_slot.this.name
}

output "app_service_id" {
  value = azurerm_windows_web_app_slot.this.app_service_id
}

output "site_config" {
  value = azurerm_windows_web_app_slot.this.site_config
}

output "app_settings" {
  value = azurerm_windows_web_app_slot.this.app_settings
}

output "auth_settings" {
  value = azurerm_windows_web_app_slot.this.auth_settings
}

output "auth_settings_v2" {
  value = azurerm_windows_web_app_slot.this.auth_settings_v2
}

output "backup" {
  value = azurerm_windows_web_app_slot.this.backup
}

output "client_affinity_enabled" {
  value = azurerm_windows_web_app_slot.this.client_affinity_enabled
}

output "client_certificate_enabled" {
  value = azurerm_windows_web_app_slot.this.client_certificate_enabled
}

output "client_certificate_mode" {
  value = azurerm_windows_web_app_slot.this.client_certificate_mode
}

output "client_certificate_exclusion_paths" {
  value = azurerm_windows_web_app_slot.this.client_certificate_exclusion_paths
}

output "connection_string" {
  value = azurerm_windows_web_app_slot.this.connection_string
}

output "enabled" {
  value = azurerm_windows_web_app_slot.this.enabled
}

output "ftp_publish_basic_authentication_enabled" {
  value = azurerm_windows_web_app_slot.this.ftp_publish_basic_authentication_enabled
}

output "https_only" {
  value = azurerm_windows_web_app_slot.this.https_only
}

output "public_network_access_enabled" {
  value = azurerm_windows_web_app_slot.this.public_network_access_enabled
}

output "identity" {
  value = azurerm_windows_web_app_slot.this.identity
}

output "key_vault_reference_identity_id" {
  value = azurerm_windows_web_app_slot.this.key_vault_reference_identity_id
}

output "logs" {
  value = azurerm_windows_web_app_slot.this.logs
}

output "service_plan_id" {
  value = azurerm_windows_web_app_slot.this.service_plan_id
}

output "storage_account" {
  value = azurerm_windows_web_app_slot.this.storage_account
}

output "tags" {
  value = azurerm_windows_web_app_slot.this.tags
}

output "virtual_network_subnet_id" {
  value = azurerm_windows_web_app_slot.this.virtual_network_subnet_id
}

output "webdeploy_publish_basic_authentication_enabled" {
  value = azurerm_windows_web_app_slot.this.webdeploy_publish_basic_authentication_enabled
}

output "zip_deploy_file" {
  value = azurerm_windows_web_app_slot.this.zip_deploy_file
}

output "id" {
  description = "The ID of the Windows Web App Slot."
  value       = azurerm_windows_web_app_slot.this.id
}

output "custom_domain_verification_id" {
  description = "The identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_windows_web_app_slot.this.custom_domain_verification_id
}

output "hosting_environment_id" {
  description = "The ID of the App Service Environment used by App Service Slot."
  value       = azurerm_windows_web_app_slot.this.hosting_environment_id
}

output "default_hostname" {
  description = "The default hostname of the Windows Web App Slot."
  value       = azurerm_windows_web_app_slot.this.default_hostname
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_windows_web_app_slot.this.identity
}

output "kind" {
  description = "The Kind value for this Windows Web App Slot."
  value       = azurerm_windows_web_app_slot.this.kind
}

output "outbound_ip_address_list" {
  description = "A list of outbound IP addresses - such as '['52.23.25.3', '52.143.43.12']'"
  value       = azurerm_windows_web_app_slot.this.outbound_ip_address_list
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'."
  value       = azurerm_windows_web_app_slot.this.outbound_ip_addresses
}

output "possible_outbound_ip_address_list" {
  description = "A list of possible outbound ip address."
  value       = azurerm_windows_web_app_slot.this.possible_outbound_ip_address_list
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_windows_web_app_slot.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "A 'site_credential' block."
  value       = azurerm_windows_web_app_slot.this.site_credential
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_windows_web_app_slot.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_windows_web_app_slot.this.tenant_id
}

output "name" {
  description = "The Site Credentials Username used for publishing."
  value       = azurerm_windows_web_app_slot.this.name
}

output "password" {
  description = "The Site Credentials Password used for publishing."
  value       = azurerm_windows_web_app_slot.this.password
}

