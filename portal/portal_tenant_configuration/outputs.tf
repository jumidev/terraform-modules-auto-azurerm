output "private_markdown_storage_enforced" {
  value = azurerm_portal_tenant_configuration.this.private_markdown_storage_enforced
}

output "id" {
  description = "The ID of the Portal Tenant Configuration."
  value       = azurerm_portal_tenant_configuration.this.id
}

