output "name" {
  value = azurerm_kusto_database_principal_assignment.this.name
}

output "resource_group_name" {
  value = azurerm_kusto_database_principal_assignment.this.resource_group_name
}

output "cluster_name" {
  value = azurerm_kusto_database_principal_assignment.this.cluster_name
}

output "database_name" {
  value = azurerm_kusto_database_principal_assignment.this.database_name
}

output "principal_id" {
  value = azurerm_kusto_database_principal_assignment.this.principal_id
}

output "principal_type" {
  value = azurerm_kusto_database_principal_assignment.this.principal_type
}

output "role" {
  value = azurerm_kusto_database_principal_assignment.this.role
}

output "tenant_id" {
  value = azurerm_kusto_database_principal_assignment.this.tenant_id
}

output "id" {
  description = "The ID of the Kusto Database Principal Assignment."
  value       = azurerm_kusto_database_principal_assignment.this.id
}

output "principal_name" {
  description = "The name of the principal."
  value       = azurerm_kusto_database_principal_assignment.this.principal_name
}

output "tenant_name" {
  description = "The name of the tenant."
  value       = azurerm_kusto_database_principal_assignment.this.tenant_name
}

