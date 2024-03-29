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

output "tenant_id" {
  value = azurerm_stack_hci_cluster.this.tenant_id
}

output "tags" {
  value = azurerm_stack_hci_cluster.this.tags
}

output "automanage_configuration_id" {
  value = azurerm_stack_hci_cluster.this.automanage_configuration_id
}

output "automanage_configuration_id" {
  description = "The ID of the Automanage Configuration assigned to the Azure Stack HCI Cluster. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_stack_hci_cluster.this.automanage_configuration_id
}

output "id" {
  description = "The ID of the Azure Stack HCI Cluster."
  value       = azurerm_stack_hci_cluster.this.id
}

