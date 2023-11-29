

resource "azurerm_servicebus_namespace_network_rule_set" "this" {

  ########################################
  # required vars
  ########################################
  namespace_id = var.namespace_id

  ########################################
  # optional vars
  ########################################
  default_action                = var.default_action                # Default: Allow
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  trusted_services_allowed      = var.trusted_services_allowed
  ip_rules                      = var.ip_rules

  dynamic "network_rules" { # var.network_rules
    for_each = var.network_rules != null ? var.network_rules : []
    content {
      subnet_id                            = lookup(network_rules.value, "subnet_id") # (Required) 
      ignore_missing_vnet_service_endpoint = lookup(network_rules.value, "ignore_missing_vnet_service_endpoint", false)
    }
  }

}
