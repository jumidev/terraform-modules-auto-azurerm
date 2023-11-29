output "asset_id" {
  value = azurerm_media_asset_filter.this.asset_id
}

output "name" {
  value = azurerm_media_asset_filter.this.name
}

output "first_quality_bitrate" {
  value = azurerm_media_asset_filter.this.first_quality_bitrate
}

output "presentation_time_range" {
  value = azurerm_media_asset_filter.this.presentation_time_range
}

output "track_selection" {
  value = azurerm_media_asset_filter.this.track_selection
}

output "id" {
  description = "The ID of the Asset Filter."
  value       = azurerm_media_asset_filter.this.id
}

