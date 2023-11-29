data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_backup_policy_vm_workload" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  recovery_vault_name = var.recovery_vault_name

  dynamic "protection_policy" { # var.protection_policy
    for_each = var.protection_policy != null ? var.protection_policy : []
    content {
      policy_type = lookup(protection_policy.value, "policy_type") # (Required) possible values: Differential | Full | Incremental | Log

      dynamic "backup" { # protection_policy.value.backup
        for_each = protection_policy.value.backup != null ? protection_policy.value.backup : []
        content {
          frequency            = lookup(backup.value, "frequency", null)
          frequency_in_minutes = lookup(backup.value, "frequency_in_minutes", null)
          time                 = lookup(backup.value, "time", null)
          weekdays             = lookup(backup.value, "weekdays", null)
        }
      }


      dynamic "retention_daily" { # protection_policy.value.retention_daily
        for_each = protection_policy.value.retention_daily != null ? protection_policy.value.retention_daily : []
        content {
          count = lookup(retention_daily.value, "count") # (Required) possible values: 7 | 9999
        }
      }


      dynamic "retention_weekly" { # protection_policy.value.retention_weekly
        for_each = protection_policy.value.retention_weekly != null ? protection_policy.value.retention_weekly : []
        content {
          count    = lookup(retention_weekly.value, "count")    # (Required) possible values: 1 | 5163
          weekdays = lookup(retention_weekly.value, "weekdays") # (Required) possible values: Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
        }
      }


      dynamic "retention_monthly" { # protection_policy.value.retention_monthly
        for_each = protection_policy.value.retention_monthly != null ? protection_policy.value.retention_monthly : []
        content {
          count       = lookup(retention_monthly.value, "count")       # (Required) 
          format_type = lookup(retention_monthly.value, "format_type") # (Required) possible values: Daily | Weekly
          monthdays   = lookup(retention_monthly.value, "monthdays", null)
          weekdays    = lookup(retention_monthly.value, "weekdays", null)
          weeks       = lookup(retention_monthly.value, "weeks", null)
        }
      }


      dynamic "retention_yearly" { # protection_policy.value.retention_yearly
        for_each = protection_policy.value.retention_yearly != null ? protection_policy.value.retention_yearly : []
        content {
          count       = lookup(retention_yearly.value, "count")       # (Required) possible values: 1 | 99
          format_type = lookup(retention_yearly.value, "format_type") # (Required) possible values: Daily | Weekly
          months      = lookup(retention_yearly.value, "months")      # (Required) possible values: January | February | March | April | May | June | July | August | September | October | November | December
          monthdays   = lookup(retention_yearly.value, "monthdays", null)
          weekdays    = lookup(retention_yearly.value, "weekdays", null)
          weeks       = lookup(retention_yearly.value, "weeks", null)
        }
      }


      dynamic "simple_retention" { # protection_policy.value.simple_retention
        for_each = protection_policy.value.simple_retention != null ? protection_policy.value.simple_retention : []
        content {
          count = lookup(simple_retention.value, "count") # (Required) possible values: 7 | 35
        }
      }

    }
  }


  settings {
    time_zone           = lookup(settings.value, "time_zone") # (Required) 
    compression_enabled = lookup(settings.value, "compression_enabled", false)
  }

  workload_type = var.workload_type
}
