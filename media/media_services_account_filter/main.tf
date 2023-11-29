data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_services_account_filter" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  media_services_account_name = var.media_services_account_name

  ########################################
  # optional vars
  ########################################
  first_quality_bitrate = var.first_quality_bitrate

  dynamic "presentation_time_range" { # var.presentation_time_range
    for_each = var.presentation_time_range != null ? var.presentation_time_range : []
    content {
      unit_timescale_in_milliseconds = lookup(presentation_time_range.value, "unit_timescale_in_milliseconds") # (Required) 
      end_in_units                   = lookup(presentation_time_range.value, "end_in_units", null)
      force_end                      = lookup(presentation_time_range.value, "force_end", null)
      live_backoff_in_units          = lookup(presentation_time_range.value, "live_backoff_in_units", null)
      presentation_window_in_units   = lookup(presentation_time_range.value, "presentation_window_in_units", null)
      start_in_units                 = lookup(presentation_time_range.value, "start_in_units", null)
    }
  }


  dynamic "track_selection" { # var.track_selection
    for_each = var.track_selection != null ? var.track_selection : []
    content {
      condition = lookup(track_selection.value, "condition") # (Required) 
    }
  }

}
