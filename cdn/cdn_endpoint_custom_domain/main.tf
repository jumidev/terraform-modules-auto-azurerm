

resource "azurerm_cdn_endpoint_custom_domain" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  cdn_endpoint_id = var.cdn_endpoint_id
  host_name       = var.host_name

  ########################################
  # optional vars
  ########################################

  dynamic "cdn_managed_https" { # var.cdn_managed_https
    for_each = var.cdn_managed_https != null ? var.cdn_managed_https : []
    content {
      certificate_type = lookup(cdn_managed_https.value, "certificate_type") # (Required) possible values: Shared | Dedicated
      protocol_type    = lookup(cdn_managed_https.value, "protocol_type")    # (Required) possible values: ServerNameIndication | IPBased
      tls_version      = lookup(cdn_managed_https.value, "tls_version", "TLS12")
    }
  }


  dynamic "user_managed_https" { # var.user_managed_https
    for_each = var.user_managed_https != null ? var.user_managed_https : []
    content {
      key_vault_certificate_id = lookup(user_managed_https.value, "key_vault_certificate_id", null)
      key_vault_secret_id      = lookup(user_managed_https.value, "key_vault_secret_id", null)
      tls_version              = lookup(user_managed_https.value, "tls_version", "TLS12")
    }
  }

}
