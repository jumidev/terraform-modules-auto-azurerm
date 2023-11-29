

resource "azurerm_media_live_output" "this" {

  ########################################
  # required vars
  ########################################
  archive_window_duration = var.archive_window_duration
  asset_name              = var.asset_name
  live_event_id           = var.live_event_id
  name                    = var.name

  ########################################
  # optional vars
  ########################################
  description                  = var.description
  hls_fragments_per_ts_segment = var.hls_fragments_per_ts_segment
  manifest_name                = var.manifest_name
  output_snap_time_in_seconds  = var.output_snap_time_in_seconds
  rewind_window_duration       = var.rewind_window_duration
}
