data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_streaming_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  location                    = var.location
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  scale_units                 = var.scale_units

  ########################################
  # optional vars
  ########################################

  dynamic "access_control" { # var.access_control
    for_each = var.access_control != null ? var.access_control : []
    content {

      dynamic "akamai_signature_header_authentication_key" { # access_control.value.akamai_signature_header_authentication_key
        for_each = access_control.value.akamai_signature_header_authentication_key != null ? access_control.value.akamai_signature_header_authentication_key : []
        content {
          base64_key = lookup(akamai_signature_header_authentication_key.value, "base64_key", null)
          expiration = lookup(akamai_signature_header_authentication_key.value, "expiration", null)
          identifier = lookup(akamai_signature_header_authentication_key.value, "identifier", null)
        }
      }


      dynamic "ip_allow" { # access_control.value.ip_allow
        for_each = access_control.value.ip_allow != null ? access_control.value.ip_allow : []
        content {
          address              = lookup(ip_allow.value, "address", null)
          name                 = ip_allow.key
          subnet_prefix_length = lookup(ip_allow.value, "subnet_prefix_length", null)
        }
      }

    }
  }

  auto_start_enabled = var.auto_start_enabled
  cdn_enabled        = var.cdn_enabled
  cdn_profile        = var.cdn_profile
  cdn_provider       = var.cdn_provider

  dynamic "cross_site_access_policy" { # var.cross_site_access_policy
    for_each = var.cross_site_access_policy != null ? var.cross_site_access_policy : []
    content {
      client_access_policy = lookup(cross_site_access_policy.value, "client_access_policy", null)
      cross_domain_policy  = lookup(cross_site_access_policy.value, "cross_domain_policy", null)
    }
  }

  custom_host_names     = var.custom_host_names
  description           = var.description
  max_cache_age_seconds = var.max_cache_age_seconds
  tags                  = var.tags
}
