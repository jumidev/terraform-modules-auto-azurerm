output "name" {
  value = azurerm_container_registry.this.name
}

output "resource_group_name" {
  value = azurerm_container_registry.this.resource_group_name
}

output "location" {
  value = azurerm_container_registry.this.location
}

output "sku" {
  value = azurerm_container_registry.this.sku
}

output "admin_enabled" {
  value = azurerm_container_registry.this.admin_enabled
}

output "tags" {
  value = azurerm_container_registry.this.tags
}

output "georeplications" {
  value = azurerm_container_registry.this.georeplications
}

output "network_rule_set" {
  value = azurerm_container_registry.this.network_rule_set
}

output "public_network_access_enabled" {
  value = azurerm_container_registry.this.public_network_access_enabled
}

output "quarantine_policy_enabled" {
  value = azurerm_container_registry.this.quarantine_policy_enabled
}

output "retention_policy" {
  value = azurerm_container_registry.this.retention_policy
}

output "trust_policy" {
  value = azurerm_container_registry.this.trust_policy
}

output "zone_redundancy_enabled" {
  value = azurerm_container_registry.this.zone_redundancy_enabled
}

output "export_policy_enabled" {
  value = azurerm_container_registry.this.export_policy_enabled
}

output "identity" {
  value = azurerm_container_registry.this.identity
}

output "encryption" {
  value = azurerm_container_registry.this.encryption
}

output "anonymous_pull_enabled" {
  value = azurerm_container_registry.this.anonymous_pull_enabled
}

output "data_endpoint_enabled" {
  value = azurerm_container_registry.this.data_endpoint_enabled
}

output "network_rule_bypass_option" {
  value = azurerm_container_registry.this.network_rule_bypass_option
}

output "id" {
  description = "The ID of the Container Registry."
  value       = azurerm_container_registry.this.id
}

output "login_server" {
  description = "The URL that can be used to log into the container registry."
  value       = azurerm_container_registry.this.login_server
}

output "admin_username" {
  description = "The Username associated with the Container Registry Admin account - if the admin account is enabled."
  value       = azurerm_container_registry.this.admin_username
}

output "admin_password" {
  description = "The Password associated with the Container Registry Admin account - if the admin account is enabled."
  value       = azurerm_container_registry.this.admin_password
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_container_registry.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_container_registry.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity. -> You can access the Principal ID via 'azurerm_container_registry.example.identity.0.principal_id' and the Tenant ID via 'azurerm_container_registry.example.identity.0.tenant_id'"
  value       = azurerm_container_registry.this.tenant_id
}

