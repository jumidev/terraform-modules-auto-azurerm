output "name" {
  value = azurerm_batch_application.this.name
}

output "resource_group_name" {
  value = azurerm_batch_application.this.resource_group_name
}

output "account_name" {
  value = azurerm_batch_application.this.account_name
}

output "allow_updates" {
  value = azurerm_batch_application.this.allow_updates
}

output "default_version" {
  value = azurerm_batch_application.this.default_version
}

output "display_name" {
  value = azurerm_batch_application.this.display_name
}

output "id" {
  description = "The ID of the Batch Application."
  value       = azurerm_batch_application.this.id
}

