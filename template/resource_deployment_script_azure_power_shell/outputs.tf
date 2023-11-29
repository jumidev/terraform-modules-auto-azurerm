output "name" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.name
}

output "resource_group_name" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.resource_group_name
}

output "location" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.location
}

output "version" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.version
}

output "retention_interval" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.retention_interval
}

output "command_line" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.command_line
}

output "cleanup_preference" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.cleanup_preference
}

output "container" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.container
}

output "environment_variable" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.environment_variable
}

output "force_update_tag" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.force_update_tag
}

output "identity" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.identity
}

output "primary_script_uri" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.primary_script_uri
}

output "script_content" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.script_content
}

output "storage_account" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.storage_account
}

output "supporting_script_uris" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.supporting_script_uris
}

output "timeout" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.timeout
}

output "tags" {
  value = azurerm_resource_deployment_script_azure_power_shell.this.tags
}

output "id" {
  description = "The ID of the Resource Deployment Script."
  value       = azurerm_resource_deployment_script_azure_power_shell.this.id
}

output "outputs" {
  description = "List of script outputs."
  value       = azurerm_resource_deployment_script_azure_power_shell.this.outputs
}

