output "name" {
  value = azurerm_databricks_access_connector.this.name
}

output "resource_group_name" {
  value = azurerm_databricks_access_connector.this.resource_group_name
}

output "location" {
  value = azurerm_databricks_access_connector.this.location
}

output "identity" {
  value = azurerm_databricks_access_connector.this.identity
}

output "tags" {
  value = azurerm_databricks_access_connector.this.tags
}

output "id" {
  description = "The ID of the Databricks Access Connector in the Azure management plane."
  value       = azurerm_databricks_access_connector.this.id
}

output "type" {
  description = "The type of Managed Service Identity that is configured on this Access Connector."
  value       = azurerm_databricks_access_connector.this.type
}

output "principal_id" {
  description = "The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector."
  value       = azurerm_databricks_access_connector.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector."
  value       = azurerm_databricks_access_connector.this.tenant_id
}

output "identity_ids" {
  description = "The list of User Assigned Managed Identity IDs assigned to this Access Connector."
  value       = azurerm_databricks_access_connector.this.identity_ids
}

