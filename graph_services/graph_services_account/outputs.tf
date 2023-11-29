output "name" {
  value = azurerm_graph_services_account.this.name
}

output "resource_group_name" {
  value = azurerm_graph_services_account.this.resource_group_name
}

output "application_id" {
  value = azurerm_graph_services_account.this.application_id
}

output "tags" {
  value = azurerm_graph_services_account.this.tags
}

output "id" {
  description = "The ID of the Account."
  value       = azurerm_graph_services_account.this.id
}

output "billing_plan_id" {
  description = "Billing Plan Id."
  value       = azurerm_graph_services_account.this.billing_plan_id
}

