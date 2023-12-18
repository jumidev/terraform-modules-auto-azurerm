output "name" {
  value = azurerm_application_security_group.this.name
}

output "resource_group_name" {
  value = azurerm_application_security_group.this.resource_group_name
}

output "location" {
  value = azurerm_application_security_group.this.location
}

output "tags" {
  value = azurerm_application_security_group.this.tags
}

output "id" {
  description = "The ID of the Application Security Group."
  value       = azurerm_application_security_group.this.id
}

