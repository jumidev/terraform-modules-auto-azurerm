output "name" {
  value = azurerm_database_migration_project.this.name
}

output "service_name" {
  value = azurerm_database_migration_project.this.service_name
}

output "resource_group_name" {
  value = azurerm_database_migration_project.this.resource_group_name
}

output "location" {
  value = azurerm_database_migration_project.this.location
}

output "source_platform" {
  value = azurerm_database_migration_project.this.source_platform
}

output "target_platform" {
  value = azurerm_database_migration_project.this.target_platform
}

output "tags" {
  value = azurerm_database_migration_project.this.tags
}

output "id" {
  description = "The ID of Database Migration Project."
  value       = azurerm_database_migration_project.this.id
}

