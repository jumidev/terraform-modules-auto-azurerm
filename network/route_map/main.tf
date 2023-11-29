

resource "azurerm_route_map" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  virtual_hub_id = var.virtual_hub_id

  ########################################
  # optional vars
  ########################################

  dynamic "rule" { # var.rule
    for_each = var.rule != null ? var.rule : []
    content {
      name = rule.key

      dynamic "action" { # rule.value.action
        for_each = rule.value.action != null ? rule.value.action : []
        content {

          dynamic "parameter" { # action.value.parameter
            for_each = action.value.parameter != null ? action.value.parameter : []
            content {
              as_path      = lookup(parameter.value, "as_path", null)
              community    = lookup(parameter.value, "community", null)
              route_prefix = lookup(parameter.value, "route_prefix", null)
            }
          }

          type = lookup(action.value, "type") # (Required) possible values: Add | Drop | Remove | Replace | Unknown
        }
      }


      dynamic "match_criterion" { # rule.value.match_criterion
        for_each = rule.value.match_criterion != null ? rule.value.match_criterion : []
        content {
          match_condition = lookup(match_criterion.value, "match_condition") # (Required) possible values: Contains | Equals | NotContains | NotEquals | Unknown
          as_path         = lookup(match_criterion.value, "as_path", null)
          community       = lookup(match_criterion.value, "community", null)
          route_prefix    = lookup(match_criterion.value, "route_prefix", null)
        }
      }

      next_step_if_matched = lookup(rule.value, "next_step_if_matched", "Unknown")
    }
  }

}
