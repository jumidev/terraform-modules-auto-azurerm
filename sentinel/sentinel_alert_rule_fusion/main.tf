

resource "azurerm_sentinel_alert_rule_fusion" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  alert_rule_template_guid   = var.alert_rule_template_guid

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True

  dynamic "source" { # var.source
    for_each = var.source != null ? var.source : []
    content {
      name    = source.key
      enabled = lookup(source.value, "enabled", true)

      dynamic "sub_type" { # source.value.sub_type
        for_each = source.value.sub_type != null ? source.value.sub_type : []
        content {
          name               = sub_type.key
          enabled            = lookup(sub_type.value, "enabled", true)
          severities_allowed = lookup(sub_type.value, "severities_allowed") # (Required) possible values: High | Medium | Low | Informational
        }
      }

    }
  }

}
