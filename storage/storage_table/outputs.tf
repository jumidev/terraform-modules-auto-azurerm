output "name" {
  value = azurerm_storage_table.this.name
}

output "storage_account_name" {
  value = azurerm_storage_table.this.storage_account_name
}

output "acl" {
  value = azurerm_storage_table.this.acl
}

output "start" {
  description = "The ISO8061 UTC time at which this Access Policy should be valid from. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_table.this.start
}

output "id" {
  description = "The ID of the Table within the Storage Account."
  value       = azurerm_storage_table.this.id
}

