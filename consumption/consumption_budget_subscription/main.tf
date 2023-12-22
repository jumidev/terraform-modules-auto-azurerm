

resource "azurerm_consumption_budget_subscription" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  subscription_id = var.subscription_id
  amount          = var.amount

  time_period {
    start_date = lookup(time_period.value, "start_date") # (Required) 
    end_date   = lookup(time_period.value, "end_date", null)
  }


  dynamic "notification" { # var.notification
    for_each = var.notification != null ? var.notification : []
    content {
      operator       = lookup(notification.value, "operator")  # (Required) possible values: EqualTo | GreaterThan | GreaterThanOrEqualTo
      threshold      = lookup(notification.value, "threshold") # (Required) 
      threshold_type = lookup(notification.value, "threshold_type", false)
      contact_emails = lookup(notification.value, "contact_emails", null)
      contact_groups = lookup(notification.value, "contact_groups", null)
      contact_roles  = lookup(notification.value, "contact_roles", null)
      enabled        = lookup(notification.value, "enabled", true)
    }
  }


  ########################################
  # optional vars
  ########################################
  time_grain = var.time_grain # Default: Monthly

  dynamic "filter" { # var.filter
    for_each = var.filter != null ? var.filter : []
    content {

      dynamic "dimension" { # filter.value.dimension
        for_each = filter.value.dimension != null ? filter.value.dimension : []
        content {
          name     = dimension.key
          operator = lookup(dimension.value, "operator", "In")
          values   = lookup(dimension.value, "values") # (Required) 
        }
      }


      dynamic "tag" { # filter.value.tag
        for_each = filter.value.tag != null ? filter.value.tag : []
        content {
          name     = tag.key
          operator = lookup(tag.value, "operator", "In")
          values   = lookup(tag.value, "values") # (Required) 
        }
      }

    }
  }

}
