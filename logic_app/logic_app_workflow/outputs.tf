output "name" {
  value = azurerm_logic_app_workflow.this.name
}

output "resource_group_name" {
  value = azurerm_logic_app_workflow.this.resource_group_name
}

output "location" {
  value = azurerm_logic_app_workflow.this.location
}

output "access_control" {
  value = azurerm_logic_app_workflow.this.access_control
}

output "identity" {
  value = azurerm_logic_app_workflow.this.identity
}

output "integration_service_environment_id" {
  value = azurerm_logic_app_workflow.this.integration_service_environment_id
}

output "logic_app_integration_account_id" {
  value = azurerm_logic_app_workflow.this.logic_app_integration_account_id
}

output "enabled" {
  value = azurerm_logic_app_workflow.this.enabled
}

output "workflow_parameters" {
  value = azurerm_logic_app_workflow.this.workflow_parameters
}

output "workflow_schema" {
  value = azurerm_logic_app_workflow.this.workflow_schema
}

output "workflow_version" {
  value = azurerm_logic_app_workflow.this.workflow_version
}

output "parameters" {
  value = azurerm_logic_app_workflow.this.parameters
}

output "tags" {
  value = azurerm_logic_app_workflow.this.tags
}

output "id" {
  description = "The Logic App Workflow ID."
  value       = azurerm_logic_app_workflow.this.id
}

output "access_endpoint" {
  description = "The Access Endpoint for the Logic App Workflow."
  value       = azurerm_logic_app_workflow.this.access_endpoint
}

output "connector_endpoint_ip_addresses" {
  description = "The list of access endpoint IP addresses of connector."
  value       = azurerm_logic_app_workflow.this.connector_endpoint_ip_addresses
}

output "connector_outbound_ip_addresses" {
  description = "The list of outgoing IP addresses of connector."
  value       = azurerm_logic_app_workflow.this.connector_outbound_ip_addresses
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_logic_app_workflow.this.identity
}

output "workflow_endpoint_ip_addresses" {
  description = "The list of access endpoint IP addresses of workflow."
  value       = azurerm_logic_app_workflow.this.workflow_endpoint_ip_addresses
}

output "workflow_outbound_ip_addresses" {
  description = "The list of outgoing IP addresses of workflow."
  value       = azurerm_logic_app_workflow.this.workflow_outbound_ip_addresses
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow."
  value       = azurerm_logic_app_workflow.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow."
  value       = azurerm_logic_app_workflow.this.tenant_id
}

