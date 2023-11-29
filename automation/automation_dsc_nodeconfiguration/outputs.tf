output "name" {
  value = azurerm_automation_dsc_nodeconfiguration.this.name
}

output "resource_group_name" {
  value = azurerm_automation_dsc_nodeconfiguration.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_dsc_nodeconfiguration.this.automation_account_name
}

output "content_embedded" {
  value = azurerm_automation_dsc_nodeconfiguration.this.content_embedded
}

output "id" {
  description = "The DSC Node Configuration ID."
  value       = azurerm_automation_dsc_nodeconfiguration.this.id
}

