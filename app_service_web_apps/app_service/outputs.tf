output "name" {
  value = azurerm_app_service.this.name
}

output "resource_group_name" {
  value = azurerm_app_service.this.resource_group_name
}

output "location" {
  value = azurerm_app_service.this.location
}

output "app_service_plan_id" {
  value = azurerm_app_service.this.app_service_plan_id
}

output "app_settings" {
  value = azurerm_app_service.this.app_settings
}

output "auth_settings" {
  value = azurerm_app_service.this.auth_settings
}

output "backup" {
  value = azurerm_app_service.this.backup
}

output "connection_string" {
  value = azurerm_app_service.this.connection_string
}

output "client_affinity_enabled" {
  value = azurerm_app_service.this.client_affinity_enabled
}

output "client_cert_enabled" {
  value = azurerm_app_service.this.client_cert_enabled
}

output "client_cert_mode" {
  value = azurerm_app_service.this.client_cert_mode
}

output "enabled" {
  value = azurerm_app_service.this.enabled
}

output "identity" {
  value = azurerm_app_service.this.identity
}

output "https_only" {
  value = azurerm_app_service.this.https_only
}

output "key_vault_reference_identity_id" {
  value = azurerm_app_service.this.key_vault_reference_identity_id
}

output "logs" {
  value = azurerm_app_service.this.logs
}

output "storage_account" {
  value = azurerm_app_service.this.storage_account
}

output "site_config" {
  value = azurerm_app_service.this.site_config
}

output "source_control" {
  value = azurerm_app_service.this.source_control
}

output "tags" {
  value = azurerm_app_service.this.tags
}

output "id" {
  description = "The ID of the App Service."
  value       = azurerm_app_service.this.id
}

output "custom_domain_verification_id" {
  description = "An identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_app_service.this.custom_domain_verification_id
}

output "default_site_hostname" {
  description = "The Default Hostname associated with the App Service - such as 'mysite.azurewebsites.net'"
  value       = azurerm_app_service.this.default_site_hostname
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'"
  value       = azurerm_app_service.this.outbound_ip_addresses
}

output "outbound_ip_address_list" {
  description = "A list of outbound IP addresses - such as '['52.23.25.3', '52.143.43.12']'"
  value       = azurerm_app_service.this.outbound_ip_address_list
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_app_service.this.possible_outbound_ip_addresses
}

output "possible_outbound_ip_address_list" {
  description = "A list of outbound IP addresses - such as '['52.23.25.3', '52.143.43.12', '52.143.43.17']' - not all of which are necessarily in use. Superset of 'outbound_ip_address_list'."
  value       = azurerm_app_service.this.possible_outbound_ip_address_list
}

output "source_control" {
  description = "A 'source_control' block, which contains the Source Control information when 'scm_type' is set to 'LocalGit'."
  value       = azurerm_app_service.this.source_control
}

output "site_credential" {
  description = "A 'site_credential' block, which contains the site-level credentials used to publish to this App Service."
  value       = azurerm_app_service.this.site_credential
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this App Service."
  value       = azurerm_app_service.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_app_service.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_app_service.this.tenant_id
}

output "username" {
  description = "The username which can be used to publish to this App Service"
  value       = azurerm_app_service.this.username
}

output "password" {
  description = "The password associated with the username, which can be used to publish to this App Service."
  value       = azurerm_app_service.this.password
  sensitive   = true
}

output "repo_url" {
  description = "URL of the Git repository for this App Service."
  value       = azurerm_app_service.this.repo_url
}

output "branch" {
  description = "Branch name of the Git repository for this App Service."
  value       = azurerm_app_service.this.branch
}

