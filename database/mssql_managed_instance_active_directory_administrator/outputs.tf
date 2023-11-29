output "managed_instance_id" {
  value = azurerm_mssql_managed_instance_active_directory_administrator.this.managed_instance_id
}

output "login_username" {
  value = azurerm_mssql_managed_instance_active_directory_administrator.this.login_username
}

output "object_id" {
  value = azurerm_mssql_managed_instance_active_directory_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_mssql_managed_instance_active_directory_administrator.this.tenant_id
}

output "azuread_authentication_only" {
  value = azurerm_mssql_managed_instance_active_directory_administrator.this.azuread_authentication_only
}

output "id" {
  description = "The ID of the SQL Managed Instance Active Directory Administrator."
  value       = azurerm_mssql_managed_instance_active_directory_administrator.this.id
}

