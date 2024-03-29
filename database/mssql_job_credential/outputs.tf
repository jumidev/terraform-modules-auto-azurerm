output "name" {
  value = azurerm_mssql_job_credential.this.name
}

output "job_agent_id" {
  value = azurerm_mssql_job_credential.this.job_agent_id
}

output "username" {
  value = azurerm_mssql_job_credential.this.username
}

output "password" {
  value     = azurerm_mssql_job_credential.this.password
  sensitive = true
}

output "password" {
  description = "The password part of the credential. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_mssql_job_credential.this.password
  sensitive   = true
}

output "id" {
  description = "The ID of the Elastic Job Credential."
  value       = azurerm_mssql_job_credential.this.id
}

