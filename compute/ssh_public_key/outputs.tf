output "location" {
  value = azurerm_ssh_public_key.this.location
}

output "name" {
  value = azurerm_ssh_public_key.this.name
}

output "public_key" {
  value = azurerm_ssh_public_key.this.public_key
}

output "resource_group_name" {
  value = azurerm_ssh_public_key.this.resource_group_name
}

output "tags" {
  value = azurerm_ssh_public_key.this.tags
}

output "id" {
  description = "The ID of the SSH Public Key."
  value       = azurerm_ssh_public_key.this.id
}

