

resource "azurerm_lab_service_schedule" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  lab_id    = var.lab_id
  stop_time = var.stop_time
  time_zone = var.time_zone

  ########################################
  # optional vars
  ########################################
  notes = var.notes

  dynamic "recurrence" { # var.recurrence
    for_each = var.recurrence != null ? var.recurrence : []
    content {
      expiration_date = lookup(recurrence.value, "expiration_date") # (Required) 
      frequency       = lookup(recurrence.value, "frequency")       # (Required) possible values: Daily | Weekly
      interval        = lookup(recurrence.value, "interval", null)
      week_days       = lookup(recurrence.value, "week_days", null)
    }
  }

  start_time = var.start_time
}
