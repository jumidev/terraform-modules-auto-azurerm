output "name" {
  value = azurerm_mysql_virtual_network_rule.this.name
}

output "resource_group_name" {
  value = azurerm_mysql_virtual_network_rule.this.resource_group_name
}

output "server_name" {
  value = azurerm_mysql_virtual_network_rule.this.server_name
}

output "subnet_id" {
  value = azurerm_mysql_virtual_network_rule.this.subnet_id
}

output "subnet_id" {
  description = "The ID of the subnet that the MySQL server will be connected to. ~> **NOTE:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/3719) this resource currently doesn't expose the 'ignore_missing_vnet_service_endpoint' field and defaults this to 'false'. Terraform will check during the provisioning of the Virtual Network Rule that the Subnet contains the Service Rule to verify that the Virtual Network Rule can be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mysql_virtual_network_rule.this.subnet_id
}

output "id" {
  description = "The ID of the MySQL Virtual Network Rule."
  value       = azurerm_mysql_virtual_network_rule.this.id
}

