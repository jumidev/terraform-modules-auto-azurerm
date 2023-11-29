data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_live_event" "this" {

  ########################################
  # required vars
  ########################################

  input {
    access_token                = lookup(input.value, "access_token", null)
    ip_access_control_allow     = lookup(input.value, "ip_access_control_allow", null)
    key_frame_interval_duration = lookup(input.value, "key_frame_interval_duration", null)
    streaming_protocol          = lookup(input.value, "streaming_protocol", null)
  }

  location                    = var.location
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  auto_start_enabled = var.auto_start_enabled

  dynamic "cross_site_access_policy" { # var.cross_site_access_policy
    for_each = var.cross_site_access_policy != null ? var.cross_site_access_policy : []
    content {
      client_access_policy = lookup(cross_site_access_policy.value, "client_access_policy", null)
      cross_domain_policy  = lookup(cross_site_access_policy.value, "cross_domain_policy", null)
    }
  }

  description = var.description

  dynamic "encoding" { # var.encoding
    for_each = var.encoding != null ? var.encoding : []
    content {
      key_frame_interval = lookup(encoding.value, "key_frame_interval", "PT2S")
      preset_name        = lookup(encoding.value, "preset_name", null)
      stretch_mode       = lookup(encoding.value, "stretch_mode", "None")
      type               = lookup(encoding.value, "type", "None")
    }
  }

  hostname_prefix = var.hostname_prefix

  dynamic "preview" { # var.preview
    for_each = var.preview != null ? var.preview : []
    content {
      alternative_media_id    = lookup(preview.value, "alternative_media_id", null)
      ip_access_control_allow = lookup(preview.value, "ip_access_control_allow", null)
      preview_locator         = lookup(preview.value, "preview_locator", null)
      streaming_policy_name   = lookup(preview.value, "streaming_policy_name", null)
    }
  }

  stream_options          = var.stream_options
  tags                    = var.tags
  transcription_languages = var.transcription_languages
  use_static_hostname     = var.use_static_hostname
}
