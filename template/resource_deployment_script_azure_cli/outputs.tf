output "name" {
  value = azurerm_resource_deployment_script_azure_cli.this.name
}

output "resource_group_name" {
  value = azurerm_resource_deployment_script_azure_cli.this.resource_group_name
}

output "location" {
  value = azurerm_resource_deployment_script_azure_cli.this.location
}

output "version" {
  value = azurerm_resource_deployment_script_azure_cli.this.version
}

output "retention_interval" {
  value = azurerm_resource_deployment_script_azure_cli.this.retention_interval
}

output "command_line" {
  value = azurerm_resource_deployment_script_azure_cli.this.command_line
}

output "cleanup_preference" {
  value = azurerm_resource_deployment_script_azure_cli.this.cleanup_preference
}

output "container" {
  value = azurerm_resource_deployment_script_azure_cli.this.container
}

output "environment_variable" {
  value = azurerm_resource_deployment_script_azure_cli.this.environment_variable
}

output "force_update_tag" {
  value = azurerm_resource_deployment_script_azure_cli.this.force_update_tag
}

output "identity" {
  value = azurerm_resource_deployment_script_azure_cli.this.identity
}

output "primary_script_uri" {
  value = azurerm_resource_deployment_script_azure_cli.this.primary_script_uri
}

output "script_content" {
  value = azurerm_resource_deployment_script_azure_cli.this.script_content
}

output "storage_account" {
  value = azurerm_resource_deployment_script_azure_cli.this.storage_account
}

output "supporting_script_uris" {
  value = azurerm_resource_deployment_script_azure_cli.this.supporting_script_uris
}

output "timeout" {
  value = azurerm_resource_deployment_script_azure_cli.this.timeout
}

output "tags" {
  value = azurerm_resource_deployment_script_azure_cli.this.tags
}

output "id" {
  description = "The ID of the Resource Deployment Script."
  value       = azurerm_resource_deployment_script_azure_cli.this.id
}

output "outputs" {
  description = "List of script outputs."
  value       = azurerm_resource_deployment_script_azure_cli.this.outputs
}

