output "storage_account_id" {
  value = azurerm_storage_account_network_rules.this.storage_account_id
}

output "default_action" {
  value = azurerm_storage_account_network_rules.this.default_action
}

output "bypass" {
  value = azurerm_storage_account_network_rules.this.bypass
}

output "ip_rules" {
  value = azurerm_storage_account_network_rules.this.ip_rules
}

output "virtual_network_subnet_ids" {
  value = azurerm_storage_account_network_rules.this.virtual_network_subnet_ids
}

output "private_link_access" {
  value = azurerm_storage_account_network_rules.this.private_link_access
}

output "endpoint_tenant_id" {
  description = "The tenant id of the resource of the resource access rule to be granted access. Defaults to the current tenant id. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_account_network_rules.this.endpoint_tenant_id
}

output "id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account_network_rules.this.id
}

