output "tier" {
  value = azurerm_security_center_subscription_pricing.this.tier
}

output "resource_type" {
  value = azurerm_security_center_subscription_pricing.this.resource_type
}

output "subplan" {
  value = azurerm_security_center_subscription_pricing.this.subplan
}

output "extension" {
  value = azurerm_security_center_subscription_pricing.this.extension
}

output "id" {
  description = "The subscription pricing ID."
  value       = azurerm_security_center_subscription_pricing.this.id
}

