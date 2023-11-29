output "name" {
  value = azurerm_cosmosdb_notebook_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_notebook_workspace.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_notebook_workspace.this.account_name
}

output "id" {
  description = "The ID of the SQL Notebook Workspace."
  value       = azurerm_cosmosdb_notebook_workspace.this.id
}

output "server_endpoint" {
  description = "Specifies the endpoint of Notebook server."
  value       = azurerm_cosmosdb_notebook_workspace.this.server_endpoint
}

