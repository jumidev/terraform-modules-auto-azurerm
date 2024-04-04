

resource "azurerm_firewall_policy_rule_collection_group" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  firewall_policy_id = var.firewall_policy_id
  priority           = var.priority

  ########################################
  # optional vars
  ########################################

  dynamic "application_rule_collection" { # var.application_rule_collections
    for_each = var.application_rule_collections != null ? var.application_rule_collections : []
    content {
      name     = application_rule_collection.key
      action   = lookup(application_rule_collection.value, "action")   # (Required) possible values: Allow | Deny
      priority = lookup(application_rule_collection.value, "priority") # (Required) 

      dynamic "rule" { # application_rule_collection.value.rule
        for_each = application_rule_collection.value.rule != null ? application_rule_collection.value.rule : []
        content {
          name        = rule.key
          description = lookup(rule.value, "description", null)

          dynamic "protocols" { # rule.value.protocols
            for_each = rule.value.protocols != null ? rule.value.protocols : []
            content {
              type = lookup(protocols.value, "type") # (Required) possible values: Http | Https
              port = lookup(protocols.value, "port") # (Required) 
            }
          }

          http_headers          = lookup(rule.value, "http_headers", null)
          source_addresses      = lookup(rule.value, "source_addresses", null)
          source_ip_groups      = lookup(rule.value, "source_ip_groups", null)
          destination_addresses = lookup(rule.value, "destination_addresses", null)
          destination_urls      = lookup(rule.value, "destination_urls", null)
          destination_fqdns     = lookup(rule.value, "destination_fqdns", null)
          destination_fqdn_tags = lookup(rule.value, "destination_fqdn_tags", null)
          terminate_tls         = lookup(rule.value, "terminate_tls", null)
          web_categories        = lookup(rule.value, "web_categories", null)
        }
      }

    }
  }


  dynamic "nat_rule_collection" { # var.nat_rule_collections
    for_each = var.nat_rule_collections != null ? var.nat_rule_collections : []
    content {
      name     = nat_rule_collection.key
      action   = lookup(nat_rule_collection.value, "action")   # (Required) 
      priority = lookup(nat_rule_collection.value, "priority") # (Required) 

      dynamic "rule" { # nat_rule_collection.value.rule
        for_each = nat_rule_collection.value.rule != null ? nat_rule_collection.value.rule : []
        content {
          name                = rule.key
          description         = lookup(rule.value, "description", null)
          protocols           = lookup(rule.value, "protocols") # (Required) possible values: TCP | UDP
          source_addresses    = lookup(rule.value, "source_addresses", null)
          source_ip_groups    = lookup(rule.value, "source_ip_groups", null)
          destination_address = lookup(rule.value, "destination_address", null)
          destination_ports   = lookup(rule.value, "destination_ports", null)
          translated_address  = lookup(rule.value, "translated_address", null)
          translated_fqdn     = lookup(rule.value, "translated_fqdn", null)
          translated_port     = lookup(rule.value, "translated_port") # (Required) 
        }
      }

    }
  }


  dynamic "network_rule_collection" { # var.network_rule_collections
    for_each = var.network_rule_collections != null ? var.network_rule_collections : []
    content {
      name     = network_rule_collection.key
      action   = lookup(network_rule_collection.value, "action")   # (Required) possible values: Allow | Deny
      priority = lookup(network_rule_collection.value, "priority") # (Required) 

      dynamic "rule" { # network_rule_collection.value.rule
        for_each = network_rule_collection.value.rule != null ? network_rule_collection.value.rule : []
        content {
          name                  = rule.key
          description           = lookup(rule.value, "description", null)
          protocols             = lookup(rule.value, "protocols")         # (Required) possible values: Any | TCP | UDP | ICMP
          destination_ports     = lookup(rule.value, "destination_ports") # (Required) 
          source_addresses      = lookup(rule.value, "source_addresses", null)
          source_ip_groups      = lookup(rule.value, "source_ip_groups", null)
          destination_addresses = lookup(rule.value, "destination_addresses", null)
          destination_ip_groups = lookup(rule.value, "destination_ip_groups", null)
          destination_fqdns     = lookup(rule.value, "destination_fqdns", null)
        }
      }

    }
  }

}
