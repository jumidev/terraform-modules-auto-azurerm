data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_snapshot_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  account_name        = var.account_name
  enabled             = var.enabled

  ########################################
  # optional vars
  ########################################

  dynamic "hourly_schedule" { # var.hourly_schedule
    for_each = var.hourly_schedule != null ? var.hourly_schedule : []
    content {
      snapshots_to_keep = lookup(hourly_schedule.value, "snapshots_to_keep") # (Required) 
      minute            = lookup(hourly_schedule.value, "minute")            # (Required) 
    }
  }


  dynamic "daily_schedule" { # var.daily_schedule
    for_each = var.daily_schedule != null ? var.daily_schedule : []
    content {
      snapshots_to_keep = lookup(daily_schedule.value, "snapshots_to_keep") # (Required) 
      hour              = lookup(daily_schedule.value, "hour")              # (Required) 
      minute            = lookup(daily_schedule.value, "minute")            # (Required) 
    }
  }


  dynamic "weekly_schedule" { # var.weekly_schedule
    for_each = var.weekly_schedule != null ? var.weekly_schedule : []
    content {
      snapshots_to_keep = lookup(weekly_schedule.value, "snapshots_to_keep") # (Required) 
      days_of_week      = lookup(weekly_schedule.value, "days_of_week")      # (Required) 
      hour              = lookup(weekly_schedule.value, "hour")              # (Required) 
      minute            = lookup(weekly_schedule.value, "minute")            # (Required) 
    }
  }


  dynamic "monthly_schedule" { # var.monthly_schedule
    for_each = var.monthly_schedule != null ? var.monthly_schedule : []
    content {
      snapshots_to_keep = lookup(monthly_schedule.value, "snapshots_to_keep") # (Required) 
      days_of_month     = lookup(monthly_schedule.value, "days_of_month")     # (Required) 
      hour              = lookup(monthly_schedule.value, "hour")              # (Required) 
      minute            = lookup(monthly_schedule.value, "minute")            # (Required) 
    }
  }

  tags = var.tags
}
