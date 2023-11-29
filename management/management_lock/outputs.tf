output "name" {
  value = azurerm_management_lock.this.name
}

output "scope" {
  value = azurerm_management_lock.this.scope
}

output "lock_level" {
  value = azurerm_management_lock.this.lock_level
}

output "notes" {
  value = azurerm_management_lock.this.notes
}

output "id" {
  description = "The ID of the Management Lock"
  value       = azurerm_management_lock.this.id
}

