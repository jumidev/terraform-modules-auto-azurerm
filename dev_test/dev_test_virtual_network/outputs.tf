output "name" {
  value = azurerm_dev_test_virtual_network.this.name
}

output "lab_name" {
  value = azurerm_dev_test_virtual_network.this.lab_name
}

output "resource_group_name" {
  value = azurerm_dev_test_virtual_network.this.resource_group_name
}

output "description" {
  value = azurerm_dev_test_virtual_network.this.description
}

output "subnet" {
  value = azurerm_dev_test_virtual_network.this.subnet
}

output "tags" {
  value = azurerm_dev_test_virtual_network.this.tags
}

output "id" {
  description = "The ID of the Dev Test Virtual Network."
  value       = azurerm_dev_test_virtual_network.this.id
}

output "subnet" {
  description = "A 'subnet' block."
  value       = azurerm_dev_test_virtual_network.this.subnet
}

output "unique_identifier" {
  description = "The unique immutable identifier of the Dev Test Virtual Network."
  value       = azurerm_dev_test_virtual_network.this.unique_identifier
}

output "name" {
  description = "The name of the Subnet for this Virtual Network."
  value       = azurerm_dev_test_virtual_network.this.name
}

