

resource "azurerm_firewall_nat_rule_collection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  azure_firewall_name = var.azure_firewall_name
  resource_group_name = var.resource_group_name
  priority            = var.priority
  action              = var.action

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
    content {
      name                  = rule.key
      description           = lookup(rule.value, "description", null)
      destination_addresses = lookup(rule.value, "destination_addresses") # (Required) 
      destination_ports     = lookup(rule.value, "destination_ports")     # (Required) 
      protocols             = lookup(rule.value, "protocols")             # (Required) possible values: Any | ICMP | TCP | UDP
      source_addresses      = lookup(rule.value, "source_addresses", null)
      source_ip_groups      = lookup(rule.value, "source_ip_groups", null)
      translated_address    = lookup(rule.value, "translated_address") # (Required) 
      translated_port       = lookup(rule.value, "translated_port")    # (Required) 
    }
  }

}
