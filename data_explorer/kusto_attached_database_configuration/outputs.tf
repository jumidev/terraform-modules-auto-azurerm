output "name" {
  value = azurerm_kusto_attached_database_configuration.this.name
}

output "location" {
  value = azurerm_kusto_attached_database_configuration.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_attached_database_configuration.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_attached_database_configuration.this.cluster_name
}

output "cluster_resource_id" {
  value = azurerm_kusto_attached_database_configuration.this.cluster_resource_id
}

output "database_name" {
  value = azurerm_kusto_attached_database_configuration.this.database_name
}

output "default_principal_modification_kind" {
  value = azurerm_kusto_attached_database_configuration.this.default_principal_modification_kind
}

output "sharing" {
  value = azurerm_kusto_attached_database_configuration.this.sharing
}

output "id" {
  description = "The Kusto Attached Database Configuration ID."
  value       = azurerm_kusto_attached_database_configuration.this.id
}

output "attached_database_names" {
  description = "The list of databases from the 'cluster_resource_id' which are currently attached to the cluster."
  value       = azurerm_kusto_attached_database_configuration.this.attached_database_names
}

