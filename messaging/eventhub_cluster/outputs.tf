output "name" {
  value = azurerm_eventhub_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_eventhub_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_eventhub_cluster.this.location
}

output "sku_name" {
  value = azurerm_eventhub_cluster.this.sku_name
}

output "tags" {
  value = azurerm_eventhub_cluster.this.tags
}

output "id" {
  description = "The EventHub Cluster ID."
  value       = azurerm_eventhub_cluster.this.id
}

