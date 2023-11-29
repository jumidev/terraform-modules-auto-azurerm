output "name" {
  value = azurerm_service_fabric_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_service_fabric_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_service_fabric_cluster.this.location
}

output "reliability_level" {
  value = azurerm_service_fabric_cluster.this.reliability_level
}

output "management_endpoint" {
  value = azurerm_service_fabric_cluster.this.management_endpoint
}

output "node_type" {
  value = azurerm_service_fabric_cluster.this.node_type
}

output "upgrade_mode" {
  value = azurerm_service_fabric_cluster.this.upgrade_mode
}

output "vm_image" {
  value = azurerm_service_fabric_cluster.this.vm_image
}

output "cluster_code_version" {
  value = azurerm_service_fabric_cluster.this.cluster_code_version
}

output "add_on_features" {
  value = azurerm_service_fabric_cluster.this.add_on_features
}

output "azure_active_directory" {
  value = azurerm_service_fabric_cluster.this.azure_active_directory
}

output "certificate_common_names" {
  value = azurerm_service_fabric_cluster.this.certificate_common_names
}

output "certificate" {
  value = azurerm_service_fabric_cluster.this.certificate
}

output "reverse_proxy_certificate" {
  value = azurerm_service_fabric_cluster.this.reverse_proxy_certificate
}

output "reverse_proxy_certificate_common_names" {
  value = azurerm_service_fabric_cluster.this.reverse_proxy_certificate_common_names
}

output "client_certificate_thumbprint" {
  value = azurerm_service_fabric_cluster.this.client_certificate_thumbprint
}

output "client_certificate_common_name" {
  value = azurerm_service_fabric_cluster.this.client_certificate_common_name
}

output "diagnostics_config" {
  value = azurerm_service_fabric_cluster.this.diagnostics_config
}

output "fabric_settings" {
  value = azurerm_service_fabric_cluster.this.fabric_settings
}

output "upgrade_policy" {
  value = azurerm_service_fabric_cluster.this.upgrade_policy
}

output "service_fabric_zonal_upgrade_mode" {
  value = azurerm_service_fabric_cluster.this.service_fabric_zonal_upgrade_mode
}

output "vmss_zonal_upgrade_mode" {
  value = azurerm_service_fabric_cluster.this.vmss_zonal_upgrade_mode
}

output "tags" {
  value = azurerm_service_fabric_cluster.this.tags
}

output "id" {
  description = "The ID of the Service Fabric Cluster."
  value       = azurerm_service_fabric_cluster.this.id
}

output "cluster_endpoint" {
  description = "The Cluster Endpoint for this Service Fabric Cluster."
  value       = azurerm_service_fabric_cluster.this.cluster_endpoint
}

