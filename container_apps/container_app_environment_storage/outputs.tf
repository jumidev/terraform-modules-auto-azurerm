output "name" {
  value = azurerm_container_app_environment_storage.this.name
}

output "container_app_environment_id" {
  value = azurerm_container_app_environment_storage.this.container_app_environment_id
}

output "account_name" {
  value = azurerm_container_app_environment_storage.this.account_name
}

output "access_key" {
  value = azurerm_container_app_environment_storage.this.access_key
}

output "share_name" {
  value = azurerm_container_app_environment_storage.this.share_name
}

output "access_mode" {
  value = azurerm_container_app_environment_storage.this.access_mode
}

output "id" {
  description = "The ID of the Container App Environment Storage"
  value       = azurerm_container_app_environment_storage.this.id
}

