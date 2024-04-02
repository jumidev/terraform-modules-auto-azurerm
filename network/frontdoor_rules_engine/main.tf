

resource "azurerm_frontdoor_rules_engine" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  frontdoor_name      = var.frontdoor_name
  resource_group_name = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
    content {
      name     = rule.key
      priority = lookup(rule.value, "priority") # (Required) 

      dynamic "action" { # rule.value.action
        for_each = rule.value.action != null ? rule.value.action : []
        content {

          dynamic "request_header" { # action.value.request_header
            for_each = action.value.request_header != null ? action.value.request_header : []
            content {
              header_action_type = lookup(request_header.value, "header_action_type", null)
              header_name        = lookup(request_header.value, "header_name", null)
              value              = lookup(request_header.value, "value", null)
            }
          }


          dynamic "response_header" { # action.value.response_header
            for_each = action.value.response_header != null ? action.value.response_header : []
            content {
              header_action_type = lookup(response_header.value, "header_action_type", null)
              header_name        = lookup(response_header.value, "header_name", null)
              value              = lookup(response_header.value, "value", null)
            }
          }

        }
      }


      dynamic "match_condition" { # rule.value.match_condition
        for_each = rule.value.match_condition != null ? rule.value.match_condition : []
        content {
          variable         = lookup(match_condition.value, "variable", null)
          selector         = lookup(match_condition.value, "selector", null)
          operator         = lookup(match_condition.value, "operator") # (Required) possible values: Any | IPMatch | GeoMatch | Equal | Contains | LessThan | GreaterThan | LessThanOrEqual | GreaterThanOrEqual | BeginsWith | EndsWith
          transform        = lookup(match_condition.value, "transform", null)
          negate_condition = lookup(match_condition.value, "negate_condition", false)
          value            = lookup(match_condition.value, "value", null)
        }
      }

    }
  }

}
