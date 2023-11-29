

resource "azurerm_consumption_budget_management_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  management_group_id = var.management_group_id
  amount              = var.amount

  time_period {
    start_date = lookup(time_period.value, "start_date") # (Required) 
    end_date   = lookup(time_period.value, "end_date", null)
  }


  dynamic "notification" { # var.notification
    for_each = var.notification != null ? var.notification : []
    content {
      operator       = lookup(notification.value, "operator")       # (Required) possible values: EqualTo | GreaterThan | GreaterThanOrEqualTo
      threshold      = lookup(notification.value, "threshold")      # (Required) 
      contact_emails = lookup(notification.value, "contact_emails") # (Required) 
      threshold_type = lookup(notification.value, "threshold_type", "Actual")
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
