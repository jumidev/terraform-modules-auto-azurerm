data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_eventhub_namespace" "this" {

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
  capacity             = var.capacity # Default: 1
  auto_inflate_enabled = var.auto_inflate_enabled
  dedicated_cluster_id = var.dedicated_cluster_id

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  maximum_throughput_units = var.maximum_throughput_units
  zone_redundant           = var.zone_redundant # Default: False
  tags                     = var.tags

  dynamic "network_rulesets" { # var.network_rulesets
    for_each = var.network_rulesets != null ? var.network_rulesets : []
    content {
      default_action                 = lookup(network_rulesets.value, "default_action") # (Required) possible values: Allow | Deny
      public_network_access_enabled  = lookup(network_rulesets.value, "public_network_access_enabled", true)
      trusted_service_access_enabled = lookup(network_rulesets.value, "trusted_service_access_enabled", null)

      dynamic "virtual_network_rule" { # network_rulesets.value.virtual_network_rule
        for_each = network_rulesets.value.virtual_network_rule != null ? network_rulesets.value.virtual_network_rule : []
        content {
          subnet_id                                       = lookup(virtual_network_rule.value, "subnet_id") # (Required) 
          ignore_missing_virtual_network_service_endpoint = lookup(virtual_network_rule.value, "ignore_missing_virtual_network_service_endpoint", null)
        }
      }


      dynamic "ip_rule" { # network_rulesets.value.ip_rule
        for_each = network_rulesets.value.ip_rule != null ? network_rulesets.value.ip_rule : []
        content {
          ip_mask = lookup(ip_rule.value, "ip_mask") # (Required) 
          action  = lookup(ip_rule.value, "action", "Allow")
        }
      }

    }
  }

  local_authentication_enabled  = var.local_authentication_enabled  # Default: True
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  minimum_tls_version           = var.minimum_tls_version
}
