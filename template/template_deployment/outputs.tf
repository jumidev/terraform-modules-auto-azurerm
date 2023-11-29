output "name" {
  value = azurerm_template_deployment.this.name
}

output "resource_group_name" {
  value = azurerm_template_deployment.this.resource_group_name
}

output "deployment_mode" {
  value = azurerm_template_deployment.this.deployment_mode
}

output "template_body" {
  value = azurerm_template_deployment.this.template_body
}

output "parameters" {
  value = azurerm_template_deployment.this.parameters
}

output "parameters_body" {
  value = azurerm_template_deployment.this.parameters_body
}

output "id" {
  description = "The Template Deployment ID."
  value       = azurerm_template_deployment.this.id
}

output "outputs" {
  description = "A map of supported scalar output types returned from the deployment (currently, Azure Template Deployment outputs of type String, Int and Bool are supported, and are converted to strings - others will be ignored) and can be accessed using '.outputs['name']'."
  value       = azurerm_template_deployment.this.outputs
}

