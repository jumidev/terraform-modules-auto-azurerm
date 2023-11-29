output "managed_instance_name" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.managed_instance_name
}

output "resource_group_name" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.resource_group_name
}

output "login" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.login
}

output "object_id" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.tenant_id
}

output "azuread_authentication_only" {
  value = azurerm_sql_managed_instance_active_directory_administrator.this.azuread_authentication_only
}

output "id" {
  description = "The ID of the SQL Managed Instance Active Directory Administrator."
  value       = azurerm_sql_managed_instance_active_directory_administrator.this.id
}

