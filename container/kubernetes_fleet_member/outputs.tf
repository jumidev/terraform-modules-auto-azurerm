output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_fleet_member.this.kubernetes_cluster_id
}

output "kubernetes_fleet_id" {
  value = azurerm_kubernetes_fleet_member.this.kubernetes_fleet_id
}

output "name" {
  value = azurerm_kubernetes_fleet_member.this.name
}

output "group" {
  value = azurerm_kubernetes_fleet_member.this.group
}

output "id" {
  description = "The ID of the Kubernetes Fleet Member."
  value       = azurerm_kubernetes_fleet_member.this.id
}

