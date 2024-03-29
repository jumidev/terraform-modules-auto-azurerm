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

output "description" {
  description = "The description of this SSH authorized key. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_storage_account_local_user.this.description
}

output "id" {
  description = "The ID of the Storage Account Local User."
  value       = azurerm_storage_account_local_user.this.id
}

output "password" {
  description = "The value of the password, which is only available when 'ssh_password_enabled' is set to 'true'. ~> **Note:** The 'password' will be updated everytime when 'ssh_password_enabled' got updated. If 'ssh_password_enabled' is updated from 'false' to 'true', the 'password' is updated to be the value of the SSH password. If 'ssh_password_enabled' is updated from 'true' to 'false', the 'password' is reset to empty string."
  value       = azurerm_storage_account_local_user.this.password
  sensitive   = true
}

output "sid" {
  description = "The unique Security Identifier of this Storage Account Local User."
  value       = azurerm_storage_account_local_user.this.sid
}

