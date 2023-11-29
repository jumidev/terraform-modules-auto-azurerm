data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_servicebus_namespace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  capacity = var.capacity

  dynamic "customer_managed_key" { # var.customer_managed_key
    for_each = var.customer_managed_key != null ? var.customer_managed_key : []
    content {
      key_vault_key_id                  = lookup(customer_managed_key.value, "key_vault_key_id") # (Required) 
      identity_id                       = lookup(customer_managed_key.value, "identity_id")      # (Required) 
      infrastructure_encryption_enabled = lookup(customer_managed_key.value, "infrastructure_encryption_enabled", null)
    }
  }

  local_auth_enabled            = var.local_auth_enabled            # Default: True
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  minimum_tls_version           = var.minimum_tls_version
  zone_redundant                = var.zone_redundant

  dynamic "network_rule_set" { # var.network_rule_set
    for_each = var.network_rule_set != null ? var.network_rule_set : []
    content {
      default_action                = lookup(network_rule_set.value, "default_action", "Allow")
      public_network_access_enabled = lookup(network_rule_set.value, "public_network_access_enabled", true)
      trusted_services_allowed      = lookup(network_rule_set.value, "trusted_services_allowed", null)
      ip_rules                      = lookup(network_rule_set.value, "ip_rules", null)

      dynamic "network_rules" { # network_rule_set.value.network_rules
        for_each = network_rule_set.value.network_rules != null ? network_rule_set.value.network_rules : []
        content {
          subnet_id                            = lookup(network_rules.value, "subnet_id") # (Required) 
          ignore_missing_vnet_service_endpoint = lookup(network_rules.value, "ignore_missing_vnet_service_endpoint", false)
        }
      }

    }
  }

  tags = var.tags
}
