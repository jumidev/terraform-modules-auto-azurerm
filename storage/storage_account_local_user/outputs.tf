output "name" {
  value = azurerm_storage_account_local_user.this.name
}

output "storage_account_id" {
  value = azurerm_storage_account_local_user.this.storage_account_id
}

output "home_directory" {
  value = azurerm_storage_account_local_user.this.home_directory
}

output "permission_scope" {
  value = azurerm_storage_account_local_user.this.permission_scope
}

output "ssh_authorized_key" {
  value = azurerm_storage_account_local_user.this.ssh_authorized_key
}

output "ssh_key_enabled" {
  value = azurerm_storage_account_local_user.this.ssh_key_enabled
}

output "ssh_password_enabled" {
  value = azurerm_storage_account_local_user.this.ssh_password_enabled
}

output "id" {
  description = "The ID of the Storage Account Local User."
  value       = azurerm_storage_account_local_user.this.id
}

output "password" {
  description = "The value of the password, which is only available when 'ssh_password_enabled' is set to 'true'."
  value       = azurerm_storage_account_local_user.this.password
}

output "sid" {
  description = "The unique Security Identifier of this Storage Account Local User."
  value       = azurerm_storage_account_local_user.this.sid
}

