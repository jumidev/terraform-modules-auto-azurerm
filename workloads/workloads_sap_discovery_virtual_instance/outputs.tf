output "name" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.name
}

output "resource_group_name" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.resource_group_name
}

output "location" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.location
}

output "central_server_virtual_machine_id" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.central_server_virtual_machine_id
}

output "environment" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.environment
}

output "sap_product" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.sap_product
}

output "identity" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.identity
}

output "managed_resource_group_name" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.managed_resource_group_name
}

output "managed_storage_account_name" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.managed_storage_account_name
}

output "tags" {
  value = azurerm_workloads_sap_discovery_virtual_instance.this.tags
}

output "identity_ids" {
  description = "A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_workloads_sap_discovery_virtual_instance.this.identity_ids
}

output "id" {
  description = "The ID of the SAP Discovery Virtual Instance."
  value       = azurerm_workloads_sap_discovery_virtual_instance.this.id
}

