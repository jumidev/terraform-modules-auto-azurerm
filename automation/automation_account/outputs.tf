output "name" {
  value = azurerm_automation_account.this.name
}

output "resource_group_name" {
  value = azurerm_automation_account.this.resource_group_name
}

output "location" {
  value = azurerm_automation_account.this.location
}

output "sku_name" {
  value = azurerm_automation_account.this.sku_name
}

output "local_authentication_enabled" {
  value = azurerm_automation_account.this.local_authentication_enabled
}

output "public_network_access_enabled" {
  value = azurerm_automation_account.this.public_network_access_enabled
}

output "id" {
  description = "The ID of the Automation Account."
  value       = azurerm_automation_account.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_automation_account.this.identity
}

output "dsc_server_endpoint" {
  description = "The DSC Server Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.this.dsc_server_endpoint
}

output "dsc_primary_access_key" {
  description = "The Primary Access Key for the DSC Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.this.dsc_primary_access_key
  sensitive   = true
}

output "dsc_secondary_access_key" {
  description = "The Secondary Access Key for the DSC Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.this.dsc_secondary_access_key
  sensitive   = true
}

output "hybrid_service_url" {
  description = "The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account."
  value       = azurerm_automation_account.this.hybrid_service_url
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_automation_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_automation_account.this.tenant_id
}

