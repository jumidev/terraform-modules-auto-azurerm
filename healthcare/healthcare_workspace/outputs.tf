output "name" {
  value = azurerm_healthcare_workspace.this.name
}

output "resource_group_name" {
  value = azurerm_healthcare_workspace.this.resource_group_name
}

output "location" {
  value = azurerm_healthcare_workspace.this.location
}

output "tags" {
  value = azurerm_healthcare_workspace.this.tags
}

output "id" {
  description = "The ID of the Healthcare Workspace."
  value       = azurerm_healthcare_workspace.this.id
}

