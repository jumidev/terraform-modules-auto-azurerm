data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################

  dynamic "additional_location" { # var.additional_location
    for_each = var.additional_location != null ? var.additional_location : []
    content {
      location             = lookup(additional_location.value, "location") # (Required) 
      capacity             = lookup(additional_location.value, "capacity", null)
      zones                = lookup(additional_location.value, "zones", null)
      public_ip_address_id = lookup(additional_location.value, "public_ip_address_id", null)

      dynamic "virtual_network_configuration" { # additional_location.value.virtual_network_configuration
        for_each = additional_location.value.virtual_network_configuration != null ? additional_location.value.virtual_network_configuration : []
        content {
          subnet_id = lookup(virtual_network_configuration.value, "subnet_id") # (Required) 
        }
      }

      gateway_disabled = lookup(additional_location.value, "gateway_disabled", null)
    }
  }

  certificate                = var.certificate
  client_certificate_enabled = var.client_certificate_enabled

  dynamic "delegation" { # var.delegation
    for_each = var.delegation != null ? var.delegation : []
    content {
      subscriptions_enabled     = lookup(delegation.value, "subscriptions_enabled", false)
      user_registration_enabled = lookup(delegation.value, "user_registration_enabled", false)
      url                       = lookup(delegation.value, "url", null)
      validation_key            = lookup(delegation.value, "validation_key", null)
    }
  }

  gateway_disabled = var.gateway_disabled
  min_api_version  = var.min_api_version
  zones            = var.zones

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "hostname_configuration" { # var.hostname_configuration
    for_each = var.hostname_configuration != null ? var.hostname_configuration : []
    content {
      management       = lookup(hostname_configuration.value, "management", null)
      portal           = lookup(hostname_configuration.value, "portal", null)
      developer_portal = lookup(hostname_configuration.value, "developer_portal", null)
      proxy            = lookup(hostname_configuration.value, "proxy", null)
      scm              = lookup(hostname_configuration.value, "scm", null)
    }
  }

  notification_sender_email = var.notification_sender_email

  dynamic "policy" { # var.policy
    for_each = var.policy != null ? var.policy : []
    content {
      xml_content = lookup(policy.value, "xml_content", null)
      xml_link    = lookup(policy.value, "xml_link", null)
    }
  }


  dynamic "protocols" { # var.protocols
    for_each = var.protocols != null ? var.protocols : []
    content {
      enable_http2 = lookup(protocols.value, "enable_http2", false)
    }
  }


  dynamic "security" { # var.security
    for_each = var.security != null ? var.security : []
    content {
      enable_backend_ssl30                                = lookup(security.value, "enable_backend_ssl30", false)
      enable_backend_tls10                                = lookup(security.value, "enable_backend_tls10", false)
      enable_backend_tls11                                = lookup(security.value, "enable_backend_tls11", false)
      enable_frontend_ssl30                               = lookup(security.value, "enable_frontend_ssl30", false)
      enable_frontend_tls10                               = lookup(security.value, "enable_frontend_tls10", false)
      enable_frontend_tls11                               = lookup(security.value, "enable_frontend_tls11", false)
      tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled = lookup(security.value, "tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled", false)
      tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled = lookup(security.value, "tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled", false)
      tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled   = lookup(security.value, "tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled", false)
      tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled   = lookup(security.value, "tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled", false)
      tls_rsa_with_aes128_cbc_sha256_ciphers_enabled      = lookup(security.value, "tls_rsa_with_aes128_cbc_sha256_ciphers_enabled", false)
      tls_rsa_with_aes128_cbc_sha_ciphers_enabled         = lookup(security.value, "tls_rsa_with_aes128_cbc_sha_ciphers_enabled", false)
      tls_rsa_with_aes128_gcm_sha256_ciphers_enabled      = lookup(security.value, "tls_rsa_with_aes128_gcm_sha256_ciphers_enabled", false)
      tls_rsa_with_aes256_gcm_sha384_ciphers_enabled      = lookup(security.value, "tls_rsa_with_aes256_gcm_sha384_ciphers_enabled", false)
      tls_rsa_with_aes256_cbc_sha256_ciphers_enabled      = lookup(security.value, "tls_rsa_with_aes256_cbc_sha256_ciphers_enabled", false)
      tls_rsa_with_aes256_cbc_sha_ciphers_enabled         = lookup(security.value, "tls_rsa_with_aes256_cbc_sha_ciphers_enabled", false)
      triple_des_ciphers_enabled                          = lookup(security.value, "triple_des_ciphers_enabled", null)
    }
  }


  dynamic "sign_in" { # var.sign_in
    for_each = var.sign_in != null ? var.sign_in : []
    content {
      enabled = lookup(sign_in.value, "enabled") # (Required) 
    }
  }


  dynamic "sign_up" { # var.sign_up
    for_each = var.sign_up != null ? var.sign_up : []
    content {
      enabled = lookup(sign_up.value, "enabled") # (Required) 

      dynamic "terms_of_service" { # sign_up.value.terms_of_service
        for_each = sign_up.value.terms_of_service != null ? sign_up.value.terms_of_service : []
        content {
          consent_required = lookup(terms_of_service.value, "consent_required") # (Required) 
          enabled          = lookup(terms_of_service.value, "enabled")          # (Required) 
          text             = lookup(terms_of_service.value, "text", null)
        }
      }

    }
  }


  dynamic "tenant_access" { # var.tenant_access
    for_each = var.tenant_access != null ? var.tenant_access : []
    content {
      enabled = lookup(tenant_access.value, "enabled") # (Required) 
    }
  }

  public_ip_address_id          = var.public_ip_address_id
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  virtual_network_type          = var.virtual_network_type          # Default: None

  dynamic "virtual_network_configuration" { # var.virtual_network_configuration
    for_each = var.virtual_network_configuration != null ? var.virtual_network_configuration : []
    content {
      subnet_id = lookup(virtual_network_configuration.value, "subnet_id") # (Required) 
    }
  }

  tags = var.tags
}
