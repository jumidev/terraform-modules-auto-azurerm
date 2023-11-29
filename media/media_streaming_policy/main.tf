data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_streaming_policy" "this" {

  ########################################
  # required vars
  ########################################
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "common_encryption_cbcs" { # var.common_encryption_cbcs
    for_each = var.common_encryption_cbcs != null ? var.common_encryption_cbcs : []
    content {

      dynamic "clear_key_encryption" { # common_encryption_cbcs.value.clear_key_encryption
        for_each = common_encryption_cbcs.value.clear_key_encryption != null ? common_encryption_cbcs.value.clear_key_encryption : []
        content {
          custom_keys_acquisition_url_template = lookup(clear_key_encryption.value, "custom_keys_acquisition_url_template") # (Required) 
        }
      }


      dynamic "default_content_key" { # common_encryption_cbcs.value.default_content_key
        for_each = common_encryption_cbcs.value.default_content_key != null ? common_encryption_cbcs.value.default_content_key : []
        content {
          label       = lookup(default_content_key.value, "label", null)
          policy_name = lookup(default_content_key.value, "policy_name", null)
        }
      }


      dynamic "drm_fairplay" { # common_encryption_cbcs.value.drm_fairplay
        for_each = common_encryption_cbcs.value.drm_fairplay != null ? common_encryption_cbcs.value.drm_fairplay : []
        content {
          allow_persistent_license                = lookup(drm_fairplay.value, "allow_persistent_license", null)
          custom_license_acquisition_url_template = lookup(drm_fairplay.value, "custom_license_acquisition_url_template", null)
        }
      }


      dynamic "enabled_protocols" { # common_encryption_cbcs.value.enabled_protocols
        for_each = common_encryption_cbcs.value.enabled_protocols != null ? common_encryption_cbcs.value.enabled_protocols : []
        content {
          dash             = lookup(enabled_protocols.value, "dash", null)
          download         = lookup(enabled_protocols.value, "download", null)
          hls              = lookup(enabled_protocols.value, "hls", null)
          smooth_streaming = lookup(enabled_protocols.value, "smooth_streaming", null)
        }
      }

    }
  }


  dynamic "common_encryption_cenc" { # var.common_encryption_cenc
    for_each = var.common_encryption_cenc != null ? var.common_encryption_cenc : []
    content {

      dynamic "clear_key_encryption" { # common_encryption_cenc.value.clear_key_encryption
        for_each = common_encryption_cenc.value.clear_key_encryption != null ? common_encryption_cenc.value.clear_key_encryption : []
        content {
          custom_keys_acquisition_url_template = lookup(clear_key_encryption.value, "custom_keys_acquisition_url_template") # (Required) 
        }
      }


      dynamic "clear_track" { # common_encryption_cenc.value.clear_track
        for_each = common_encryption_cenc.value.clear_track != null ? common_encryption_cenc.value.clear_track : []
        content {

          dynamic "condition" { # clear_track.value.condition
            for_each = clear_track.value.condition != null ? clear_track.value.condition : []
            content {
              operation = lookup(condition.value, "operation") # (Required) 
              property  = lookup(condition.value, "property")  # (Required) 
              value     = lookup(condition.value, "value")     # (Required) 
            }
          }

        }
      }


      dynamic "content_key_to_track_mapping" { # common_encryption_cenc.value.content_key_to_track_mapping
        for_each = common_encryption_cenc.value.content_key_to_track_mapping != null ? common_encryption_cenc.value.content_key_to_track_mapping : []
        content {
          label       = lookup(content_key_to_track_mapping.value, "label", null)
          policy_name = lookup(content_key_to_track_mapping.value, "policy_name", null)

          dynamic "track" { # content_key_to_track_mapping.value.track
            for_each = content_key_to_track_mapping.value.track != null ? content_key_to_track_mapping.value.track : []
            content {

              dynamic "condition" { # track.value.condition
                for_each = track.value.condition != null ? track.value.condition : []
                content {
                  operation = lookup(condition.value, "operation") # (Required) 
                  property  = lookup(condition.value, "property")  # (Required) 
                  value     = lookup(condition.value, "value")     # (Required) 
                }
              }

            }
          }

        }
      }


      dynamic "default_content_key" { # common_encryption_cenc.value.default_content_key
        for_each = common_encryption_cenc.value.default_content_key != null ? common_encryption_cenc.value.default_content_key : []
        content {
          label       = lookup(default_content_key.value, "label", null)
          policy_name = lookup(default_content_key.value, "policy_name", null)
        }
      }


      dynamic "drm_playready" { # common_encryption_cenc.value.drm_playready
        for_each = common_encryption_cenc.value.drm_playready != null ? common_encryption_cenc.value.drm_playready : []
        content {
          custom_attributes                       = lookup(drm_playready.value, "custom_attributes", null)
          custom_license_acquisition_url_template = lookup(drm_playready.value, "custom_license_acquisition_url_template", null)
        }
      }

      drm_widevine_custom_license_acquisition_url_template = lookup(common_encryption_cenc.value, "drm_widevine_custom_license_acquisition_url_template", null)

      dynamic "enabled_protocols" { # common_encryption_cenc.value.enabled_protocols
        for_each = common_encryption_cenc.value.enabled_protocols != null ? common_encryption_cenc.value.enabled_protocols : []
        content {
          dash             = lookup(enabled_protocols.value, "dash", null)
          download         = lookup(enabled_protocols.value, "download", null)
          hls              = lookup(enabled_protocols.value, "hls", null)
          smooth_streaming = lookup(enabled_protocols.value, "smooth_streaming", null)
        }
      }

    }
  }

  default_content_key_policy_name = var.default_content_key_policy_name

  dynamic "envelope_encryption" { # var.envelope_encryption
    for_each = var.envelope_encryption != null ? var.envelope_encryption : []
    content {
      custom_keys_acquisition_url_template = lookup(envelope_encryption.value, "custom_keys_acquisition_url_template", null)

      dynamic "default_content_key" { # envelope_encryption.value.default_content_key
        for_each = envelope_encryption.value.default_content_key != null ? envelope_encryption.value.default_content_key : []
        content {
          label       = lookup(default_content_key.value, "label", null)
          policy_name = lookup(default_content_key.value, "policy_name", null)
        }
      }


      dynamic "enabled_protocols" { # envelope_encryption.value.enabled_protocols
        for_each = envelope_encryption.value.enabled_protocols != null ? envelope_encryption.value.enabled_protocols : []
        content {
          dash             = lookup(enabled_protocols.value, "dash", null)
          download         = lookup(enabled_protocols.value, "download", null)
          hls              = lookup(enabled_protocols.value, "hls", null)
          smooth_streaming = lookup(enabled_protocols.value, "smooth_streaming", null)
        }
      }

    }
  }


  dynamic "no_encryption_enabled_protocols" { # var.no_encryption_enabled_protocols
    for_each = var.no_encryption_enabled_protocols != null ? var.no_encryption_enabled_protocols : []
    content {
      dash             = lookup(no_encryption_enabled_protocols.value, "dash", null)
      download         = lookup(no_encryption_enabled_protocols.value, "download", null)
      hls              = lookup(no_encryption_enabled_protocols.value, "hls", null)
      smooth_streaming = lookup(no_encryption_enabled_protocols.value, "smooth_streaming", null)
    }
  }

}
