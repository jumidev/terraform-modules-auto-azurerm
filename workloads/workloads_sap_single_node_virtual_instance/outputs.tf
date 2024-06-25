output "name" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.name
}

output "resource_group_name" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.resource_group_name
}

output "location" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.location
}

output "app_location" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.app_location
}

output "environment" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.environment
}

output "sap_fqdn" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.sap_fqdn
}

output "sap_product" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.sap_product
}

output "single_server_configuration" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.single_server_configuration
}

output "identity" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.identity
}

output "managed_resource_group_name" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.managed_resource_group_name
}

output "tags" {
  value = azurerm_workloads_sap_single_node_virtual_instance.this.tags
}

output "identity_ids" {
  description = "A list of User Assigned Managed Identity IDs to be assigned to this SAP Single Node Virtual Instance. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_workloads_sap_single_node_virtual_instance.this.identity_ids
}

output "id" {
  description = "The ID of the SAP Single Node Virtual Instance."
  value       = azurerm_workloads_sap_single_node_virtual_instance.this.id
}

