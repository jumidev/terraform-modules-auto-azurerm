output "location" {
  value = azurerm_management_group_template_deployment.this.location
}

output "management_group_id" {
  value = azurerm_management_group_template_deployment.this.management_group_id
}

output "name" {
  value = azurerm_management_group_template_deployment.this.name
}

output "debug_level" {
  value = azurerm_management_group_template_deployment.this.debug_level
}

output "parameters_content" {
  value = azurerm_management_group_template_deployment.this.parameters_content
}

output "template_content" {
  value = azurerm_management_group_template_deployment.this.template_content
}

output "template_spec_version_id" {
  value = azurerm_management_group_template_deployment.this.template_spec_version_id
}

output "tags" {
  value = azurerm_management_group_template_deployment.this.tags
}

output "id" {
  description = "The ID of the Management Group Template Deployment."
  value       = azurerm_management_group_template_deployment.this.id
}

output "output_content" {
  description = "The JSON Content of the Outputs of the ARM Template Deployment."
  value       = azurerm_management_group_template_deployment.this.output_content
}

