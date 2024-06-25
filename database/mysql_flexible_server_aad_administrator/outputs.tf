output "server_id" {
  value = azurerm_mysql_flexible_server_aad_administrator.this.server_id
}

output "identity_id" {
  value = azurerm_mysql_flexible_server_aad_administrator.this.identity_id
}

output "login" {
  value = azurerm_mysql_flexible_server_aad_administrator.this.login
}

output "object_id" {
  value = azurerm_mysql_flexible_server_aad_administrator.this.object_id
}

output "tenant_id" {
  value = azurerm_mysql_flexible_server_aad_administrator.this.tenant_id
}

output "id" {
  description = "The ID of the MySQL Flexible Server Active Directory Administrator."
  value       = azurerm_mysql_flexible_server_aad_administrator.this.id
}

