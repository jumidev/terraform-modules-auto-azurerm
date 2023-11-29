output "subscription_name" {
  value = azurerm_subscription.this.subscription_name
}

output "alias" {
  value = azurerm_subscription.this.alias
}

output "billing_scope_id" {
  value = azurerm_subscription.this.billing_scope_id
}

output "subscription_id" {
  value = azurerm_subscription.this.subscription_id
}

output "workload" {
  value = azurerm_subscription.this.workload
}

output "tags" {
  value = azurerm_subscription.this.tags
}

output "id" {
  description = "The Resource ID of the Alias."
  value       = azurerm_subscription.this.id
}

output "tenant_id" {
  description = "The ID of the Tenant to which the subscription belongs."
  value       = azurerm_subscription.this.tenant_id
}

