output "name" {
  value = azurerm_managed_application.this.name
}

output "resource_group_name" {
  value = azurerm_managed_application.this.resource_group_name
}

output "location" {
  value = azurerm_managed_application.this.location
}

output "kind" {
  value = azurerm_managed_application.this.kind
}

output "managed_resource_group_name" {
  value = azurerm_managed_application.this.managed_resource_group_name
}

output "application_definition_id" {
  value = azurerm_managed_application.this.application_definition_id
}

output "parameters" {
  value = azurerm_managed_application.this.parameters
}

output "parameter_values" {
  value = azurerm_managed_application.this.parameter_values
}

output "plan" {
  value = azurerm_managed_application.this.plan
}

output "tags" {
  value = azurerm_managed_application.this.tags
}

output "id" {
  description = "The ID of the Managed Application."
  value       = azurerm_managed_application.this.id
}

output "outputs" {
  description = "The name and value pairs that define the managed application outputs."
  value       = azurerm_managed_application.this.outputs
}

