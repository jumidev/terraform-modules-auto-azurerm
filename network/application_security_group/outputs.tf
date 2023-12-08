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

output "application_security_group_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.application_security_group_id
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.private_endpoint_id
}

output "id" {
  description = "The (Terraform specific) ID of the association between Private Endpoint and Application Security Group."
  value       = azurerm_private_endpoint_application_security_group_association.this.*.id
}

