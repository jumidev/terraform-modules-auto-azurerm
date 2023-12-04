output "location" {
  value = azurerm_linux_web_app.this.location
}

output "name" {
  value = azurerm_linux_web_app.this.name
}

output "resource_group_name" {
  value = azurerm_linux_web_app.this.resource_group_name
}

output "service_plan_id" {
  value = azurerm_linux_web_app.this.service_plan_id
}

output "site_config" {
  value = azurerm_linux_web_app.this.site_config
}

output "app_settings" {
  value = azurerm_linux_web_app.this.app_settings
}

output "auth_settings" {
  value = azurerm_linux_web_app.this.auth_settings
}

output "auth_settings_v2" {
  value = azurerm_linux_web_app.this.auth_settings_v2
}

output "backup" {
  value = azurerm_linux_web_app.this.backup
}

output "client_affinity_enabled" {
  value = azurerm_linux_web_app.this.client_affinity_enabled
}

output "client_certificate_enabled" {
  value = azurerm_linux_web_app.this.client_certificate_enabled
}

output "client_certificate_mode" {
  value = azurerm_linux_web_app.this.client_certificate_mode
}

output "client_certificate_exclusion_paths" {
  value = azurerm_linux_web_app.this.client_certificate_exclusion_paths
}

output "connection_string" {
  value = azurerm_linux_web_app.this.connection_string
}

output "enabled" {
  value = azurerm_linux_web_app.this.enabled
}

output "ftp_publish_basic_authentication_enabled" {
  value = azurerm_linux_web_app.this.ftp_publish_basic_authentication_enabled
}

output "https_only" {
  value = azurerm_linux_web_app.this.https_only
}

output "public_network_access_enabled" {
  value = azurerm_linux_web_app.this.public_network_access_enabled
}

output "identity" {
  value = azurerm_linux_web_app.this.identity
}

output "key_vault_reference_identity_id" {
  value = azurerm_linux_web_app.this.key_vault_reference_identity_id
}

output "logs" {
  value = azurerm_linux_web_app.this.logs
}

output "storage_account" {
  value = azurerm_linux_web_app.this.storage_account
}

output "sticky_settings" {
  value = azurerm_linux_web_app.this.sticky_settings
}

output "virtual_network_subnet_id" {
  value = azurerm_linux_web_app.this.virtual_network_subnet_id
}

output "webdeploy_publish_basic_authentication_enabled" {
  value = azurerm_linux_web_app.this.webdeploy_publish_basic_authentication_enabled
}

output "zip_deploy_file" {
  value = azurerm_linux_web_app.this.zip_deploy_file
}

output "tags" {
  value = azurerm_linux_web_app.this.tags
}

output "id" {
  description = "The ID of the Linux Web App."
  value       = azurerm_linux_web_app.this.id
}

output "custom_domain_verification_id" {
  description = "The identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_linux_web_app.this.custom_domain_verification_id
}

output "hosting_environment_id" {
  description = "The ID of the App Service Environment used by App Service."
  value       = azurerm_linux_web_app.this.hosting_environment_id
}

output "default_hostname" {
  description = "The default hostname of the Linux Web App."
  value       = azurerm_linux_web_app.this.default_hostname
}

output "kind" {
  description = "The Kind value for this Linux Web App."
  value       = azurerm_linux_web_app.this.kind
}

output "outbound_ip_address_list" {
  description = "A list of outbound IP addresses - such as '['52.23.25.3', '52.143.43.12']'"
  value       = azurerm_linux_web_app.this.outbound_ip_address_list
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'."
  value       = azurerm_linux_web_app.this.outbound_ip_addresses
}

output "possible_outbound_ip_address_list" {
  description = "A list of possible outbound ip address."
  value       = azurerm_linux_web_app.this.possible_outbound_ip_address_list
}

output "possible_outbound_ip_addresses" {
  description = "A comma-separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_linux_web_app.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "A 'site_credential' block."
  value       = azurerm_linux_web_app.this.site_credential
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this App Service."
  value       = azurerm_linux_web_app.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_linux_web_app.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_linux_web_app.this.tenant_id
}

output "name" {
  description = "The Site Credentials Username used for publishing."
  value       = azurerm_linux_web_app.this.name
}

output "password" {
  description = "The Site Credentials Password used for publishing."
  value       = azurerm_linux_web_app.this.password
  sensitive   = true
}

