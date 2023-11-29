output "name" {
  value = azurerm_mssql_job_agent.this.name
}

output "location" {
  value = azurerm_mssql_job_agent.this.location
}

output "database_id" {
  value = azurerm_mssql_job_agent.this.database_id
}

output "tags" {
  value = azurerm_mssql_job_agent.this.tags
}

output "id" {
  description = "The ID of the Elastic Job Agent."
  value       = azurerm_mssql_job_agent.this.id
}

