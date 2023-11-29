output "name" {
  value = azurerm_mssql_virtual_machine_group.this.name
}

output "resource_group_name" {
  value = azurerm_mssql_virtual_machine_group.this.resource_group_name
}

output "location" {
  value = azurerm_mssql_virtual_machine_group.this.location
}

output "sql_image_offer" {
  value = azurerm_mssql_virtual_machine_group.this.sql_image_offer
}

output "sql_image_sku" {
  value = azurerm_mssql_virtual_machine_group.this.sql_image_sku
}

output "wsfc_domain_profile" {
  value = azurerm_mssql_virtual_machine_group.this.wsfc_domain_profile
}

output "tags" {
  value = azurerm_mssql_virtual_machine_group.this.tags
}

output "id" {
  description = "The ID of the Microsoft SQL Virtual Machine Group."
  value       = azurerm_mssql_virtual_machine_group.this.id
}

