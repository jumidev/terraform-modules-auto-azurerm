output "name" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.name
}

output "cluster_name" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.cluster_name
}

output "resource_group_name" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.resource_group_name
}

output "private_link_resource_id" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.private_link_resource_id
}

output "group_id" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.group_id
}

output "private_link_resource_region" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.private_link_resource_region
}

output "request_message" {
  value = azurerm_kusto_cluster_managed_private_endpoint.this.request_message
}

