output "name" {
  value = azurerm_kubernetes_cluster_node_pool.this.name
}

output "kubernetes_cluster_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.kubernetes_cluster_id
}

output "vm_size" {
  value = azurerm_kubernetes_cluster_node_pool.this.vm_size
}

output "capacity_reservation_group_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.capacity_reservation_group_id
}

output "custom_ca_trust_enabled" {
  value = azurerm_kubernetes_cluster_node_pool.this.custom_ca_trust_enabled
}

output "enable_auto_scaling" {
  value = azurerm_kubernetes_cluster_node_pool.this.enable_auto_scaling
}

output "enable_host_encryption" {
  value = azurerm_kubernetes_cluster_node_pool.this.enable_host_encryption
}

output "enable_node_public_ip" {
  value = azurerm_kubernetes_cluster_node_pool.this.enable_node_public_ip
}

output "eviction_policy" {
  value = azurerm_kubernetes_cluster_node_pool.this.eviction_policy
}

output "host_group_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.host_group_id
}

output "kubelet_config" {
  value = azurerm_kubernetes_cluster_node_pool.this.kubelet_config
}

output "linux_os_config" {
  value = azurerm_kubernetes_cluster_node_pool.this.linux_os_config
}

output "fips_enabled" {
  value = azurerm_kubernetes_cluster_node_pool.this.fips_enabled
}

output "gpu_instance" {
  value = azurerm_kubernetes_cluster_node_pool.this.gpu_instance
}

output "kubelet_disk_type" {
  value = azurerm_kubernetes_cluster_node_pool.this.kubelet_disk_type
}

output "max_pods" {
  value = azurerm_kubernetes_cluster_node_pool.this.max_pods
}

output "message_of_the_day" {
  value = azurerm_kubernetes_cluster_node_pool.this.message_of_the_day
}

output "mode" {
  value = azurerm_kubernetes_cluster_node_pool.this.mode
}

output "node_network_profile" {
  value = azurerm_kubernetes_cluster_node_pool.this.node_network_profile
}

output "node_labels" {
  value = azurerm_kubernetes_cluster_node_pool.this.node_labels
}

output "node_public_ip_prefix_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.node_public_ip_prefix_id
}

output "node_taints" {
  value = azurerm_kubernetes_cluster_node_pool.this.node_taints
}

output "orchestrator_version" {
  value = azurerm_kubernetes_cluster_node_pool.this.orchestrator_version
}

output "os_disk_size_gb" {
  value = azurerm_kubernetes_cluster_node_pool.this.os_disk_size_gb
}

output "os_disk_type" {
  value = azurerm_kubernetes_cluster_node_pool.this.os_disk_type
}

output "pod_subnet_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.pod_subnet_id
}

output "os_sku" {
  value = azurerm_kubernetes_cluster_node_pool.this.os_sku
}

output "os_type" {
  value = azurerm_kubernetes_cluster_node_pool.this.os_type
}

output "priority" {
  value = azurerm_kubernetes_cluster_node_pool.this.priority
}

output "proximity_placement_group_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.proximity_placement_group_id
}

output "spot_max_price" {
  value = azurerm_kubernetes_cluster_node_pool.this.spot_max_price
}

output "snapshot_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.snapshot_id
}

output "tags" {
  value = azurerm_kubernetes_cluster_node_pool.this.tags
}

output "scale_down_mode" {
  value = azurerm_kubernetes_cluster_node_pool.this.scale_down_mode
}

output "ultra_ssd_enabled" {
  value = azurerm_kubernetes_cluster_node_pool.this.ultra_ssd_enabled
}

output "upgrade_settings" {
  value = azurerm_kubernetes_cluster_node_pool.this.upgrade_settings
}

output "vnet_subnet_id" {
  value = azurerm_kubernetes_cluster_node_pool.this.vnet_subnet_id
}

output "windows_profile" {
  value = azurerm_kubernetes_cluster_node_pool.this.windows_profile
}

output "workload_runtime" {
  value = azurerm_kubernetes_cluster_node_pool.this.workload_runtime
}

output "zones" {
  value = azurerm_kubernetes_cluster_node_pool.this.zones
}

output "max_count" {
  value = azurerm_kubernetes_cluster_node_pool.this.max_count
}

output "min_count" {
  value = azurerm_kubernetes_cluster_node_pool.this.min_count
}

output "node_count" {
  value = azurerm_kubernetes_cluster_node_pool.this.node_count
}

output "outbound_nat_enabled" {
  description = "Should the Windows nodes in this Node Pool have outbound NAT enabled? Defaults to 'true'. Changing this forces a new resource to be created. -> **Note:** If a percentage is provided, the number of surge nodes is calculated from the current node count on the cluster. Node surge can allow a cluster to have more nodes than 'max_count' during an upgrade. Ensure that your cluster has enough [IP space](https://docs.microsoft.com/azure/aks/upgrade-cluster#customize-node-surge-upgrade) during an upgrade. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_kubernetes_cluster_node_pool.this.outbound_nat_enabled
}

output "id" {
  description = "The ID of the Kubernetes Cluster Node Pool."
  value       = azurerm_kubernetes_cluster_node_pool.this.id
}

