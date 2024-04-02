output "name" {
  value = azurerm_sql_server.this.name
}

output "resource_group_name" {
  value = azurerm_sql_server.this.resource_group_name
}

output "location" {
  value = azurerm_sql_server.this.location
}

output "version" {
  value = azurerm_sql_server.this.version
}

output "administrator_login" {
  value = azurerm_sql_server.this.administrator_login
}

output "administrator_login_password" {
  value     = random_string.administrator_login_password.result
  sensitive = true
}

output "connection_policy" {
  value = azurerm_sql_server.this.connection_policy
}

output "identity" {
  value = azurerm_sql_server.this.identity
}

output "storage_endpoint" {
  description = "Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. Required if 'state' is 'Enabled'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_sql_server.this.storage_endpoint
}

output "id" {
  description = "The Microsoft SQL Server ID."
  value       = azurerm_sql_server.this.id
}

output "fully_qualified_domain_name" {
  description = "The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)"
  value       = azurerm_sql_server.this.fully_qualified_domain_name
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this SQL Server."
  value       = azurerm_sql_server.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this SQL Server. -> You can access the Principal ID via '${azurerm_mssql_server.example.identity.0.principal_id}' and the Tenant ID via '${azurerm_mssql_server.example.identity.0.tenant_id}' ### Timeouts The 'timeouts' block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:"
  value       = azurerm_sql_server.this.tenant_id
}

output "create" {
  description = "(Defaults to 60 minutes) Used when creating the Microsoft SQL Server."
  value       = azurerm_sql_server.this.create
}

output "update" {
  description = "(Defaults to 60 minutes) Used when updating the Microsoft SQL Server."
  value       = azurerm_sql_server.this.update
}

output "read" {
  description = "(Defaults to 5 minutes) Used when retrieving the Microsoft SQL Server."
  value       = azurerm_sql_server.this.read
}

output "delete" {
  description = "(Defaults to 60 minutes) Used when deleting the Microsoft SQL Server."
  value       = azurerm_sql_server.this.delete
}

