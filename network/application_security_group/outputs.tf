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

output "tags" {
  description = "A mapping of tags to assign to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_application_security_group.this.tags
}

output "id" {
  description = "The ID of the Application Security Group."
  value       = azurerm_application_security_group.this.id
}

output "network_interface_id" {
  value = azurerm_network_interface_application_security_group_association.this.*.network_interface_id
}

output "application_security_group_id" {
  value = azurerm_network_interface_application_security_group_association.this.*.application_security_group_id
}

output "application_security_group_id" {
  description = "The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_network_interface_application_security_group_association.this.*.application_security_group_id
}

output "id" {
  description = "The (Terraform specific) ID of the Association between the Network Interface and the Application Security Group."
  value       = azurerm_network_interface_application_security_group_association.this.*.id
}

output "application_security_group_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.application_security_group_id
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint_application_security_group_association.this.*.private_endpoint_id
}

output "private_endpoint_id" {
  description = "The id of private endpoint to associate. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_private_endpoint_application_security_group_association.this.*.private_endpoint_id
}

output "id" {
  description = "The (Terraform specific) ID of the association between Private Endpoint and Application Security Group."
  value       = azurerm_private_endpoint_application_security_group_association.this.*.id
}

