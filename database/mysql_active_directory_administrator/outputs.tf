output "server_name" {
  value = azurerm_mysql_active_directory_administrator.this.server_name
}

output "resource_group_name" {
  value = azurerm_mysql_active_directory_administrator.this.resource_group_name
}

output "login" {
  value = azurerm_mysql_active_directory_administrator.this.login
}

output "object_id" {
  value = azurerm_mysql_active_directory_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_mysql_active_directory_administrator.this.tenant_id
}

output "tenant_id" {
  description = "The Azure Tenant ID In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mysql_active_directory_administrator.this.tenant_id
}

output "id" {
  description = "The ID of the MySQL Active Directory Administrator."
  value       = azurerm_mysql_active_directory_administrator.this.id
}

