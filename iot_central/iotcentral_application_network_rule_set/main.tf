

resource "azurerm_iotcentral_application_network_rule_set" "this" {

  ########################################
  # required vars
  ########################################
  iotcentral_application_id = var.iotcentral_application_id

  ########################################
  # optional vars
  ########################################
  apply_to_device = var.apply_to_device # Default: True
  default_action  = var.default_action  # Default: Deny

  dynamic "ip_rule" { # var.ip_rule
    for_each = var.ip_rule != null ? var.ip_rule : []
    content {
      name    = ip_rule.key
      ip_mask = lookup(ip_rule.value, "ip_mask") # (Required) 
    }
  }

}
