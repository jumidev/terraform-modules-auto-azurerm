data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_web_application_firewall_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "managed_rules" { # var.managed_rules
    for_each = var.managed_rules != null ? var.managed_rules : []
    content {
      exclusion        = lookup(managed_rules.value, "exclusion", null)
      managed_rule_set = lookup(managed_rules.value, "managed_rule_set") # (Required) 
    }
  }


  ########################################
  # optional vars
  ########################################

  dynamic "custom_rules" { # var.custom_rules
    for_each = var.custom_rules != null ? var.custom_rules : []
    content {
      enabled   = lookup(custom_rules.value, "enabled", true)
      name      = custom_rules.key
      priority  = lookup(custom_rules.value, "priority")  # (Required) 
      rule_type = lookup(custom_rules.value, "rule_type") # (Required) possible values: MatchRule | RateLimitRule | Invalid

      dynamic "match_conditions" { # custom_rules.value.match_conditions
        for_each = custom_rules.value.match_conditions != null ? custom_rules.value.match_conditions : []
        content {

          dynamic "match_variables" { # match_conditions.value.match_variables
            for_each = match_conditions.value.match_variables != null ? match_conditions.value.match_variables : []
            content {
              variable_name = lookup(match_variables.value, "variable_name") # (Required) possible values: RemoteAddr | RequestMethod | QueryString | PostArgs | RequestUri | RequestHeaders | RequestBody | RequestCookies
              selector      = lookup(match_variables.value, "selector", null)
            }
          }

          match_values       = lookup(match_conditions.value, "match_values", null)
          operator           = lookup(match_conditions.value, "operator") # (Required) possible values: Any | IPMatch | GeoMatch | Equal | Contains | LessThan | GreaterThan | LessThanOrEqual | GreaterThanOrEqual | BeginsWith | EndsWith | Regex
          negation_condition = lookup(match_conditions.value, "negation_condition", null)
          transforms         = lookup(match_conditions.value, "transforms", null)
        }
      }

      action               = lookup(custom_rules.value, "action") # (Required) possible values: Allow | Block | Log
      rate_limit_duration  = lookup(custom_rules.value, "rate_limit_duration", null)
      rate_limit_threshold = lookup(custom_rules.value, "rate_limit_threshold", null)
      group_rate_limit_by  = lookup(custom_rules.value, "group_rate_limit_by", null)
    }
  }


  dynamic "policy_settings" { # var.policy_settings
    for_each = var.policy_settings != null ? var.policy_settings : []
    content {
      enabled                     = lookup(policy_settings.value, "enabled", true)
      mode                        = lookup(policy_settings.value, "mode", "Prevention")
      file_upload_limit_in_mb     = lookup(policy_settings.value, "file_upload_limit_in_mb", "100")
      request_body_check          = lookup(policy_settings.value, "request_body_check", true)
      max_request_body_size_in_kb = lookup(policy_settings.value, "max_request_body_size_in_kb", "128")

      dynamic "log_scrubbing" { # policy_settings.value.log_scrubbing
        for_each = policy_settings.value.log_scrubbing != null ? policy_settings.value.log_scrubbing : []
        content {
          enabled = lookup(log_scrubbing.value, "enabled", true)
          rule    = lookup(log_scrubbing.value, "rule", null)
        }
      }

      request_body_inspect_limit_in_kb = lookup(policy_settings.value, "request_body_inspect_limit_in_kb", "128")
    }
  }

  tags = var.tags
}
