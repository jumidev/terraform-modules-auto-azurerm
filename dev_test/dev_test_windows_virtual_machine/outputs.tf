output "name" {
  value = azurerm_dev_test_windows_virtual_machine.this.name
}

output "lab_name" {
  value = azurerm_dev_test_windows_virtual_machine.this.lab_name
}

output "resource_group_name" {
  value = azurerm_dev_test_windows_virtual_machine.this.resource_group_name
}

output "location" {
  value = azurerm_dev_test_windows_virtual_machine.this.location
}

output "gallery_image_reference" {
  value = azurerm_dev_test_windows_virtual_machine.this.gallery_image_reference
}

output "lab_subnet_name" {
  value = azurerm_dev_test_windows_virtual_machine.this.lab_subnet_name
}

output "lab_virtual_network_id" {
  value = azurerm_dev_test_windows_virtual_machine.this.lab_virtual_network_id
}

output "password" {
  value     = azurerm_dev_test_windows_virtual_machine.this.password
  sensitive = true
}

output "size" {
  value = azurerm_dev_test_windows_virtual_machine.this.size
}

output "storage_type" {
  value = azurerm_dev_test_windows_virtual_machine.this.storage_type
}

output "username" {
  value = azurerm_dev_test_windows_virtual_machine.this.username
}

output "allow_claim" {
  value = azurerm_dev_test_windows_virtual_machine.this.allow_claim
}

output "disallow_public_ip_address" {
  value = azurerm_dev_test_windows_virtual_machine.this.disallow_public_ip_address
}

output "inbound_nat_rule" {
  value = azurerm_dev_test_windows_virtual_machine.this.inbound_nat_rule
}

output "notes" {
  value = azurerm_dev_test_windows_virtual_machine.this.notes
}

output "tags" {
  value = azurerm_dev_test_windows_virtual_machine.this.tags
}

output "id" {
  description = "The ID of the Virtual Machine."
  value       = azurerm_dev_test_windows_virtual_machine.this.id
}

output "fqdn" {
  description = "The FQDN of the Virtual Machine."
  value       = azurerm_dev_test_windows_virtual_machine.this.fqdn
}

output "inbound_nat_rule" {
  description = "One or more 'inbound_nat_rule' blocks."
  value       = azurerm_dev_test_windows_virtual_machine.this.inbound_nat_rule
}

output "unique_identifier" {
  description = "The unique immutable identifier of the Virtual Machine."
  value       = azurerm_dev_test_windows_virtual_machine.this.unique_identifier
}

output "frontend_port" {
  description = "The frontend port associated with this Inbound NAT Rule."
  value       = azurerm_dev_test_windows_virtual_machine.this.frontend_port
}

