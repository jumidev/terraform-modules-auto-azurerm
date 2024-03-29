output "container_registry_token_id" {
  value = azurerm_container_registry_token_password.this.container_registry_token_id
}

output "password1" {
  value = azurerm_container_registry_token_password.this.password1
}

output "password2" {
  value = azurerm_container_registry_token_password.this.password2
}

output "expiry" {
  description = "The expiration date of the password in RFC3339 format. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_registry_token_password.this.expiry
}

output "id" {
  description = "The ID of the Container Registry Token Password."
  value       = azurerm_container_registry_token_password.this.id
}

output "password1" {
  description = "One 'password' block."
  value       = azurerm_container_registry_token_password.this.password1
}

output "password2" {
  description = "One 'password' block."
  value       = azurerm_container_registry_token_password.this.password2
}

output "value" {
  description = "The value of the password (Sensitive)."
  value       = azurerm_container_registry_token_password.this.value
}

