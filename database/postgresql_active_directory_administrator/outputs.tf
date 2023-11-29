output "server_name" {
  value = azurerm_postgresql_active_directory_administrator.this.server_name
}

output "resource_group_name" {
  value = azurerm_postgresql_active_directory_administrator.this.resource_group_name
}

output "login" {
  value = azurerm_postgresql_active_directory_administrator.this.login
}

output "object_id" {
  value = azurerm_postgresql_active_directory_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_postgresql_active_directory_administrator.this.tenant_id
}

output "id" {
  description = "The ID of the PostgreSQL Active Directory Administrator."
  value       = azurerm_postgresql_active_directory_administrator.this.id
}

