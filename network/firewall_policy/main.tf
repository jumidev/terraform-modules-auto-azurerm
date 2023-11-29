data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_firewall_policy" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  base_policy_id = var.base_policy_id

  dynamic "dns" { # var.dns
    for_each = var.dns != null ? var.dns : []
    content {
      proxy_enabled = lookup(dns.value, "proxy_enabled", false)
      servers       = lookup(dns.value, "servers", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) 
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "insights" { # var.insights
    for_each = var.insights != null ? var.insights : []
    content {
      enabled                            = lookup(insights.value, "enabled")                            # (Required) 
      default_log_analytics_workspace_id = lookup(insights.value, "default_log_analytics_workspace_id") # (Required) 
      retention_in_days                  = lookup(insights.value, "retention_in_days", null)

      dynamic "log_analytics_workspace" { # insights.value.log_analytics_workspace
        for_each = insights.value.log_analytics_workspace != null ? insights.value.log_analytics_workspace : []
        content {
          firewall_location = lookup(log_analytics_workspace.value, "firewall_location") # (Required) 
        }
      }

    }
  }


  dynamic "intrusion_detection" { # var.intrusion_detection
    for_each = var.intrusion_detection != null ? var.intrusion_detection : []
    content {
      mode = lookup(intrusion_detection.value, "mode", null)

      dynamic "signature_overrides" { # intrusion_detection.value.signature_overrides
        for_each = intrusion_detection.value.signature_overrides != null ? intrusion_detection.value.signature_overrides : []
        content {
          state = lookup(signature_overrides.value, "state", null)
        }
      }


      dynamic "traffic_bypass" { # intrusion_detection.value.traffic_bypass
        for_each = intrusion_detection.value.traffic_bypass != null ? intrusion_detection.value.traffic_bypass : []
        content {
          name                  = traffic_bypass.key
          protocol              = lookup(traffic_bypass.value, "protocol") # (Required) 
          description           = lookup(traffic_bypass.value, "description", null)
          destination_addresses = lookup(traffic_bypass.value, "destination_addresses", null)
          destination_ip_groups = lookup(traffic_bypass.value, "destination_ip_groups", null)
          destination_ports     = lookup(traffic_bypass.value, "destination_ports", null)
          source_addresses      = lookup(traffic_bypass.value, "source_addresses", null)
          source_ip_groups      = lookup(traffic_bypass.value, "source_ip_groups", null)
        }
      }

      private_ranges = lookup(intrusion_detection.value, "private_ranges", null)
    }
  }

  private_ip_ranges                 = var.private_ip_ranges
  auto_learn_private_ranges_enabled = var.auto_learn_private_ranges_enabled
  sku                               = var.sku
  tags                              = var.tags

  dynamic "threat_intelligence_allowlist" { # var.threat_intelligence_allowlist
    for_each = var.threat_intelligence_allowlist != null ? var.threat_intelligence_allowlist : []
    content {
      fqdns        = lookup(threat_intelligence_allowlist.value, "fqdns", null)
      ip_addresses = lookup(threat_intelligence_allowlist.value, "ip_addresses", null)
    }
  }

  threat_intelligence_mode = var.threat_intelligence_mode # Default: Alert

  dynamic "tls_certificate" { # var.tls_certificate
    for_each = var.tls_certificate != null ? var.tls_certificate : []
    content {
      key_vault_secret_id = lookup(tls_certificate.value, "key_vault_secret_id") # (Required) 
      name                = tls_certificate.key
    }
  }

  sql_redirect_allowed = var.sql_redirect_allowed

  dynamic "explicit_proxy" { # var.explicit_proxy
    for_each = var.explicit_proxy != null ? var.explicit_proxy : []
    content {
      enabled         = lookup(explicit_proxy.value, "enabled", null)
      http_port       = lookup(explicit_proxy.value, "http_port", null)
      https_port      = lookup(explicit_proxy.value, "https_port", null)
      enable_pac_file = lookup(explicit_proxy.value, "enable_pac_file", null)
      pac_file_port   = lookup(explicit_proxy.value, "pac_file_port", null)
      pac_file        = lookup(explicit_proxy.value, "pac_file", null)
    }
  }

}
