

resource "azurerm_firewall_network_rule_collection" "this" {

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
      name                  = rule.key
      description           = lookup(rule.value, "description", null)
      source_addresses      = lookup(rule.value, "source_addresses", null)
      source_ip_groups      = lookup(rule.value, "source_ip_groups", null)
      destination_addresses = lookup(rule.value, "destination_addresses", null)
      destination_ip_groups = lookup(rule.value, "destination_ip_groups", null)
      destination_fqdns     = lookup(rule.value, "destination_fqdns", null)
      destination_ports     = lookup(rule.value, "destination_ports") # (Required) 
      protocols             = lookup(rule.value, "protocols")         # (Required) possible values: Any | ICMP | TCP | UDP
    }
  }

}
