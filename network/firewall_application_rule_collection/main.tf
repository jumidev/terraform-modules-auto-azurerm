

resource "azurerm_firewall_application_rule_collection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  azure_firewall_name = var.azure_firewall_name
  resource_group_name = var.resource_group_name
  priority            = var.priority
  action              = var.action

  dynamic "rule" { # var.rules
    for_each = var.rules != null ? var.rules : []
    content {
      name             = rule.key
      description      = lookup(rule.value, "description", null)
      source_addresses = lookup(rule.value, "source_addresses", null)
      source_ip_groups = lookup(rule.value, "source_ip_groups", null)
      fqdn_tags        = lookup(rule.value, "fqdn_tags", null)
      target_fqdns     = lookup(rule.value, "target_fqdns", null)

      dynamic "protocol" { # rule.value.protocol
        for_each = rule.value.protocol != null ? rule.value.protocol : []
        content {
          port = lookup(protocol.value, "port") # (Required) 
          type = lookup(protocol.value, "type") # (Required) possible values: Http | Https | Mssql
        }
      }

    }
  }

}
