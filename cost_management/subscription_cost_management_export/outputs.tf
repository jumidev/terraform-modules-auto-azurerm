output "name" {
  value = azurerm_subscription_cost_management_export.this.name
}

output "subscription_id" {
  value = azurerm_subscription_cost_management_export.this.subscription_id
}

output "recurrence_type" {
  value = azurerm_subscription_cost_management_export.this.recurrence_type
}

output "recurrence_period_start_date" {
  value = azurerm_subscription_cost_management_export.this.recurrence_period_start_date
}

output "recurrence_period_end_date" {
  value = azurerm_subscription_cost_management_export.this.recurrence_period_end_date
}

output "export_data_storage_location" {
  value = azurerm_subscription_cost_management_export.this.export_data_storage_location
}

output "export_data_options" {
  value = azurerm_subscription_cost_management_export.this.export_data_options
}

output "active" {
  value = azurerm_subscription_cost_management_export.this.active
}

output "id" {
  description = "The ID of the Cost Management Export for this Subscription."
  value       = azurerm_subscription_cost_management_export.this.id
}

