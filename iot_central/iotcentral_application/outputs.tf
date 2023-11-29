output "name" {
  value = azurerm_iotcentral_application.this.name
}

output "resource_group_name" {
  value = azurerm_iotcentral_application.this.resource_group_name
}

output "location" {
  value = azurerm_iotcentral_application.this.location
}

output "sub_domain" {
  value = azurerm_iotcentral_application.this.sub_domain
}

output "display_name" {
  value = azurerm_iotcentral_application.this.display_name
}

output "identity" {
  value = azurerm_iotcentral_application.this.identity
}

output "public_network_access_enabled" {
  value = azurerm_iotcentral_application.this.public_network_access_enabled
}

output "sku" {
  value = azurerm_iotcentral_application.this.sku
}

output "template" {
  value = azurerm_iotcentral_application.this.template
}

output "tags" {
  value = azurerm_iotcentral_application.this.tags
}

output "id" {
  description = "The ID of the IoT Central Application."
  value       = azurerm_iotcentral_application.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_iotcentral_application.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_iotcentral_application.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_iotcentral_application.this.tenant_id
}

