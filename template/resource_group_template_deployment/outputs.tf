output "deployment_mode" {
  value = azurerm_resource_group_template_deployment.this.deployment_mode
}

output "name" {
  value = azurerm_resource_group_template_deployment.this.name
}

output "resource_group_name" {
  value = azurerm_resource_group_template_deployment.this.resource_group_name
}

output "debug_level" {
  value = azurerm_resource_group_template_deployment.this.debug_level
}

output "template_content" {
  value = azurerm_resource_group_template_deployment.this.template_content
}

output "template_spec_version_id" {
  value = azurerm_resource_group_template_deployment.this.template_spec_version_id
}

output "parameters_content" {
  value = azurerm_resource_group_template_deployment.this.parameters_content
}

output "tags" {
  value = azurerm_resource_group_template_deployment.this.tags
}

output "id" {
  description = "The ID of the Resource Group Template Deployment."
  value       = azurerm_resource_group_template_deployment.this.id
}

output "output_content" {
  description = "The JSON Content of the Outputs of the ARM Template Deployment."
  value       = azurerm_resource_group_template_deployment.this.output_content
}

