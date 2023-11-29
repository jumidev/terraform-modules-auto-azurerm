output "synapse_workspace_id" {
  value = azurerm_synapse_workspace_sql_aad_admin.this.synapse_workspace_id
}

output "login" {
  value = azurerm_synapse_workspace_sql_aad_admin.this.login
}

output "object_id" {
  value = azurerm_synapse_workspace_sql_aad_admin.this.object_id
}

output "tenant_id" {
  value = azurerm_synapse_workspace_sql_aad_admin.this.tenant_id
}

