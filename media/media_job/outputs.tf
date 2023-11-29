output "input_asset" {
  value = azurerm_media_job.this.input_asset
}

output "media_services_account_name" {
  value = azurerm_media_job.this.media_services_account_name
}

output "name" {
  value = azurerm_media_job.this.name
}

output "output_asset" {
  value = azurerm_media_job.this.output_asset
}

output "resource_group_name" {
  value = azurerm_media_job.this.resource_group_name
}

output "transform_name" {
  value = azurerm_media_job.this.transform_name
}

output "description" {
  value = azurerm_media_job.this.description
}

output "priority" {
  value = azurerm_media_job.this.priority
}

output "id" {
  description = "The ID of the Media Job."
  value       = azurerm_media_job.this.id
}

