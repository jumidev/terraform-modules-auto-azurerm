output "workspace_id" {
  value = azurerm_databricks_workspace_root_dbfs_customer_managed_key.this.workspace_id
}

output "key_vault_key_id" {
  value = azurerm_databricks_workspace_root_dbfs_customer_managed_key.this.key_vault_key_id
}

output "id" {
  description = "The ID of the Databricks Workspace."
  value       = azurerm_databricks_workspace_root_dbfs_customer_managed_key.this.id
}

