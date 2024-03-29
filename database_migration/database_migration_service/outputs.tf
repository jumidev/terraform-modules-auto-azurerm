output "name" {
  value = azurerm_database_migration_service.this.name
}

output "location" {
  value = azurerm_database_migration_service.this.location
}

output "resource_group_name" {
  value = azurerm_database_migration_service.this.resource_group_name
}

output "subnet_id" {
  value = azurerm_database_migration_service.this.subnet_id
}

output "sku_name" {
  value = azurerm_database_migration_service.this.sku_name
}

output "tags" {
  value = azurerm_database_migration_service.this.tags
}

output "tags" {
  description = "A mapping of tags to assigned to the resource. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_database_migration_service.this.tags
}

output "id" {
  description = "The ID of Database Migration Service."
  value       = azurerm_database_migration_service.this.id
}

