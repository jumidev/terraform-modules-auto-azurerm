output "name" {
  value = azurerm_cosmosdb_notebook_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_notebook_workspace.this.resource_group_name
}

output "account_name" {
  value = azurerm_cosmosdb_notebook_workspace.this.account_name
}

output "account_name" {
  description = "The name of the Cosmos DB Account to create the SQL Notebook Workspace within. Changing this forces a new SQL Notebook Workspace to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_notebook_workspace.this.account_name
}

output "id" {
  description = "The ID of the SQL Notebook Workspace."
  value       = azurerm_cosmosdb_notebook_workspace.this.id
}

output "server_endpoint" {
  description = "Specifies the endpoint of Notebook server."
  value       = azurerm_cosmosdb_notebook_workspace.this.server_endpoint
}

