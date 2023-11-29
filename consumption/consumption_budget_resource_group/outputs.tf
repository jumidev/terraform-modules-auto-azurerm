output "name" {
  value = azurerm_consumption_budget_resource_group.this.name
}

output "resource_group_id" {
  value = azurerm_consumption_budget_resource_group.this.resource_group_id
}

output "amount" {
  value = azurerm_consumption_budget_resource_group.this.amount
}

output "time_grain" {
  value = azurerm_consumption_budget_resource_group.this.time_grain
}

output "time_period" {
  value = azurerm_consumption_budget_resource_group.this.time_period
}

output "notification" {
  value = azurerm_consumption_budget_resource_group.this.notification
}

output "filter" {
  value = azurerm_consumption_budget_resource_group.this.filter
}

output "id" {
  description = "The ID of the Resource Group Consumption Budget."
  value       = azurerm_consumption_budget_resource_group.this.id
}

output "etag" {
  description = "The ETag of the Resource Group Consumption Budget"
  value       = azurerm_consumption_budget_resource_group.this.etag
}

