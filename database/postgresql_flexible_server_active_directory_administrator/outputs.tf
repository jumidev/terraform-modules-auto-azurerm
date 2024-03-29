output "server_name" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.server_name
}

output "resource_group_name" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.resource_group_name
}

output "object_id" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.tenant_id
}

output "principal_name" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.principal_name
}

output "principal_type" {
  value = azurerm_postgresql_flexible_server_active_directory_administrator.this.principal_type
}

output "principal_type" {
  description = "The type of Azure Active Directory principal. Possible values are 'Group', 'ServicePrincipal' and 'User'. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.this.principal_type
}

output "id" {
  description = "The ID of the PostgreSQL Flexible Server Active Directory Administrator."
  value       = azurerm_postgresql_flexible_server_active_directory_administrator.this.id
}

