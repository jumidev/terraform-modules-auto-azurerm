output "name" {
  value = azurerm_media_services_account_filter.this.name
}

output "resource_group_name" {
  value = azurerm_media_services_account_filter.this.resource_group_name
}

output "media_services_account_name" {
  value = azurerm_media_services_account_filter.this.media_services_account_name
}

output "first_quality_bitrate" {
  value = azurerm_media_services_account_filter.this.first_quality_bitrate
}

output "presentation_time_range" {
  value = azurerm_media_services_account_filter.this.presentation_time_range
}

output "track_selection" {
  value = azurerm_media_services_account_filter.this.track_selection
}

output "id" {
  description = "The ID of the Account Filter."
  value       = azurerm_media_services_account_filter.this.id
}

