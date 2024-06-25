output "name" {
  value = azurerm_kubernetes_fleet_update_run.this.name
}

output "kubernetes_fleet_manager_id" {
  value = azurerm_kubernetes_fleet_update_run.this.kubernetes_fleet_manager_id
}

output "managed_cluster_update" {
  value = azurerm_kubernetes_fleet_update_run.this.managed_cluster_update
}

output "fleet_update_strategy_id" {
  value = azurerm_kubernetes_fleet_update_run.this.fleet_update_strategy_id
}

output "stage" {
  value = azurerm_kubernetes_fleet_update_run.this.stage
}

output "id" {
  description = "The ID of the Kubernetes Fleet Update Run."
  value       = azurerm_kubernetes_fleet_update_run.this.id
}

