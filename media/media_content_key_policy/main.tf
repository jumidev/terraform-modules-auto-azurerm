data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_content_key_policy" "this" {

  ########################################
  # required vars
  ########################################
  media_services_account_name = var.media_services_account_name
  name                        = var.name

  dynamic "policy_option" { # var.policy_option
    for_each = var.policy_option != null ? var.policy_option : []
    content {
      name                            = policy_option.key
      clear_key_configuration_enabled = lookup(policy_option.value, "clear_key_configuration_enabled", null)

      dynamic "fairplay_configuration" { # policy_option.value.fairplay_configuration
        for_each = policy_option.value.fairplay_configuration != null ? policy_option.value.fairplay_configuration : []
        content {
          ask = lookup(fairplay_configuration.value, "ask", null)

          dynamic "offline_rental_configuration" { # fairplay_configuration.value.offline_rental_configuration
            for_each = fairplay_configuration.value.offline_rental_configuration != null ? fairplay_configuration.value.offline_rental_configuration : []
            content {
              playback_duration_seconds = lookup(offline_rental_configuration.value, "playback_duration_seconds", null)
              storage_duration_seconds  = lookup(offline_rental_configuration.value, "storage_duration_seconds", null)
            }
          }

          pfx                       = lookup(fairplay_configuration.value, "pfx", null)
          pfx_password              = lookup(fairplay_configuration.value, "pfx_password", null)
          rental_and_lease_key_type = lookup(fairplay_configuration.value, "rental_and_lease_key_type", null)
          rental_duration_seconds   = lookup(fairplay_configuration.value, "rental_duration_seconds", null)
        }
      }

      open_restriction_enabled        = lookup(policy_option.value, "open_restriction_enabled", null)
      playready_configuration_license = lookup(policy_option.value, "playready_configuration_license", null)
      playready_response_custom_data  = lookup(policy_option.value, "playready_response_custom_data", null)

      dynamic "token_restriction" { # policy_option.value.token_restriction
        for_each = policy_option.value.token_restriction != null ? policy_option.value.token_restriction : []
        content {
          alternate_key                      = lookup(token_restriction.value, "alternate_key", null)
          audience                           = lookup(token_restriction.value, "audience", null)
          issuer                             = lookup(token_restriction.value, "issuer", null)
          open_id_connect_discovery_document = lookup(token_restriction.value, "open_id_connect_discovery_document", null)
          primary_rsa_token_key_exponent     = lookup(token_restriction.value, "primary_rsa_token_key_exponent", null)
          primary_rsa_token_key_modulus      = lookup(token_restriction.value, "primary_rsa_token_key_modulus", null)
          primary_symmetric_token_key        = lookup(token_restriction.value, "primary_symmetric_token_key", null)
          primary_x509_token_key_raw         = lookup(token_restriction.value, "primary_x509_token_key_raw", null)
          required_claim                     = lookup(token_restriction.value, "required_claim", null)
          token_type                         = lookup(token_restriction.value, "token_type", null)
        }
      }

      widevine_configuration_template = lookup(policy_option.value, "widevine_configuration_template", null)
    }
  }

  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description = var.description
}
