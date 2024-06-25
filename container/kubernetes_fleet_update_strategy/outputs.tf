output "name" {
  value = azurerm_kubernetes_fleet_update_strategy.this.name
}

output "kubernetes_fleet_manager_id" {
  value = azurerm_kubernetes_fleet_update_strategy.this.kubernetes_fleet_manager_id
}

output "stage" {
  value = azurerm_kubernetes_fleet_update_strategy.this.stage
}

output "id" {
  description = "The ID of the Kubernetes Fleet Update Strategy."
  value       = azurerm_kubernetes_fleet_update_strategy.this.id
}

