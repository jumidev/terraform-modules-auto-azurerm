data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_runbook" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  location                = var.location
  automation_account_name = data.azurerm_automation_account.this.name
  runbook_type            = var.runbook_type
  log_progress            = var.log_progress
  log_verbose             = var.log_verbose

  ########################################
  # optional vars
  ########################################

  dynamic "publish_content_link" { # var.publish_content_link
    for_each = var.publish_content_link != null ? var.publish_content_link : []
    content {
      uri     = lookup(publish_content_link.value, "uri") # (Required) 
      version = lookup(publish_content_link.value, "version", null)

      dynamic "hash" { # publish_content_link.value.hash
        for_each = publish_content_link.value.hash != null ? publish_content_link.value.hash : []
        content {
          algorithm = lookup(hash.value, "algorithm") # (Required) 
          value     = lookup(hash.value, "value")     # (Required) 
        }
      }

    }
  }

  description              = var.description
  content                  = var.content
  tags                     = var.tags
  log_activity_trace_level = var.log_activity_trace_level

  dynamic "draft" { # var.draft
    for_each = var.draft != null ? var.draft : []
    content {
      edit_mode_enabled = lookup(draft.value, "edit_mode_enabled", null)

      dynamic "content_link" { # draft.value.content_link
        for_each = draft.value.content_link != null ? draft.value.content_link : []
        content {
          uri     = lookup(content_link.value, "uri") # (Required) 
          version = lookup(content_link.value, "version", null)

          dynamic "hash" { # content_link.value.hash
            for_each = content_link.value.hash != null ? content_link.value.hash : []
            content {
              algorithm = lookup(hash.value, "algorithm") # (Required) 
              value     = lookup(hash.value, "value")     # (Required) 
            }
          }

        }
      }

      output_types = lookup(draft.value, "output_types", null)

      dynamic "parameters" { # draft.value.parameters
        for_each = draft.value.parameters != null ? draft.value.parameters : []
        content {
          key           = lookup(parameters.value, "key")  # (Required) 
          type          = lookup(parameters.value, "type") # (Required) 
          mandatory     = lookup(parameters.value, "mandatory", null)
          position      = lookup(parameters.value, "position", null)
          default_value = lookup(parameters.value, "default_value", null)
        }
      }

    }
  }

}
