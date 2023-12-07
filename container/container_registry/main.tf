data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_registry" "this" {

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
  admin_enabled = var.admin_enabled # Default: False
  tags          = var.tags

  dynamic "georeplications" { # var.georeplications
    for_each = var.georeplications != null ? var.georeplications : []
    content {
      location                  = lookup(georeplications.value, "location") # (Required) 
      regional_endpoint_enabled = lookup(georeplications.value, "regional_endpoint_enabled", null)
      zone_redundancy_enabled   = lookup(georeplications.value, "zone_redundancy_enabled", false)
      tags                      = lookup(georeplications.value, "tags", null)
    }
  }


  dynamic "network_rule_set" { # var.network_rule_set
    for_each = var.network_rule_set != null ? var.network_rule_set : []
    content {
      default_action = lookup(network_rule_set.value, "default_action", "Allow")

      dynamic "ip_rule" { # network_rule_set.value.ip_rule
        for_each = network_rule_set.value.ip_rule != null ? network_rule_set.value.ip_rule : []
        content {
          action   = lookup(ip_rule.value, "action")   # (Required) 
          ip_range = lookup(ip_rule.value, "ip_range") # (Required) 
        }
      }


      dynamic "virtual_network" { # network_rule_set.value.virtual_network
        for_each = network_rule_set.value.virtual_network != null ? network_rule_set.value.virtual_network : []
        content {
          action    = lookup(virtual_network.value, "action")    # (Required) 
          subnet_id = lookup(virtual_network.value, "subnet_id") # (Required) 
        }
      }

    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  quarantine_policy_enabled     = var.quarantine_policy_enabled

  dynamic "retention_policy" { # var.retention_policy
    for_each = var.retention_policy != null ? var.retention_policy : []
    content {
      days    = lookup(retention_policy.value, "days", "7")
      enabled = lookup(retention_policy.value, "enabled", null)
    }
  }


  dynamic "trust_policy" { # var.trust_policy
    for_each = var.trust_policy != null ? var.trust_policy : []
    content {
      enabled = lookup(trust_policy.value, "enabled", null)
    }
  }

  zone_redundancy_enabled = var.zone_redundancy_enabled # Default: False
  export_policy_enabled   = var.export_policy_enabled   # Default: True

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      enabled            = lookup(encryption.value, "enabled", null)
      key_vault_key_id   = lookup(encryption.value, "key_vault_key_id")   # (Required) 
      identity_client_id = lookup(encryption.value, "identity_client_id") # (Required) 
    }
  }

  anonymous_pull_enabled     = var.anonymous_pull_enabled
  data_endpoint_enabled      = var.data_endpoint_enabled
  network_rule_bypass_option = var.network_rule_bypass_option # Default: AzureServices
}
