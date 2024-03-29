output "name" {
  value = azurerm_gallery_application_version.this.name
}

output "gallery_application_id" {
  value = azurerm_gallery_application_version.this.gallery_application_id
}

output "location" {
  value = azurerm_gallery_application_version.this.location
}

output "manage_action" {
  value = azurerm_gallery_application_version.this.manage_action
}

output "source" {
  value = azurerm_gallery_application_version.this.source
}

output "target_region" {
  value = azurerm_gallery_application_version.this.target_region
}

output "config_file" {
  value = azurerm_gallery_application_version.this.config_file
}

output "enable_health_check" {
  value = azurerm_gallery_application_version.this.enable_health_check
}

output "end_of_life_date" {
  value = azurerm_gallery_application_version.this.end_of_life_date
}

output "exclude_from_latest" {
  value = azurerm_gallery_application_version.this.exclude_from_latest
}

output "package_file" {
  value = azurerm_gallery_application_version.this.package_file
}

output "tags" {
  value = azurerm_gallery_application_version.this.tags
}

output "storage_account_type" {
  description = "The storage account type for the Gallery Application Version. Possible values are 'Standard_LRS', 'Premium_LRS' and 'Standard_ZRS'. Defaults to 'Standard_LRS'. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_gallery_application_version.this.storage_account_type
}

output "id" {
  description = "The ID of the Gallery Application Version."
  value       = azurerm_gallery_application_version.this.id
}

