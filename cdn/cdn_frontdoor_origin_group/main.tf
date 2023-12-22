

resource "azurerm_cdn_frontdoor_origin_group" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  cdn_frontdoor_profile_id = var.cdn_frontdoor_profile_id

  load_balancing {
    additional_latency_in_milliseconds = lookup(load_balancing.value, "additional_latency_in_milliseconds", 50)
    sample_size                        = lookup(load_balancing.value, "sample_size", 4)
    successful_samples_required        = lookup(load_balancing.value, "successful_samples_required", 3)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "health_probe" { # var.health_probe
    for_each = var.health_probe != null ? var.health_probe : []
    content {
      protocol            = lookup(health_probe.value, "protocol")            # (Required) possible values: Http | Https
      interval_in_seconds = lookup(health_probe.value, "interval_in_seconds") # (Required) possible values: 5 | 31536000
      request_type        = lookup(health_probe.value, "request_type", "HEAD")
      path                = lookup(health_probe.value, "path", "/")
    }
  }

  restore_traffic_time_to_healed_or_new_endpoint_in_minutes = var.restore_traffic_time_to_healed_or_new_endpoint_in_minutes # Default: 10
  session_affinity_enabled                                  = var.session_affinity_enabled                                  # Default: True
}
