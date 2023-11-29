

resource "azurerm_media_asset_filter" "this" {

  ########################################
  # required vars
  ########################################
  asset_id = var.asset_id
  name     = var.name

  ########################################
  # optional vars
  ########################################
  first_quality_bitrate = var.first_quality_bitrate

  dynamic "presentation_time_range" { # var.presentation_time_range
    for_each = var.presentation_time_range != null ? var.presentation_time_range : []
    content {
      end_in_units                  = lookup(presentation_time_range.value, "end_in_units", null)
      force_end                     = lookup(presentation_time_range.value, "force_end", null)
      live_backoff_in_units         = lookup(presentation_time_range.value, "live_backoff_in_units", null)
      presentation_window_in_units  = lookup(presentation_time_range.value, "presentation_window_in_units", null)
      start_in_units                = lookup(presentation_time_range.value, "start_in_units", null)
      unit_timescale_in_miliseconds = lookup(presentation_time_range.value, "unit_timescale_in_miliseconds", null)
    }
  }


  dynamic "track_selection" { # var.track_selection
    for_each = var.track_selection != null ? var.track_selection : []
    content {
      condition = lookup(track_selection.value, "condition") # (Required) 
    }
  }

}
