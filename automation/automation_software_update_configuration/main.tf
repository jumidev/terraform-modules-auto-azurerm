

resource "azurerm_automation_software_update_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  automation_account_id = var.automation_account_id

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {
      frequency           = lookup(schedule.value, "frequency") # (Required) 
      is_enabled          = lookup(schedule.value, "is_enabled", true)
      description         = lookup(schedule.value, "description", null)
      interval            = lookup(schedule.value, "interval", null)
      start_time          = lookup(schedule.value, "start_time", null)
      expiry_time         = lookup(schedule.value, "expiry_time", null)
      time_zone           = lookup(schedule.value, "time_zone", "Etc/UTC")
      advanced_week_days  = lookup(schedule.value, "advanced_week_days", null)
      advanced_month_days = lookup(schedule.value, "advanced_month_days", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  duration = var.duration # Default: PT2H

  dynamic "linux" { # var.linux
    for_each = var.linux != null ? var.linux : []
    content {
      classifications_included = lookup(linux.value, "classifications_included", null)
      excluded_packages        = lookup(linux.value, "excluded_packages", null)
      included_packages        = lookup(linux.value, "included_packages", null)
      reboot                   = lookup(linux.value, "reboot", "IfRequired")
    }
  }


  dynamic "windows" { # var.windows
    for_each = var.windows != null ? var.windows : []
    content {
      classifications_included        = lookup(windows.value, "classifications_included", null)
      excluded_knowledge_base_numbers = lookup(windows.value, "excluded_knowledge_base_numbers", null)
      included_knowledge_base_numbers = lookup(windows.value, "included_knowledge_base_numbers", null)
      reboot                          = lookup(windows.value, "reboot", "IfRequired")
    }
  }

  virtual_machine_ids      = var.virtual_machine_ids
  non_azure_computer_names = var.non_azure_computer_names

  dynamic "target" { # var.target
    for_each = var.target != null ? var.target : []
    content {
      azure_query     = lookup(target.value, "azure_query", null)
      non_azure_query = lookup(target.value, "non_azure_query", null)
    }
  }


  dynamic "post_task" { # var.post_task
    for_each = var.post_task != null ? var.post_task : []
    content {
      parameters = lookup(post_task.value, "parameters", null)
      source     = lookup(post_task.value, "source", null)
    }
  }


  dynamic "pre_task" { # var.pre_task
    for_each = var.pre_task != null ? var.pre_task : []
    content {
      parameters = lookup(pre_task.value, "parameters", null)
      source     = lookup(pre_task.value, "source", null)
    }
  }

}
