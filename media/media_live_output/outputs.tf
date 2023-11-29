output "archive_window_duration" {
  value = azurerm_media_live_output.this.archive_window_duration
}

output "asset_name" {
  value = azurerm_media_live_output.this.asset_name
}

output "live_event_id" {
  value = azurerm_media_live_output.this.live_event_id
}

output "name" {
  value = azurerm_media_live_output.this.name
}

output "description" {
  value = azurerm_media_live_output.this.description
}

output "hls_fragments_per_ts_segment" {
  value = azurerm_media_live_output.this.hls_fragments_per_ts_segment
}

output "manifest_name" {
  value = azurerm_media_live_output.this.manifest_name
}

output "output_snap_time_in_seconds" {
  value = azurerm_media_live_output.this.output_snap_time_in_seconds
}

output "rewind_window_duration" {
  value = azurerm_media_live_output.this.rewind_window_duration
}

output "id" {
  description = "The ID of the Live Output."
  value       = azurerm_media_live_output.this.id
}

