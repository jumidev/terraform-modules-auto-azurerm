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

output "access_mode" {
  description = "The access mode to connect this storage to the Container App. Possible values include 'ReadOnly' and 'ReadWrite'. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_container_app_environment_storage.this.access_mode
}

output "id" {
  description = "The ID of the Container App Environment Storage"
  value       = azurerm_container_app_environment_storage.this.id
}

