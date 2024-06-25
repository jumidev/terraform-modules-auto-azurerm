output "name" {
  value = azurerm_stack_hci_cluster.this.name
}

output "resource_group_name" {
  value = azurerm_stack_hci_cluster.this.resource_group_name
}

output "location" {
  value = azurerm_stack_hci_cluster.this.location
}

output "client_id" {
  value = azurerm_stack_hci_cluster.this.client_id
}

output "identity" {
  value = azurerm_stack_hci_cluster.this.identity
}

output "tenant_id" {
  value = azurerm_stack_hci_cluster.this.tenant_id
}

output "tags" {
  value = azurerm_stack_hci_cluster.this.tags
}

output "automanage_configuration_id" {
  value = azurerm_stack_hci_cluster.this.automanage_configuration_id
}

output "type" {
  description = "Specifies the type of Managed Service Identity that should be configured on the Azure Stack HCI Cluster. Possible value is 'SystemAssigned'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_stack_hci_cluster.this.type
}

output "id" {
  description = "The resource ID of the Azure Stack HCI Cluster."
  value       = azurerm_stack_hci_cluster.this.id
}

output "cloud_id" {
  description = "An immutable UUID for the Azure Stack HCI Cluster."
  value       = azurerm_stack_hci_cluster.this.cloud_id
}

output "resource_provider_object_id" {
  description = "The object ID of the Resource Provider Service Principal."
  value       = azurerm_stack_hci_cluster.this.resource_provider_object_id
}

output "service_endpoint" {
  description = "The region specific Data Path Endpoint of the Azure Stack HCI Cluster."
  value       = azurerm_stack_hci_cluster.this.service_endpoint
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_stack_hci_cluster.this.principal_id
}

