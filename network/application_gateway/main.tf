data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "backend_address_pool" { # var.backend_address_pool
    for_each = var.backend_address_pool != null ? var.backend_address_pool : []
    content {
      name         = backend_address_pool.key
      fqdns        = lookup(backend_address_pool.value, "fqdns", null)
      ip_addresses = lookup(backend_address_pool.value, "ip_addresses", null)
    }
  }


  dynamic "backend_http_settings" { # var.backend_http_settings
    for_each = var.backend_http_settings != null ? var.backend_http_settings : []
    content {
      name = backend_http_settings.key
    }
  }


  dynamic "frontend_ip_configuration" { # var.frontend_ip_configuration
    for_each = var.frontend_ip_configuration != null ? var.frontend_ip_configuration : []
    content {
      name                            = frontend_ip_configuration.key
      subnet_id                       = lookup(frontend_ip_configuration.value, "subnet_id", null)
      private_ip_address              = lookup(frontend_ip_configuration.value, "private_ip_address", null)
      public_ip_address_id            = lookup(frontend_ip_configuration.value, "public_ip_address_id", null)
      private_ip_address_allocation   = lookup(frontend_ip_configuration.value, "private_ip_address_allocation", "Dynamic")
      private_link_configuration_name = lookup(frontend_ip_configuration.value, "private_link_configuration_name", null)
    }
  }


  dynamic "frontend_port" { # var.frontend_port
    for_each = var.frontend_port != null ? var.frontend_port : []
    content {
      name = frontend_port.key
      port = lookup(frontend_port.value, "port") # (Required) 
    }
  }


  dynamic "gateway_ip_configuration" { # var.gateway_ip_configuration
    for_each = var.gateway_ip_configuration != null ? var.gateway_ip_configuration : []
    content {
      name      = gateway_ip_configuration.key
      subnet_id = lookup(gateway_ip_configuration.value, "subnet_id") # (Required) 
    }
  }


  dynamic "http_listener" { # var.http_listener
    for_each = var.http_listener != null ? var.http_listener : []
    content {
      name                           = http_listener.key
      frontend_ip_configuration_name = lookup(http_listener.value, "frontend_ip_configuration_name", "primary") # (Required) 
      frontend_port_name             = lookup(http_listener.value, "frontend_port_name")                        # (Required) 
      host_name                      = lookup(http_listener.value, "host_name", null)
      host_names                     = lookup(http_listener.value, "host_names", null)
      protocol                       = lookup(http_listener.value, "protocol") # (Required) possible values: Http | Https
      require_sni                    = lookup(http_listener.value, "require_sni", false)
      ssl_certificate_name           = lookup(http_listener.value, "ssl_certificate_name", null)

      dynamic "custom_error_configuration" { # http_listener.value.custom_error_configuration
        for_each = http_listener.value.custom_error_configuration != null ? http_listener.value.custom_error_configuration : []
        content {
          status_code           = lookup(custom_error_configuration.value, "status_code")           # (Required) possible values: HttpStatus403 | HttpStatus502
          custom_error_page_url = lookup(custom_error_configuration.value, "custom_error_page_url") # (Required) 
        }
      }

      firewall_policy_id = lookup(http_listener.value, "firewall_policy_id", null)
      ssl_profile_name   = lookup(http_listener.value, "ssl_profile_name", null)
    }
  }


  dynamic "request_routing_rule" { # var.request_routing_rule
    for_each = var.request_routing_rule != null ? var.request_routing_rule : []
    content {
      name                        = request_routing_rule.key
      rule_type                   = lookup(request_routing_rule.value, "rule_type")          # (Required) possible values: Basic | PathBasedRouting
      http_listener_name          = lookup(request_routing_rule.value, "http_listener_name") # (Required) 
      backend_address_pool_name   = lookup(request_routing_rule.value, "backend_address_pool_name", null)
      backend_http_settings_name  = lookup(request_routing_rule.value, "backend_http_settings_name", null)
      redirect_configuration_name = lookup(request_routing_rule.value, "redirect_configuration_name", null)
      rewrite_rule_set_name       = lookup(request_routing_rule.value, "rewrite_rule_set_name", null)
      url_path_map_name           = lookup(request_routing_rule.value, "url_path_map_name", null)
      priority                    = lookup(request_routing_rule.value, "priority", null)
    }
  }


  sku {
    name     = lookup(sku.value, "name") # (Required) 
    tier     = lookup(sku.value, "tier") # (Required) 
    capacity = lookup(sku.value, "capacity", null)
  }


  ########################################
  # optional vars
  ########################################
  fips_enabled = var.fips_enabled

  dynamic "global" { # var.global
    for_each = var.global != null ? var.global : []
    content {
      request_buffering_enabled  = lookup(global.value, "request_buffering_enabled")  # (Required) 
      response_buffering_enabled = lookup(global.value, "response_buffering_enabled") # (Required) 
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }


  dynamic "private_link_configuration" { # var.private_link_configuration
    for_each = var.private_link_configuration != null ? var.private_link_configuration : []
    content {
      name = private_link_configuration.key

      dynamic "ip_configuration" { # private_link_configuration.value.ip_configuration
        for_each = private_link_configuration.value.ip_configuration != null ? private_link_configuration.value.ip_configuration : []
        content {
          name                          = ip_configuration.key
          subnet_id                     = lookup(ip_configuration.value, "subnet_id")                                # (Required) 
          private_ip_address_allocation = lookup(ip_configuration.value, "private_ip_address_allocation", "Dynamic") # (Required) possible values: Dynamic | Static
          primary                       = lookup(ip_configuration.value, "primary", true)                            # (Required) 
          private_ip_address            = lookup(ip_configuration.value, "private_ip_address", null)
        }
      }

    }
  }

  zones = var.zones

  dynamic "trusted_client_certificate" { # var.trusted_client_certificate
    for_each = var.trusted_client_certificate != null ? var.trusted_client_certificate : []
    content {
      name = trusted_client_certificate.key
      data = lookup(trusted_client_certificate.value, "data") # (Required) 
    }
  }


  dynamic "ssl_profile" { # var.ssl_profile
    for_each = var.ssl_profile != null ? var.ssl_profile : []
    content {
      name                                 = ssl_profile.key
      trusted_client_certificate_names     = lookup(ssl_profile.value, "trusted_client_certificate_names", null)
      verify_client_cert_issuer_dn         = lookup(ssl_profile.value, "verify_client_cert_issuer_dn", false)
      verify_client_certificate_revocation = lookup(ssl_profile.value, "verify_client_certificate_revocation", null)

      dynamic "ssl_policy" { # ssl_profile.value.ssl_policy
        for_each = ssl_profile.value.ssl_policy != null ? ssl_profile.value.ssl_policy : []
        content {
          disabled_protocols   = lookup(ssl_policy.value, "disabled_protocols", null)
          policy_type          = lookup(ssl_policy.value, "policy_type", null)
          policy_name          = lookup(ssl_policy.value, "policy_name", null)
          cipher_suites        = lookup(ssl_policy.value, "cipher_suites", null)
          min_protocol_version = lookup(ssl_policy.value, "min_protocol_version", null)
        }
      }

    }
  }


  dynamic "authentication_certificate" { # var.authentication_certificate
    for_each = var.authentication_certificate != null ? var.authentication_certificate : []
    content {
      name = authentication_certificate.key
      data = lookup(authentication_certificate.value, "data") # (Required) 
    }
  }


  dynamic "trusted_root_certificate" { # var.trusted_root_certificate
    for_each = var.trusted_root_certificate != null ? var.trusted_root_certificate : []
    content {
      name                = trusted_root_certificate.key
      data                = lookup(trusted_root_certificate.value, "data", null)
      key_vault_secret_id = lookup(trusted_root_certificate.value, "key_vault_secret_id", null)
    }
  }


  dynamic "ssl_policy" { # var.ssl_policy
    for_each = var.ssl_policy != null ? var.ssl_policy : []
    content {
      disabled_protocols   = lookup(ssl_policy.value, "disabled_protocols", null)
      policy_type          = lookup(ssl_policy.value, "policy_type", null)
      policy_name          = lookup(ssl_policy.value, "policy_name", null)
      cipher_suites        = lookup(ssl_policy.value, "cipher_suites", null)
      min_protocol_version = lookup(ssl_policy.value, "min_protocol_version", null)
    }
  }

  enable_http2                      = var.enable_http2 # Default: False
  force_firewall_policy_association = var.force_firewall_policy_association

  dynamic "probe" { # var.probe
    for_each = var.probe != null ? var.probe : []
    content {
      host                                      = lookup(probe.value, "host", null)
      interval                                  = lookup(probe.value, "interval") # (Required) 
      name                                      = probe.key
      protocol                                  = lookup(probe.value, "protocol")            # (Required) possible values: Http | Https
      path                                      = lookup(probe.value, "path")                # (Required) 
      timeout                                   = lookup(probe.value, "timeout")             # (Required) 
      unhealthy_threshold                       = lookup(probe.value, "unhealthy_threshold") # (Required) 
      port                                      = lookup(probe.value, "port", null)
      pick_host_name_from_backend_http_settings = lookup(probe.value, "pick_host_name_from_backend_http_settings", false)

      dynamic "match" { # probe.value.match
        for_each = probe.value.match != null ? probe.value.match : []
        content {
          body        = lookup(match.value, "body", null)
          status_code = lookup(match.value, "status_code") # (Required) 
        }
      }

      minimum_servers = lookup(probe.value, "minimum_servers", "0")
    }
  }


  dynamic "ssl_certificate" { # var.ssl_certificate
    for_each = var.ssl_certificate != null ? var.ssl_certificate : []
    content {
      name                = ssl_certificate.key
      data                = lookup(ssl_certificate.value, "data", null)
      password            = lookup(ssl_certificate.value, "password", null)
      key_vault_secret_id = lookup(ssl_certificate.value, "key_vault_secret_id", null)
    }
  }

  tags = var.tags

  dynamic "url_path_map" { # var.url_path_map
    for_each = var.url_path_map != null ? var.url_path_map : []
    content {
      name                                = url_path_map.key
      default_backend_address_pool_name   = lookup(url_path_map.value, "default_backend_address_pool_name", null)
      default_backend_http_settings_name  = lookup(url_path_map.value, "default_backend_http_settings_name", null)
      default_redirect_configuration_name = lookup(url_path_map.value, "default_redirect_configuration_name", null)
      default_rewrite_rule_set_name       = lookup(url_path_map.value, "default_rewrite_rule_set_name", null)
      path_rule                           = lookup(url_path_map.value, "path_rule") # (Required) 
    }
  }


  dynamic "waf_configuration" { # var.waf_configuration
    for_each = var.waf_configuration != null ? var.waf_configuration : []
    content {
      enabled          = lookup(waf_configuration.value, "enabled")       # (Required) 
      firewall_mode    = lookup(waf_configuration.value, "firewall_mode") # (Required) possible values: Detection | Prevention
      rule_set_type    = lookup(waf_configuration.value, "rule_set_type", "OWASP")
      rule_set_version = lookup(waf_configuration.value, "rule_set_version") # (Required) possible values: 0.1 | 1.0 | 2.2.9 | 3.0 | 3.1 | 3.2

      dynamic "disabled_rule_group" { # waf_configuration.value.disabled_rule_group
        for_each = waf_configuration.value.disabled_rule_group != null ? waf_configuration.value.disabled_rule_group : []
        content {
          rule_group_name = lookup(disabled_rule_group.value, "rule_group_name") # (Required) possible values: BadBots | crs_20_protocol_violations | crs_21_protocol_anomalies | crs_23_request_limits | crs_30_http_policy | crs_35_bad_robots | crs_40_generic_attacks | crs_41_sql_injection_attacks | crs_41_xss_attacks | crs_42_tight_security | crs_45_trojans | General | GoodBots | Known-CVEs | REQUEST-911-METHOD-ENFORCEMENT | REQUEST-913-SCANNER-DETECTION | REQUEST-920-PROTOCOL-ENFORCEMENT | REQUEST-921-PROTOCOL-ATTACK | REQUEST-930-APPLICATION-ATTACK-LFI | REQUEST-931-APPLICATION-ATTACK-RFI | REQUEST-932-APPLICATION-ATTACK-RCE | REQUEST-933-APPLICATION-ATTACK-PHP | REQUEST-941-APPLICATION-ATTACK-XSS | REQUEST-942-APPLICATION-ATTACK-SQLI | REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION | REQUEST-944-APPLICATION-ATTACK-JAVA | UnknownBots
          rules           = lookup(disabled_rule_group.value, "rules", null)
        }
      }

      file_upload_limit_mb     = lookup(waf_configuration.value, "file_upload_limit_mb", "100")
      request_body_check       = lookup(waf_configuration.value, "request_body_check", true)
      max_request_body_size_kb = lookup(waf_configuration.value, "max_request_body_size_kb", "128")

      dynamic "exclusion" { # waf_configuration.value.exclusion
        for_each = waf_configuration.value.exclusion != null ? waf_configuration.value.exclusion : []
        content {
          match_variable          = lookup(exclusion.value, "match_variable") # (Required) possible values: RequestArgKeys | RequestArgNames | RequestArgValues | RequestCookieKeys | RequestCookieNames | RequestCookieValues | RequestHeaderKeys | RequestHeaderNames | RequestHeaderValues
          selector_match_operator = lookup(exclusion.value, "selector_match_operator", null)
          selector                = lookup(exclusion.value, "selector", null)
        }
      }

    }
  }


  dynamic "custom_error_configuration" { # var.custom_error_configuration
    for_each = var.custom_error_configuration != null ? var.custom_error_configuration : []
    content {
      status_code           = lookup(custom_error_configuration.value, "status_code")           # (Required) possible values: HttpStatus403 | HttpStatus502
      custom_error_page_url = lookup(custom_error_configuration.value, "custom_error_page_url") # (Required) 
    }
  }

  firewall_policy_id = var.firewall_policy_id

  dynamic "redirect_configuration" { # var.redirect_configuration
    for_each = var.redirect_configuration != null ? var.redirect_configuration : []
    content {
      name                 = redirect_configuration.key
      redirect_type        = lookup(redirect_configuration.value, "redirect_type") # (Required) possible values: Permanent | Temporary | Found | SeeOther
      target_listener_name = lookup(redirect_configuration.value, "target_listener_name", null)
      target_url           = lookup(redirect_configuration.value, "target_url", null)
      include_path         = lookup(redirect_configuration.value, "include_path", false)
      include_query_string = lookup(redirect_configuration.value, "include_query_string", false)
    }
  }


  dynamic "autoscale_configuration" { # var.autoscale_configuration
    for_each = var.autoscale_configuration != null ? var.autoscale_configuration : []
    content {
      min_capacity = lookup(autoscale_configuration.value, "min_capacity") # (Required) 
      max_capacity = lookup(autoscale_configuration.value, "max_capacity", null)
    }
  }


  dynamic "rewrite_rule_set" { # var.rewrite_rule_set
    for_each = var.rewrite_rule_set != null ? var.rewrite_rule_set : []
    content {
      name = rewrite_rule_set.key

      dynamic "rewrite_rule" { # rewrite_rule_set.value.rewrite_rule
        for_each = rewrite_rule_set.value.rewrite_rule != null ? rewrite_rule_set.value.rewrite_rule : []
        content {
          name                          = rewrite_rule.key
          rule_sequence                 = lookup(rewrite_rule.value, "rule_sequence") # (Required) 
          condition                     = lookup(rewrite_rule.value, "condition", null)
          request_header_configuration  = lookup(rewrite_rule.value, "request_header_configuration", null)
          response_header_configuration = lookup(rewrite_rule.value, "response_header_configuration", null)

          dynamic "url" { # rewrite_rule.value.url
            for_each = rewrite_rule.value.url != null ? rewrite_rule.value.url : []
            content {
              path         = lookup(url.value, "path", null)
              query_string = lookup(url.value, "query_string", null)
              components   = lookup(url.value, "components", null)
              reroute      = lookup(url.value, "reroute", null)
            }
          }

        }
      }

    }
  }

}
