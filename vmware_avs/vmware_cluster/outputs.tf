output "name" {
  value = azurerm_vmware_cluster.this.name
}

output "vmware_cloud_id" {
  value = azurerm_vmware_cluster.this.vmware_cloud_id
}

output "cluster_node_count" {
  value = azurerm_vmware_cluster.this.cluster_node_count
}

output "sku_name" {
  value = azurerm_vmware_cluster.this.sku_name
}

output "id" {
  description = "The ID of the VMware Cluster."
  value       = azurerm_vmware_cluster.this.id
}

output "cluster_number" {
  description = "A number that identifies this VMware Cluster in its VMware Private Cloud."
  value       = azurerm_vmware_cluster.this.cluster_number
}

output "hosts" {
  description = "A list of host of the VMware Cluster."
  value       = azurerm_vmware_cluster.this.hosts
}

