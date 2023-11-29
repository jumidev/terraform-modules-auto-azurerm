data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_test_schedule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  lab_name            = var.lab_name
  task_type           = var.task_type
  time_zone_id        = var.time_zone_id

  notification_settings {
    status          = lookup(notification_settings.value, "status", "Disabled")
    time_in_minutes = lookup(notification_settings.value, "time_in_minutes", null)
    webhook_url     = lookup(notification_settings.value, "webhook_url", null)
  }


  ########################################
  # optional vars
  ########################################
  status = var.status # Default: Disabled
  tags   = var.tags

  dynamic "weekly_recurrence" { # var.weekly_recurrence
    for_each = var.weekly_recurrence != null ? var.weekly_recurrence : []
    content {
      time      = lookup(weekly_recurrence.value, "time") # (Required) 
      week_days = lookup(weekly_recurrence.value, "week_days", null)
    }
  }


  dynamic "daily_recurrence" { # var.daily_recurrence
    for_each = var.daily_recurrence != null ? var.daily_recurrence : []
    content {
      time = lookup(daily_recurrence.value, "time") # (Required) 
    }
  }


  dynamic "hourly_recurrence" { # var.hourly_recurrence
    for_each = var.hourly_recurrence != null ? var.hourly_recurrence : []
    content {
      minute = lookup(hourly_recurrence.value, "minute") # (Required) 
    }
  }

}
