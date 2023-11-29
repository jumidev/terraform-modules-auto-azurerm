

resource "azurerm_subscription_policy_assignment" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  policy_definition_id = var.policy_definition_id
  subscription_id      = var.subscription_id

  ########################################
  # optional vars
  ########################################
  description  = var.description
  display_name = var.display_name
  enforce      = var.enforce # Default: True

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  location = var.location
  metadata = var.metadata

  dynamic "non_compliance_message" { # var.non_compliance_message
    for_each = var.non_compliance_message != null ? var.non_compliance_message : []
    content {
      content                        = lookup(non_compliance_message.value, "content") # (Required) 
      policy_definition_reference_id = lookup(non_compliance_message.value, "policy_definition_reference_id", null)
    }
  }

  not_scopes = var.not_scopes
  parameters = var.parameters

  dynamic "overrides" { # var.overrides
    for_each = var.overrides != null ? var.overrides : []
    content {
      value = lookup(overrides.value, "value") # (Required) possible values: policyEffect

      dynamic "selectors" { # overrides.value.selectors
        for_each = overrides.value.selectors != null ? overrides.value.selectors : []
        content {
          not_in = lookup(selectors.value, "not_in", null)
        }
      }

    }
  }


  dynamic "resource_selectors" { # var.resource_selectors
    for_each = var.resource_selectors != null ? var.resource_selectors : []
    content {
      name = resource_selectors.key

      dynamic "selectors" { # resource_selectors.value.selectors
        for_each = resource_selectors.value.selectors != null ? resource_selectors.value.selectors : []
        content {
          kind   = lookup(selectors.value, "kind") # (Required) possible values: resourceLocation | resourceType | resourceWithoutLocation
          not_in = lookup(selectors.value, "not_in", null)
        }
      }

    }
  }

}
