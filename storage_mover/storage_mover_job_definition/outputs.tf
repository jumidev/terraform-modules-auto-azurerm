output "name" {
  value = azurerm_storage_mover_job_definition.this.name
}

output "storage_mover_project_id" {
  value = azurerm_storage_mover_job_definition.this.storage_mover_project_id
}

output "source_name" {
  value = azurerm_storage_mover_job_definition.this.source_name
}

output "target_name" {
  value = azurerm_storage_mover_job_definition.this.target_name
}

output "copy_mode" {
  value = azurerm_storage_mover_job_definition.this.copy_mode
}

output "source_sub_path" {
  value = azurerm_storage_mover_job_definition.this.source_sub_path
}

output "target_sub_path" {
  value = azurerm_storage_mover_job_definition.this.target_sub_path
}

output "agent_name" {
  value = azurerm_storage_mover_job_definition.this.agent_name
}

output "description" {
  value = azurerm_storage_mover_job_definition.this.description
}

output "id" {
  description = "The ID of the Storage Mover Job Definition."
  value       = azurerm_storage_mover_job_definition.this.id
}

