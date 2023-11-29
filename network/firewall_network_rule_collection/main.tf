data "azurerm_firewall" "this" {
  name                = var.firewall_name
  resource_group_name = var.firewall_resource_group_name == null ? null : var.firewall_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_firewall_network_rule_collection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  azure_firewall_name = data.azurerm_firewall.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  priority            = var.priority
  action              = var.action

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
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
