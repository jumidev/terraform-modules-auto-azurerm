output "scope" {
  value = azurerm_security_center_workspace.this.scope
}

output "workspace_id" {
  value = azurerm_security_center_workspace.this.workspace_id
}

output "id" {
  description = "The Security Center Workspace ID."
  value       = azurerm_security_center_workspace.this.id
}

