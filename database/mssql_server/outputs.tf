output "name" {
  value = azurerm_mssql_server.this.name
}

output "resource_group_name" {
  value = azurerm_mssql_server.this.resource_group_name
}

output "location" {
  value = azurerm_mssql_server.this.location
}

output "version" {
  value = azurerm_mssql_server.this.version
}

output "administrator_login" {
  value = azurerm_mssql_server.this.administrator_login
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "azuread_administrator" {
  value = azurerm_mssql_server.this.azuread_administrator
}

output "connection_policy" {
  value = azurerm_mssql_server.this.connection_policy
}

output "identity" {
  value = azurerm_mssql_server.this.identity
}

output "transparent_data_encryption_key_vault_key_id" {
  value = azurerm_mssql_server.this.transparent_data_encryption_key_vault_key_id
}

output "minimum_tls_version" {
  value = azurerm_mssql_server.this.minimum_tls_version
}

output "public_network_access_enabled" {
  value = azurerm_mssql_server.this.public_network_access_enabled
}

output "outbound_network_restriction_enabled" {
  value = azurerm_mssql_server.this.outbound_network_restriction_enabled
}

output "primary_user_assigned_identity_id" {
  value = azurerm_mssql_server.this.primary_user_assigned_identity_id
}

output "tags" {
  value = azurerm_mssql_server.this.tags
}

output "azuread_authentication_only" {
  description = "Specifies whether only AD Users and administrators (e.g. 'azuread_administrator.0.login_username') can be used to login, or also local database users (e.g. 'administrator_login'). When 'true', the 'administrator_login' and 'administrator_login_password' properties can be omitted. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_server.this.azuread_authentication_only
}

output "id" {
  description = "the Microsoft SQL Server ID."
  value       = azurerm_mssql_server.this.id
}

output "fully_qualified_domain_name" {
  description = "The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)"
  value       = azurerm_mssql_server.this.fully_qualified_domain_name
}

output "restorable_dropped_database_ids" {
  description = "A list of dropped restorable database IDs on the server."
  value       = azurerm_mssql_server.this.restorable_dropped_database_ids
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this SQL Server."
  value       = azurerm_mssql_server.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this SQL Server. -> You can access the Principal ID via 'azurerm_mssql_server.example.identity.0.principal_id' and the Tenant ID via 'azurerm_mssql_server.example.identity.0.tenant_id' ### Timeouts The 'timeouts' block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:"
  value       = azurerm_mssql_server.this.tenant_id
}

output "create" {
  description = "(Defaults to 60 minutes) Used when creating the Microsoft SQL Server."
  value       = azurerm_mssql_server.this.create
}

output "update" {
  description = "(Defaults to 60 minutes) Used when updating the Microsoft SQL Server."
  value       = azurerm_mssql_server.this.update
}

output "read" {
  description = "(Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server."
  value       = azurerm_mssql_server.this.read
}

output "delete" {
  description = "(Defaults to 60 minutes) Used when deleting the Microsoft SQL Server."
  value       = azurerm_mssql_server.this.delete
}

