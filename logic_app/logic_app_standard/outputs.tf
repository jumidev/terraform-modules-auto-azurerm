output "name" {
  value = azurerm_logic_app_standard.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_standard.this.resource_group_name
}

output "location" {
  value = azurerm_logic_app_standard.this.location
}

output "app_service_plan_id" {
  value = azurerm_logic_app_standard.this.app_service_plan_id
}

output "app_settings" {
  value = azurerm_logic_app_standard.this.app_settings
}

output "use_extension_bundle" {
  value = azurerm_logic_app_standard.this.use_extension_bundle
}

output "bundle_version" {
  value = azurerm_logic_app_standard.this.bundle_version
}

output "connection_string" {
  value = azurerm_logic_app_standard.this.connection_string
}

output "client_affinity_enabled" {
  value = azurerm_logic_app_standard.this.client_affinity_enabled
}

output "client_certificate_mode" {
  value = azurerm_logic_app_standard.this.client_certificate_mode
}

output "enabled" {
  value = azurerm_logic_app_standard.this.enabled
}

output "https_only" {
  value = azurerm_logic_app_standard.this.https_only
}

output "identity" {
  value = azurerm_logic_app_standard.this.identity
}

output "site_config" {
  value = azurerm_logic_app_standard.this.site_config
}

output "storage_account_name" {
  value = azurerm_logic_app_standard.this.storage_account_name
}

output "storage_account_access_key" {
  value     = azurerm_logic_app_standard.this.storage_account_access_key
  sensitive = true
}

output "storage_account_share_name" {
  value = azurerm_logic_app_standard.this.storage_account_share_name
}

output "version" {
  value = azurerm_logic_app_standard.this.version
}

output "virtual_network_subnet_id" {
  value = azurerm_logic_app_standard.this.virtual_network_subnet_id
}

output "tags" {
  value = azurerm_logic_app_standard.this.tags
}

output "id" {
  description = "The ID of the Logic App"
  value       = azurerm_logic_app_standard.this.id
}

output "custom_domain_verification_id" {
  description = "An identifier used by App Service to perform domain ownership verification via DNS TXT record."
  value       = azurerm_logic_app_standard.this.custom_domain_verification_id
}

output "default_hostname" {
  description = "The default hostname associated with the Logic App - such as 'mysite.azurewebsites.net'"
  value       = azurerm_logic_app_standard.this.default_hostname
}

output "outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12'"
  value       = azurerm_logic_app_standard.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "A comma separated list of outbound IP addresses - such as '52.23.25.3,52.143.43.12,52.143.43.17' - not all of which are necessarily in use. Superset of 'outbound_ip_addresses'."
  value       = azurerm_logic_app_standard.this.possible_outbound_ip_addresses
}

output "identity" {
  description = "An 'identity' block, which contains the Managed Service Identity information for this App Service."
  value       = azurerm_logic_app_standard.this.identity
}

output "site_credential" {
  description = "A 'site_credential' block, which contains the site-level credentials used to publish to this App Service."
  value       = azurerm_logic_app_standard.this.site_credential
}

output "kind" {
  description = "The Logic App kind - will be 'functionapp,workflowapp'"
  value       = azurerm_logic_app_standard.this.kind
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_logic_app_standard.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service."
  value       = azurerm_logic_app_standard.this.tenant_id
}

output "username" {
  description = "The username which can be used to publish to this App Service"
  value       = azurerm_logic_app_standard.this.username
}

output "password" {
  description = "The password associated with the username, which can be used to publish to this App Service."
  value       = azurerm_logic_app_standard.this.password
  sensitive   = true
}

output "auto_swap_slot_name" {
  description = "The Auto-swap slot name."
  value       = azurerm_logic_app_standard.this.auto_swap_slot_name
}

