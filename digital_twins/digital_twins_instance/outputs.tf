output "name" {
  value = azurerm_digital_twins_instance.this.name
}

output "resource_group_name" {
  value = azurerm_digital_twins_instance.this.resource_group_name
}

output "location" {
  value = azurerm_digital_twins_instance.this.location
}

output "identity" {
  value = azurerm_digital_twins_instance.this.identity
}

output "tags" {
  value = azurerm_digital_twins_instance.this.tags
}

output "id" {
  description = "The ID of the Digital Twins instance."
  value       = azurerm_digital_twins_instance.this.id
}

output "host_name" {
  description = "The API endpoint to work with this Digital Twins instance."
  value       = azurerm_digital_twins_instance.this.host_name
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_digital_twins_instance.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_digital_twins_instance.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_digital_twins_instance.this.tenant_id
}

