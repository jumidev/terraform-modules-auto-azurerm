data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_web_pubsub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  capacity                      = var.capacity
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags

  dynamic "live_trace" { # var.live_trace
    for_each = var.live_trace != null ? var.live_trace : []
    content {
      enabled                   = lookup(live_trace.value, "enabled", true)
      messaging_logs_enabled    = lookup(live_trace.value, "messaging_logs_enabled", true)
      connectivity_logs_enabled = lookup(live_trace.value, "connectivity_logs_enabled", true)
      http_request_logs_enabled = lookup(live_trace.value, "http_request_logs_enabled", true)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  local_auth_enabled      = var.local_auth_enabled      # Default: True
  aad_auth_enabled        = var.aad_auth_enabled        # Default: True
  tls_client_cert_enabled = var.tls_client_cert_enabled # Default: False
}
