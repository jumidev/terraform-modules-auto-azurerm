output "name" {
  value = azurerm_virtual_hub_ip.this.name
}

output "virtual_hub_id" {
  value = azurerm_virtual_hub_ip.this.virtual_hub_id
}

output "subnet_id" {
  value = azurerm_virtual_hub_ip.this.subnet_id
}

output "private_ip_address" {
  value = azurerm_virtual_hub_ip.this.private_ip_address
}

output "private_ip_allocation_method" {
  value = azurerm_virtual_hub_ip.this.private_ip_allocation_method
}

output "public_ip_address_id" {
  value = azurerm_virtual_hub_ip.this.public_ip_address_id
}

output "id" {
  description = "The ID of the Virtual Hub IP."
  value       = azurerm_virtual_hub_ip.this.id
}

