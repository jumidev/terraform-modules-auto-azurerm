output "server_id" {
  value = azurerm_postgresql_server_key.this.server_id
}

output "key_vault_key_id" {
  value = azurerm_postgresql_server_key.this.key_vault_key_id
}

output "key_vault_key_id" {
  description = "The URL to a Key Vault Key. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_postgresql_server_key.this.key_vault_key_id
}

output "id" {
  description = "The ID of the PostgreSQL Server Key."
  value       = azurerm_postgresql_server_key.this.id
}

