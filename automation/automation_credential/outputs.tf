output "name" {
  value = azurerm_automation_credential.this.name
}

output "resource_group_name" {
  value = azurerm_automation_credential.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_credential.this.automation_account_name
}

output "username" {
  value = azurerm_automation_credential.this.username
}

output "password" {
  value     = azurerm_automation_credential.this.password
  sensitive = true
}

output "description" {
  value = azurerm_automation_credential.this.description
}

output "id" {
  description = "The ID of the Automation Credential."
  value       = azurerm_automation_credential.this.id
}

