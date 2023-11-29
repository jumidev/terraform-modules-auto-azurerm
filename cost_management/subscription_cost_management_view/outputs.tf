output "accumulated" {
  value = azurerm_subscription_cost_management_view.this.accumulated
}

output "chart_type" {
  value = azurerm_subscription_cost_management_view.this.chart_type
}

output "dataset" {
  value = azurerm_subscription_cost_management_view.this.dataset
}

output "display_name" {
  value = azurerm_subscription_cost_management_view.this.display_name
}

output "name" {
  value = azurerm_subscription_cost_management_view.this.name
}

output "report_type" {
  value = azurerm_subscription_cost_management_view.this.report_type
}

output "subscription_id" {
  value = azurerm_subscription_cost_management_view.this.subscription_id
}

output "timeframe" {
  value = azurerm_subscription_cost_management_view.this.timeframe
}

output "kpi" {
  value = azurerm_subscription_cost_management_view.this.kpi
}

output "pivot" {
  value = azurerm_subscription_cost_management_view.this.pivot
}

output "id" {
  description = "The ID of the Cost Management View for a Subscription."
  value       = azurerm_subscription_cost_management_view.this.id
}

