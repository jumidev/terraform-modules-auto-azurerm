

resource "azurerm_logic_app_trigger_recurrence" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  logic_app_id = var.logic_app_id
  frequency    = var.frequency
  interval     = var.interval

  ########################################
  # optional vars
  ########################################
  start_time = var.start_time
  time_zone  = var.time_zone

  dynamic "schedule" { # var.schedule
    for_each = var.schedule != null ? var.schedule : []
    content {
      at_these_minutes = lookup(schedule.value, "at_these_minutes", null)
      at_these_hours   = lookup(schedule.value, "at_these_hours", null)
      on_these_days    = lookup(schedule.value, "on_these_days", null)
    }
  }

}
