data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_signalr_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  sku {
    name     = lookup(sku.value, "name")     # (Required) 
    capacity = lookup(sku.value, "capacity") # (Required) 
  }


  ########################################
  # optional vars
  ########################################

  dynamic "cors" { # var.cors
    for_each = var.cors != null ? var.cors : []
    content {
      allowed_origins = lookup(cors.value, "allowed_origins") # (Required) 
    }
  }

  connectivity_logs_enabled = var.connectivity_logs_enabled # Default: False
  messaging_logs_enabled    = var.messaging_logs_enabled    # Default: False
  http_request_logs_enabled = var.http_request_logs_enabled # Default: False
  live_trace_enabled        = var.live_trace_enabled        # Default: False

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  public_network_access_enabled            = var.public_network_access_enabled            # Default: True
  local_auth_enabled                       = var.local_auth_enabled                       # Default: True
  aad_auth_enabled                         = var.aad_auth_enabled                         # Default: True
  tls_client_cert_enabled                  = var.tls_client_cert_enabled                  # Default: False
  serverless_connection_timeout_in_seconds = var.serverless_connection_timeout_in_seconds # Default: 30
  service_mode                             = var.service_mode                             # Default: Default

  dynamic "upstream_endpoint" { # var.upstream_endpoint
    for_each = var.upstream_endpoint != null ? var.upstream_endpoint : []
    content {
      url_template              = lookup(upstream_endpoint.value, "url_template")     # (Required) possible values: http://host.com/{hub}/api/{category}/{event}
      category_pattern          = lookup(upstream_endpoint.value, "category_pattern") # (Required) 
      event_pattern             = lookup(upstream_endpoint.value, "event_pattern")    # (Required) 
      hub_pattern               = lookup(upstream_endpoint.value, "hub_pattern")      # (Required) 
      user_assigned_identity_id = lookup(upstream_endpoint.value, "user_assigned_identity_id", null)
    }
  }


  dynamic "live_trace" { # var.live_trace
    for_each = var.live_trace != null ? var.live_trace : []
    content {
      enabled                   = lookup(live_trace.value, "enabled", true)
      messaging_logs_enabled    = lookup(live_trace.value, "messaging_logs_enabled", true)
      connectivity_logs_enabled = lookup(live_trace.value, "connectivity_logs_enabled", true)
      http_request_logs_enabled = lookup(live_trace.value, "http_request_logs_enabled", true)
    }
  }

  tags = var.tags
}
