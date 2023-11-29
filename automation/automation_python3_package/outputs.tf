output "resource_group_name" {
  value = azurerm_automation_python3_package.this.resource_group_name
}

output "automation_account_name" {
  value = azurerm_automation_python3_package.this.automation_account_name
}

output "name" {
  value = azurerm_automation_python3_package.this.name
}

output "content_uri" {
  value = azurerm_automation_python3_package.this.content_uri
}

output "content_version" {
  value = azurerm_automation_python3_package.this.content_version
}

output "hash_algorithm" {
  value = azurerm_automation_python3_package.this.hash_algorithm
}

output "hash_value" {
  value = azurerm_automation_python3_package.this.hash_value
}

output "tags" {
  value = azurerm_automation_python3_package.this.tags
}

output "id" {
  description = "The ID of the Automation Python3 Package."
  value       = azurerm_automation_python3_package.this.id
}

