data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_workflow" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "access_control" { # var.access_control
    for_each = var.access_control != null ? var.access_control : []
    content {

      dynamic "action" { # access_control.value.action
        for_each = access_control.value.action != null ? access_control.value.action : []
        content {
          allowed_caller_ip_address_range = lookup(action.value, "allowed_caller_ip_address_range") # (Required) 
        }
      }


      dynamic "content" { # access_control.value.content
        for_each = access_control.value.content != null ? access_control.value.content : []
        content {
          allowed_caller_ip_address_range = lookup(content.value, "allowed_caller_ip_address_range") # (Required) 
        }
      }


      dynamic "trigger" { # access_control.value.trigger
        for_each = access_control.value.trigger != null ? access_control.value.trigger : []
        content {
          allowed_caller_ip_address_range = lookup(trigger.value, "allowed_caller_ip_address_range") # (Required) 

          dynamic "open_authentication_policy" { # trigger.value.open_authentication_policy
            for_each = trigger.value.open_authentication_policy != null ? trigger.value.open_authentication_policy : []
            content {
              name = open_authentication_policy.key

              dynamic "claim" { # open_authentication_policy.value.claim
                for_each = open_authentication_policy.value.claim != null ? open_authentication_policy.value.claim : []
                content {
                  name  = claim.key
                  value = lookup(claim.value, "value") # (Required) 
                }
              }

            }
          }

        }
      }


      dynamic "workflow_management" { # access_control.value.workflow_management
        for_each = access_control.value.workflow_management != null ? access_control.value.workflow_management : []
        content {
          allowed_caller_ip_address_range = lookup(workflow_management.value, "allowed_caller_ip_address_range") # (Required) 
        }
      }

    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  integration_service_environment_id = var.integration_service_environment_id
  logic_app_integration_account_id   = var.logic_app_integration_account_id
  enabled                            = var.enabled # Default: True
  workflow_parameters                = var.workflow_parameters
  workflow_schema                    = var.workflow_schema  # Default: https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#
  workflow_version                   = var.workflow_version # Default: 1.0.0.0
  parameters                         = var.parameters
  tags                               = var.tags
}
