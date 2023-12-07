

resource "azurerm_lighthouse_definition" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  managing_tenant_id = var.managing_tenant_id
  scope              = var.scope

  authorization {
    principal_id                  = lookup(authorization.value, "principal_id")       # (Required) 
    role_definition_id            = lookup(authorization.value, "role_definition_id") # (Required) 
    delegated_role_definition_ids = lookup(authorization.value, "delegated_role_definition_ids", null)
    principal_display_name        = lookup(authorization.value, "principal_display_name", null)
  }


  ########################################
  # optional vars
  ########################################
  lighthouse_definition_id = var.lighthouse_definition_id
  description              = var.description

  dynamic "eligible_authorization" { # var.eligible_authorization
    for_each = var.eligible_authorization != null ? var.eligible_authorization : []
    content {
      principal_id       = lookup(eligible_authorization.value, "principal_id")       # (Required) 
      role_definition_id = lookup(eligible_authorization.value, "role_definition_id") # (Required) 

      dynamic "just_in_time_access_policy" { # eligible_authorization.value.just_in_time_access_policy
        for_each = eligible_authorization.value.just_in_time_access_policy != null ? eligible_authorization.value.just_in_time_access_policy : []
        content {
          multi_factor_auth_provider  = lookup(just_in_time_access_policy.value, "multi_factor_auth_provider", null)
          maximum_activation_duration = lookup(just_in_time_access_policy.value, "maximum_activation_duration", "PT8H")

          dynamic "approver" { # just_in_time_access_policy.value.approver
            for_each = just_in_time_access_policy.value.approver != null ? just_in_time_access_policy.value.approver : []
            content {
              principal_id           = lookup(approver.value, "principal_id") # (Required) 
              principal_display_name = lookup(approver.value, "principal_display_name", null)
            }
          }

        }
      }

      principal_display_name = lookup(eligible_authorization.value, "principal_display_name", null)
    }
  }


  dynamic "plan" { # var.plan
    for_each = var.plan != null ? var.plan : []
    content {
      name      = plan.key
      publisher = lookup(plan.value, "publisher") # (Required) 
      product   = lookup(plan.value, "product")   # (Required) 
      version   = lookup(plan.value, "version")   # (Required) 
    }
  }

}
