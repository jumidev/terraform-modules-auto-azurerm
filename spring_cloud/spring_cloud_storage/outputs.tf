output "name" {
  value = azurerm_spring_cloud_storage.this.name
}

output "spring_cloud_service_id" {
  value = azurerm_spring_cloud_storage.this.spring_cloud_service_id
}

output "storage_account_key" {
  value     = azurerm_spring_cloud_storage.this.storage_account_key
  sensitive = true
}

output "storage_account_name" {
  value = azurerm_spring_cloud_storage.this.storage_account_name
}

output "id" {
  description = "The ID of the Spring Cloud Storage."
  value       = azurerm_spring_cloud_storage.this.id
}

