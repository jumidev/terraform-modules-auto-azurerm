data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_route_filter" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
    content {
      access      = lookup(rule.value, "access")      # (Required) 
      communities = lookup(rule.value, "communities") # (Required) 
      name        = rule.key
      rule_type   = lookup(rule.value, "rule_type") # (Required) 
    }
  }

  tags = var.tags
}
