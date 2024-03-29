data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_cdn_frontdoor_firewall_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name
  mode                = var.mode

  ########################################
  # optional vars
  ########################################
  enabled                    = var.enabled                    # Default: True
  request_body_check_enabled = var.request_body_check_enabled # Default: True
  redirect_url               = var.redirect_url

  dynamic "custom_rule" { # var.custom_rule
    for_each = var.custom_rule != null ? var.custom_rule : []
    content {
      name                           = custom_rule.key
      action                         = lookup(custom_rule.value, "action") # (Required) possible values: Allow | Block | Log | Redirect
      enabled                        = lookup(custom_rule.value, "enabled", true)
      priority                       = lookup(custom_rule.value, "priority", "1")
      type                           = lookup(custom_rule.value, "type") # (Required) possible values: MatchRule | RateLimitRule
      match_condition                = lookup(custom_rule.value, "match_condition", null)
      rate_limit_duration_in_minutes = lookup(custom_rule.value, "rate_limit_duration_in_minutes", 1)
      rate_limit_threshold           = lookup(custom_rule.value, "rate_limit_threshold", "10")
    }
  }

  custom_block_response_status_code = var.custom_block_response_status_code
  custom_block_response_body        = var.custom_block_response_body

  dynamic "managed_rule" { # var.managed_rule
    for_each = var.managed_rule != null ? var.managed_rule : []
    content {
      type    = lookup(managed_rule.value, "type")    # (Required) possible values: DefaultRuleSet | Microsoft_DefaultRuleSet | BotProtection | Microsoft_BotManagerRuleSet
      version = lookup(managed_rule.value, "version") # (Required) possible values: DefaultRuleSet | 1.0 | preview-0.1
      action  = lookup(managed_rule.value, "action")  # (Required) possible values: Allow | Log | Block | Redirect

      dynamic "exclusion" { # managed_rule.value.exclusion
        for_each = managed_rule.value.exclusion != null ? managed_rule.value.exclusion : []
        content {
          match_variable = lookup(exclusion.value, "match_variable") # (Required) possible values: QueryStringArgNames | RequestBodyPostArgNames | RequestCookieNames | RequestHeaderNames | RequestBodyJsonArgNames
          operator       = lookup(exclusion.value, "operator")       # (Required) possible values: Equals | Contains | StartsWith | EndsWith | EqualsAny
          selector       = lookup(exclusion.value, "selector")       # (Required) 
        }
      }


      dynamic "override" { # managed_rule.value.override
        for_each = managed_rule.value.override != null ? managed_rule.value.override : []
        content {
          rule_group_name = lookup(override.value, "rule_group_name") # (Required) 

          dynamic "exclusion" { # override.value.exclusion
            for_each = override.value.exclusion != null ? override.value.exclusion : []
            content {
              match_variable = lookup(exclusion.value, "match_variable") # (Required) possible values: QueryStringArgNames | RequestBodyPostArgNames | RequestCookieNames | RequestHeaderNames | RequestBodyJsonArgNames
              operator       = lookup(exclusion.value, "operator")       # (Required) possible values: Equals | Contains | StartsWith | EndsWith | EqualsAny
              selector       = lookup(exclusion.value, "selector")       # (Required) 
            }
          }


          dynamic "rule" { # override.value.rule
            for_each = override.value.rule != null ? override.value.rule : []
            content {
              rule_id = lookup(rule.value, "rule_id") # (Required) 
              action  = lookup(rule.value, "action")  # (Required) possible values: 1.1 | Allow | Log | Block | Redirect
              enabled = lookup(rule.value, "enabled", false)

              dynamic "exclusion" { # rule.value.exclusion
                for_each = rule.value.exclusion != null ? rule.value.exclusion : []
                content {
                  match_variable = lookup(exclusion.value, "match_variable") # (Required) possible values: QueryStringArgNames | RequestBodyPostArgNames | RequestCookieNames | RequestHeaderNames | RequestBodyJsonArgNames
                  operator       = lookup(exclusion.value, "operator")       # (Required) possible values: Equals | Contains | StartsWith | EndsWith | EqualsAny
                  selector       = lookup(exclusion.value, "selector")       # (Required) 
                }
              }

            }
          }

        }
      }

    }
  }

  tags = var.tags
}
