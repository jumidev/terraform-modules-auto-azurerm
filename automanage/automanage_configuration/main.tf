data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_automanage_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "antimalware" { # var.antimalware
    for_each = var.antimalware != null ? var.antimalware : []
    content {

      dynamic "exclusions" { # antimalware.value.exclusions
        for_each = antimalware.value.exclusions != null ? antimalware.value.exclusions : []
        content {
          extensions = lookup(exclusions.value, "extensions", null)
          paths      = lookup(exclusions.value, "paths", null)
          processes  = lookup(exclusions.value, "processes", null)
        }
      }

      real_time_protection_enabled   = lookup(antimalware.value, "real_time_protection_enabled", false)
      scheduled_scan_enabled         = lookup(antimalware.value, "scheduled_scan_enabled", false)
      scheduled_scan_type            = lookup(antimalware.value, "scheduled_scan_type", "Quick")
      scheduled_scan_day             = lookup(antimalware.value, "scheduled_scan_day", "8")
      scheduled_scan_time_in_minutes = lookup(antimalware.value, "scheduled_scan_time_in_minutes", null)
    }
  }


  dynamic "azure_security_baseline" { # var.azure_security_baseline
    for_each = var.azure_security_baseline != null ? var.azure_security_baseline : []
    content {
      assignment_type = lookup(azure_security_baseline.value, "assignment_type", "ApplyAndAutoCorrect")
    }
  }


  dynamic "backup" { # var.backup
    for_each = var.backup != null ? var.backup : []
    content {
      policy_name                        = lookup(backup.value, "policy_name", null)
      time_zone                          = lookup(backup.value, "time_zone", "UTC")
      instant_rp_retention_range_in_days = lookup(backup.value, "instant_rp_retention_range_in_days", 5)

      dynamic "schedule_policy" { # backup.value.schedule_policy
        for_each = backup.value.schedule_policy != null ? backup.value.schedule_policy : []
        content {
          schedule_run_frequency = lookup(schedule_policy.value, "schedule_run_frequency", "Daily")
          schedule_run_times     = lookup(schedule_policy.value, "schedule_run_times", null)
          schedule_run_days      = lookup(schedule_policy.value, "schedule_run_days", null)
          schedule_policy_type   = lookup(schedule_policy.value, "schedule_policy_type", "SimpleSchedulePolicy")
        }
      }


      dynamic "retention_policy" { # backup.value.retention_policy
        for_each = backup.value.retention_policy != null ? backup.value.retention_policy : []
        content {
          retention_policy_type = lookup(retention_policy.value, "retention_policy_type", "LongTermRetentionPolicy")

          dynamic "daily_schedule" { # retention_policy.value.daily_schedule
            for_each = retention_policy.value.daily_schedule != null ? retention_policy.value.daily_schedule : []
            content {
              retention_times = lookup(daily_schedule.value, "retention_times", null)

              dynamic "retention_duration" { # daily_schedule.value.retention_duration
                for_each = daily_schedule.value.retention_duration != null ? daily_schedule.value.retention_duration : []
                content {
                  count         = lookup(retention_duration.value, "count", null)
                  duration_type = lookup(retention_duration.value, "duration_type", "Days")
                }
              }

            }
          }


          dynamic "weekly_schedule" { # retention_policy.value.weekly_schedule
            for_each = retention_policy.value.weekly_schedule != null ? retention_policy.value.weekly_schedule : []
            content {
              retention_times = lookup(weekly_schedule.value, "retention_times", null)

              dynamic "retention_duration" { # weekly_schedule.value.retention_duration
                for_each = weekly_schedule.value.retention_duration != null ? weekly_schedule.value.retention_duration : []
                content {
                  count         = lookup(retention_duration.value, "count", null)
                  duration_type = lookup(retention_duration.value, "duration_type", "Days")
                }
              }

            }
          }

        }
      }

    }
  }

  automation_account_enabled  = var.automation_account_enabled  # Default: False
  boot_diagnostics_enabled    = var.boot_diagnostics_enabled    # Default: False
  defender_for_cloud_enabled  = var.defender_for_cloud_enabled  # Default: False
  guest_configuration_enabled = var.guest_configuration_enabled # Default: False
  log_analytics_enabled       = var.log_analytics_enabled       # Default: False
  status_change_alert_enabled = var.status_change_alert_enabled # Default: False
  tags                        = var.tags
}
